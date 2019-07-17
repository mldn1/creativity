package com.yootk.mall.action;

import com.yootk.dubbo.service.mall.IGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexAcion {
    @Autowired
    private IGoodsService goodsService;

    // 跳转到首页
    @GetMapping("index")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("front/main/index");
        System.out.println(this.goodsService);
        mav.addObject("showGoods", this.goodsService.findShowGoods());
        return mav;
    }


    // 跳转到搜索页
    @GetMapping("search")
    public ModelAndView search() {
        ModelAndView mav = new ModelAndView("front/search/search");
        return mav;
    }

    // 跳转到购物车
    @GetMapping("shopping_cart")
    public ModelAndView shoppingCart() {
        ModelAndView mav = new ModelAndView("front/cart/shopping_cart");
        return mav;
    }

    // 跳转到个人中心
    @GetMapping("mine")
    public ModelAndView mine() {
        ModelAndView mav = new ModelAndView("front/my/mine");
        return mav;
    }

    // 跳转到xxX馆
    @GetMapping("active_page")
    public ModelAndView activePage() {
        ModelAndView mav = new ModelAndView("front/main/active_page");
        return mav;
    }
}
