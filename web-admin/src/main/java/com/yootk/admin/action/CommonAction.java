package com.yootk.admin.action;

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
        return "index" ;
    }
    @RequestMapping("/logoutInfo.action")
    public String logoutInfo() {
        return "logout_info" ;
    }
    @RequestMapping("/pages/failure")
    public String failure() {
        return "failure" ;
    }
}
