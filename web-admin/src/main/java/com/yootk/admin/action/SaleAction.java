package com.yootk.admin.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller // 创建一个控制器
@RequestMapping("/pages/front/sale/*")
public class SaleAction {
    @GetMapping("chat_list")
    public ModelAndView chatList() {
        ModelAndView mav = new ModelAndView("front/sale/chat_list") ;
        return mav ;
   }
}
