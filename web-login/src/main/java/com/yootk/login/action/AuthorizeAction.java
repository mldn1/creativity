package com.yootk.login.action;

import com.yootk.dubbo.vo.Client;
import com.yootk.login.service.IOAuthService;
import com.yootk.login.util.cache.RedisCache;
import org.apache.oltu.oauth2.as.issuer.MD5Generator;
import org.apache.oltu.oauth2.as.issuer.OAuthIssuerImpl;
import org.apache.oltu.oauth2.as.request.OAuthAuthzRequest;
import org.apache.oltu.oauth2.as.response.OAuthASResponse;
import org.apache.oltu.oauth2.common.OAuth;
import org.apache.oltu.oauth2.common.error.OAuthError;
import org.apache.oltu.oauth2.common.message.OAuthResponse;
import org.apache.oltu.oauth2.common.message.types.ResponseType;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URI;

@Controller
@PropertySource("classpath:config/oauth.properties")
public class AuthorizeAction {
    private static final String AUTHCODE_CACHE_NAME = "authcodeCache";
    @Value("${oauth.authcode.expire}")
    private long expire;
    @Autowired
    private IOAuthService oauthService;
    private RedisCache<Object,Object> authcodeRedisCache;
    @Autowired
    public void setCacheManager(CacheManager cacheManager){
        this.authcodeRedisCache = (RedisCache<Object, Object>) cacheManager.getCache(this.AUTHCODE_CACHE_NAME);
    }
    @ResponseBody
    @RequestMapping(value = "/oauth2/authorize", method = RequestMethod.GET)
    public Object authcode(HttpServletRequest request) {
        try { //OAuth本身属于一个标准，所有对于标准的操作，就必须采用其规定的处理流程来完成
            //1、如果向要进行OAuth处理则必须将请求转换成OAuth请求
            OAuthAuthzRequest oauthRequest = new OAuthAuthzRequest(request);
            //2、对于AuthCode的生产一定要接收clientId的数据信息
            String clientId = oauthRequest.getClientId();
            //3、那么此时就需要判断给定的clientId的内容是否合法，这个合法就可以依靠RPC来进行检测
            Client client = this.oauthService.get(clientId);  //分布式调用
            if (client == null) {
                //如果此时client不正确（Client无法查询对象）
                OAuthResponse oauthResponse = OAuthResponse.errorResponse(HttpServletResponse.SC_BAD_REQUEST)
                        .setError(OAuthError.TokenResponse.INVALID_CLIENT)
                        .setErrorDescription("无效的Client_ID，请确认传输正确!")
                        .buildJSONMessage();  //将数据以JSON的形式返回
                return new ResponseEntity<String>(oauthResponse.getBody(), HttpStatus.valueOf(oauthResponse.getResponseStatus()));
            }
            Subject subject = SecurityUtils.getSubject();  //获取当前用户操作的Subject
            if (!subject.isAuthenticated()) { // 当前用户没有进行认证
                WebUtils.saveRequest(request);   //保留当前的request对象
                HttpHeaders headers = new HttpHeaders();
                headers.setLocation(new URI(request.getContextPath() + "/login.action"));
                return new ResponseEntity<String>(headers, HttpStatus.TEMPORARY_REDIRECT);
            }
            String authcode = null;  //这个client_id合法就需要生成authcode
            //获取当前操作的响应类型，这和类型是定义OAuth连接是规定好的参数
            String responseType = oauthRequest.getParam(OAuth.OAUTH_RESPONSE_TYPE);
            //4、如果此时相应的类型为code，那么就表示可以生产authcode
            if (ResponseType.CODE.toString().equalsIgnoreCase(responseType)) {
                //5、定义一个用于分配验证码的处理程序类，这个类需要设置一个加密器
                OAuthIssuerImpl authIssuer = new OAuthIssuerImpl(new MD5Generator());
                authcode = authIssuer.authorizationCode();  //生成authcode
                this.authcodeRedisCache.putEx(authcode,subject.getPrincipal(),this.expire);
            }
            //如果此时的clientID正确了，同时也可以生产authcode，那么就需要把这个authcode的内容返回给客户端
            //6、构建一个OAuth回应的访问路径
            OAuthASResponse.OAuthAuthorizationResponseBuilder builder = OAuthASResponse.authorizationResponse(request, HttpServletResponse.SC_FOUND);
            builder.setCode(authcode);   //将生成的authcide的内容发送给客户端
            String redirectUri = oauthRequest.getRedirectURI();  //获取回应的跳转地址
            //根据此路径要构建一个返回路径信息，而这个返回的路径信息里面一定要包含code数据
            OAuthResponse oauthResponse = builder.location(redirectUri).buildQueryMessage() ; //QueryMessage:Request五个参数之一
            HttpHeaders headers = new HttpHeaders();  //设置回应头信息
            headers.setLocation(new URI(oauthResponse.getLocationUri()));   //设置跳转头信息
            return new ResponseEntity<String>(headers,HttpStatus.valueOf(oauthResponse.getResponseStatus()));   //响应成功
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String>("服务器内部错误，请稍后重试！", HttpStatus.valueOf(HttpServletResponse.SC_INTERNAL_SERVER_ERROR));
        }
    }
}
