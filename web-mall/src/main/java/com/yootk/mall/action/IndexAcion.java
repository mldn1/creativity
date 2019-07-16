package com.yootk.mall.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexAcion {
    @GetMapping("index")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("front/main/index");
        return mav;
    }
}
