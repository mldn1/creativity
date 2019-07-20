package com.yootk.mall.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchAction {

    @GetMapping("search_end")
    public ModelAndView searchEnd() {
        ModelAndView mav = new ModelAndView("front/search/search_end");
        return mav;
    }

}
