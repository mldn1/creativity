package com.yootk.admin.dao;

import com.yootk.dubbo.vo.Category;

import java.util.List;

public interface ICategoryDAO {
    public List<Category> findByGrade(Integer grade) ;//获取某一级的所有分类
}
