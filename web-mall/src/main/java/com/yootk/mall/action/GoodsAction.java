package com.yootk.mall.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/pages/front/")
public class GoodsAction {

    @GetMapping("goods/shop_details")
    public ModelAndView goodsAction() {
        ModelAndView mav = new ModelAndView("front/goods/shop_details");
        return mav;
    }
}
