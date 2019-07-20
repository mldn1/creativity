package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.ICategoryService;
import com.yootk.dubbo.vo.mall.Category;
import com.yootk.dubbo.vo.mall.Good;
import com.yootk.mall.dao.ICategoryDAO;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Service
public class CategoryServiceImpl implements ICategoryService {

    @Autowired
    private ICategoryDAO categoryDAO;

    @Override
    public List<Category> findAllCategory() {
        return categoryDAO.findAll();
    }

}
