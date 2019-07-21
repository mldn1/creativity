package com.yootk.admin.action.front.product.goods;


import com.yootk.dubbo.service.ICategorysService;
import com.yootk.dubbo.service.IGoodsService;
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
    private ICategorysService categoryService;
    @Autowired
    private IGoodsService goodsService ;
    @RequestMapping("product_list")
    public ModelAndView categoryList(Long currentPage, Integer lineSize, String keyWord , Integer state, Long category) {
        ModelAndView mav = new ModelAndView("front/product/product_list") ;
        mav.addObject("allCategory",this.categoryService.listByGrade(1));
        mav.addObject("allGoods_state",this.goods_stateService.list());
        mav.addObject("allRecorders",this.goodsService.allCount("",keyWord)) ;
        return mav ;
    }
}
