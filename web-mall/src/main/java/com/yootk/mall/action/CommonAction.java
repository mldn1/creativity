package com.yootk.mall.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonAction {
    @RequestMapping("login")
    public String  login(){
        return "front/login/login-2" ;
    }
    @RequestMapping("login_pswd")
    public String  login_pswd(String username,String password){
        System.err.println("用户名："+username+"、密码："+password);
        return "front/login/login-3" ;
    }
    @RequestMapping("/pages/welcome")
    public String welcome() {
        return "front/main/index";
    }
    @RequestMapping("logoutInfo")
    public String logoutInfo() {
        return "logout_info" ;
    }
}
