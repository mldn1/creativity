package com.yootk.admin.action.front.product.category;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.ICategoryService;
import com.yootk.dubbo.vo.Category;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller // 创建一个控制器
@RequestMapping("/pages/front/product/*")
public class CategoryAction {
    @Reference
    ICategoryService categoryService ;
    @RequestMapping("class_list")
    public ModelAndView categoryList() {
        ModelAndView mav = new ModelAndView("front/product/class_list") ;
        return mav ;
    }
}
