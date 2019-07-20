package com.yootk.authz.filter.authc;

import com.yootk.authz.filter.authc.exception.RandomCodeException;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class RandomCodeFormAuthenticationFilter extends FormAuthenticationFilter {
    private String randParamName="rand";   //保存生产的session验证码的数据
    private String codeParamName="code";    //保存表单的参数名称

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        HttpSession session = ((HttpServletRequest) request).getSession();  //获取Session对象
        String rand = (String) session.getAttribute(this.randParamName);
        String code = request.getParameter(this.codeParamName);
        try {
            if (!(rand == null || "".equals(rand))){
                if (code == null || "".equals(code)){
                    throw new RandomCodeException("验证码不允许为空~");
                }else {
                    if (!(rand.equalsIgnoreCase(code))) {  //验证码不正确
                        throw new RandomCodeException("验证码错误~");
                    }
                }
            }
        }catch (Exception e){
            request.setAttribute(super.getFailureKeyAttribute(),e.getClass().getName());
            e.printStackTrace();
            return true;  //表示拒绝该用户的认证处理请求
        }
        return super.onAccessDenied(request, response);
    }

    public void setRandParamName(String randParamName) {
        this.randParamName = randParamName;
    }

    public void setCodeParamName(String codeParamName) {
        this.codeParamName = codeParamName;
    }
}
