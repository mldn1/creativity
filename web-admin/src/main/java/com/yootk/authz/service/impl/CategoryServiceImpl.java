package com.yootk.authz.service.impl;


import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.ICategoryService;
import com.yootk.dubbo.vo.Category;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;

@Service
public class CategoryServiceImpl implements ICategoryService {
    @Reference
    private ICategoryService categoryService;

    @Override
    public List<Category> listByGrade(Integer grade) {
        return this.categoryService.listByGrade(grade);
    }

    @Override
    public Map<Category, List<Category>> listAccordingToParent() {
        return this.categoryService.listAccordingToParent();
    }

    @Override
    public Long preAdd() {
        return this.categoryService.preAdd();
    }

    @Override
    public Boolean add(Category category,Long pcid){
        return this.categoryService.add(category,pcid) ;
    }

    @Override
    public Category getCategory(Long cid) {
        return this.categoryService.getCategory(cid);
    }

    @Override
    public Category getParent(Long scid) {
        return this.categoryService.getCategory(scid);
    }

    @Override
    public Boolean edit(Category category, Long pcid) {
        return this.categoryService.edit(category,pcid);
    }

    @Override
    public Boolean delete(Long cid) {
        return this.categoryService.delete(cid);
    }
}
