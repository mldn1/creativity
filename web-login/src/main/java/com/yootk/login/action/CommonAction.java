package com.yootk.login.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonAction {
    @RequestMapping("/login")
    public String login() {
        return "login" ;
    }
    @RequestMapping("/pages/welcome")
    public String welcome() {
        return "welcome" ;
    }
    @RequestMapping("logoutInfo")
    public String logoutInfo() {
        return "logout_info" ;
    }
}
