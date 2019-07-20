package com.yootk.authz.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonAction {
    @RequestMapping("/login")
    public String login() {
        return "index" ;
    }
    @RequestMapping("/pages/index")
    public String welcome() {
        return "index" ;
    }
    @RequestMapping("/logoutInfo")
    public String logoutInfo() {
        return "logout_info" ;
    }
    @RequestMapping("/pages/failure")
    public String failure() {
        return "failure" ;
    }
}
