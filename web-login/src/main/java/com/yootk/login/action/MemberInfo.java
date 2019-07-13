package com.yootk.login.action;

import com.yootk.login.service.IOAuthService;
import com.yootk.login.util.cache.RedisCache;
import org.apache.oltu.oauth2.common.error.OAuthError;
import org.apache.oltu.oauth2.common.message.OAuthResponse;
import org.apache.oltu.oauth2.common.message.types.ParameterStyle;
import org.apache.oltu.oauth2.rs.request.OAuthAccessResourceRequest;
import org.apache.oltu.oauth2.rs.response.OAuthRSResponse;
import org.apache.shiro.cache.CacheManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@PropertySource("classpath:config/oauth.properties")
public class MemberInfo {
    private static final String TOKEN_CACHE_NAME = "tokenCache";
    @Autowired
    private IOAuthService oauthService;
    private RedisCache<Object,Object> tokenRedisCache;
    @Autowired
    public void setCacheManager(CacheManager cacheManager){
        this.tokenRedisCache = (RedisCache<Object, Object>) cacheManager.getCache(this.TOKEN_CACHE_NAME);
    }
    @ResponseBody
    @RequestMapping(value = "/oauth2/memberInfo")
    public Object accessToken(HttpServletRequest request) {
        try {
            //1、跟据token获取信息内容，这个信息对于OAuth来讲属于资源（Resource）
            OAuthAccessResourceRequest resourceRequest = new OAuthAccessResourceRequest(request, ParameterStyle.QUERY);
            //2、如果想要获取用户的信息那么就必须依据AccessToken来完成
            String accessToken = resourceRequest.getAccessToken();
            //3、在Redis里面储存的是一个object对象
            Object mid = null;
            try {
                //4、通过Redis数据库根据指定的AccessToken获取用户信息
                mid = this.tokenRedisCache.get(accessToken);
            }catch (Exception e){}
            if (mid == null){  //此时的Token内容无效或者已经失效、
                OAuthResponse oauthResponse = OAuthRSResponse.errorResponse(HttpServletResponse.SC_BAD_REQUEST)
                        .setError(OAuthError.ResourceResponse.INVALID_TOKEN)
                        .setErrorDescription("无效的Token，请确认Token的合法性！")
                        .buildJSONMessage();//以JSON的形式返回
                return new ResponseEntity<String >(oauthResponse.getBody(),HttpStatus.valueOf(oauthResponse.getResponseStatus()));
            }
            return new ResponseEntity<String>(mid.toString(), HttpStatus.OK);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseEntity<String>("服务器内部错误，请稍后重试！", HttpStatus.valueOf(HttpServletResponse.SC_INTERNAL_SERVER_ERROR));
        }
    }
}
