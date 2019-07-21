package com.yootk.admin.service.impl;


import com.alibaba.dubbo.config.annotation.Reference;

import com.yootk.dubbo.service.ICategorysService;

import com.yootk.dubbo.vo.Categorys;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;

@Service
public class CategorysServiceImpl implements ICategorysService {
    @Reference
    private ICategorysService categoryService;

    @Override
    public List<Categorys> listByGrade(Integer grade) {
        return this.categoryService.listByGrade(grade);
    }

    @Override
    public Map<Categorys, List<Categorys>> listAccordingToParent() {
        return this.categoryService.listAccordingToParent();
    }

    @Override
    public Long preAdd() {
        return this.categoryService.preAdd();
    }

    @Override
    public Boolean add(Categorys category,Long pcid){
        return this.categoryService.add(category,pcid) ;
    }

    @Override
    public Categorys getCategory(Long cid) {
        return this.categoryService.getCategory(cid);
    }

    @Override
    public Categorys getParent(Long scid) {
        return this.categoryService.getCategory(scid);
    }

    @Override
    public Boolean edit(Categorys category, Long pcid) {
        return this.categoryService.edit(category,pcid);
    }

    @Override
    public Boolean delete(Long cid) {
        return this.categoryService.delete(cid);
    }
}
