package com.yootk.authz.action.front.product.goods;

import com.yootk.dubbo.service.ICategoryService;
import com.yootk.dubbo.service.IGoods_stateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller // 创建一个控制器
@RequestMapping("/pages/front/product/*")
public class GoodsAction {
    @Autowired
    private IGoods_stateService goods_stateService;
    @Autowired
    private ICategoryService categoryService;
    @RequestMapping("product_list")
    public ModelAndView categoryList() {
        ModelAndView mav = new ModelAndView("front/product/product_list") ;
        mav.addObject("allCategory",this.categoryService.listByGrade(1));
        mav.addObject("allGoods_state",this.goods_stateService.list());
        return mav ;
    }
}
