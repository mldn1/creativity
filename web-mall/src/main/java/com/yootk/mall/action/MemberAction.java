package com.yootk.mall.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pages/front/login/*")
public class MemberAction {
    @RequestMapping("welcome")
    public String login(){
        return "front/main/index";
    }
}
