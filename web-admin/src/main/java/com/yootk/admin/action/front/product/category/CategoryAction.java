package com.yootk.admin.action.front.product.category;

import com.yootk.dubbo.service.ICategorysService;
import com.yootk.dubbo.vo.Categorys;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller // 创建一个控制器
@RequestMapping("/pages/front/product/*")
public class CategoryAction {
    @Autowired
    ICategorysService categoryService ;
    @RequestMapping("class_list")
    public ModelAndView listCategory() {
        ModelAndView mav = new ModelAndView("front/product/class_list") ;
        mav.addObject("allCategoryAccordingToParent",this.categoryService.listAccordingToParent()) ;
        return mav ;
    }
    @RequestMapping("class_add_pre")
    public ModelAndView preAddCategory(){
        ModelAndView mav = new ModelAndView("front/product/class_add") ;
        mav.addObject("categorys",this.categoryService.listByGrade(1)) ;
        mav.addObject("id",this.categoryService.preAdd()) ;
        return mav ;
    }
    @RequestMapping("class_add_do")
    public ModelAndView addCategory(Categorys category){
        category.setCid(null);
        Integer grade = category.getGrade() ;
        Long pcid = 0L ;
        if (grade == 0){
            category.setGrade(1);
        }else{
            category.setGrade(2);
            pcid = (long)grade;
        }
        if (this.categoryService.add(category,pcid)){
            return this.listCategory() ;
        }else{
            return this.preAddCategory() ;
        }
    }

    @RequestMapping("class_edit_pre")
    public ModelAndView preEdit(Long cid){
        ModelAndView mav = new ModelAndView("front/product/class_edit") ;
        mav.addObject("categorys",this.categoryService.listByGrade(1)) ;
        mav.addObject("thisCategory",this.categoryService.getCategory(cid)) ;
        Long pcid = 0L ;
        Categorys parent = this.categoryService.getParent(cid) ;
        if ( parent != null){
            pcid = parent.getCid() ;
        }
        mav.addObject("pcid",pcid) ;
        return mav ;
    }

    @RequestMapping("class_edit_do")
    public ModelAndView edit(Categorys category){
        ModelAndView mav = new ModelAndView() ;
        Long pcid = 0L ;
        Integer grade = category.getGrade() ;
        if (grade == 0){
            category.setGrade(1);
        }else{
            category.setGrade(2);
            pcid = (long)grade;
        }
        if (this.categoryService.edit(category,pcid)){
            return this.listCategory();
        }else{
            return this.preEdit(category.getCid()) ;
        }
    }

    @RequestMapping("class_delete_do")
    public  ModelAndView delete(Long cid){
        if (this.categoryService.delete(cid)){
            return this.listCategory() ;
        }else{
            return this.preEdit(cid) ;
        }
    }
}
