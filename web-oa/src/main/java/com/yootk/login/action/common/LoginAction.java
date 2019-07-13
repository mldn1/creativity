package com.yootk.login.action.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginAction {
    @RequestMapping("/index")
    public String login() {
        return "index" ;
    }
}
