package com.yootk.mall.action;

import com.yootk.mall.service.ICategoryTransferService;
import com.yootk.mall.service.IGoodTransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexAcion {
    @Autowired
    private IGoodTransferService goodTransferService;

    @Autowired
    private ICategoryTransferService categoryTransferService;

    // 跳转到首页
    @GetMapping("index")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("front/main/index");
        mav.addObject("showGoods", this.goodTransferService.findShowGoods());
        mav.addObject("allCategory", this.categoryTransferService.findAllCategory());
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
    public ModelAndView activePage(Long cid) {
        ModelAndView mav = new ModelAndView("front/main/active_page");
        mav.addObject("allCategory", this.categoryTransferService.findAllCategory());
        mav.addObject("allCategoryGoods", this.goodTransferService.findCateGood(cid));
        return mav;
    }

}
