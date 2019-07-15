package com.yootk.admin.action.front.product.catogery;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.admin.service.ICatogeryService;
import com.yootk.admin.vo.Catogery;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller // 创建一个控制器
@RequestMapping("/pages/front/product/*")
public class CatogeryAction {
    @Reference
    ICatogeryService catogeryService ;

    @RequestMapping("class_list")
    public ModelAndView chatList() {
        ModelAndView mav = new ModelAndView("front/product/class_list") ;
        List<Catogery> firstCatogery = catogeryService.oneGradeCatogery(1) ;
//        mav.addObject(firstCatogery) ;
        return mav ;
    }
}
