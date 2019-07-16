package com.yootk.admin.service.impl;


import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.ICategoryService;
import com.yootk.dubbo.vo.Category;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class CategoryServiceImpl implements ICategoryService {
    @Reference
    private ICategoryService categoryService;

    @Override
    public List<Category> listByGrade(Integer grade) {
        return this.categoryService.listByGrade(grade);
    }
}
