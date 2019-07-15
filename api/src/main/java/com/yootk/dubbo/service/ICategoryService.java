package com.yootk.dubbo.service;

import com.yootk.dubbo.vo.Category;

import java.util.List;

public interface ICategoryService {
    public List<Category> getOneGradeCatogery(Integer grade) ; //查询所有一级分类
}
