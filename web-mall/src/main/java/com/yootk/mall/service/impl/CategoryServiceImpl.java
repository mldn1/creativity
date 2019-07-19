package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.mall.ICategoryService;
import com.yootk.dubbo.vo.mall.Category;
import com.yootk.mall.service.ICategoryTransferService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements ICategoryTransferService {
    @Reference
    private ICategoryService categoryService;

    @Override
    public List<Category> findAllCategory() {
        return categoryService.findAllCategory();
    }
}
