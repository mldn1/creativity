package com.yootk.mall.dao;

import com.yootk.dubbo.vo.mall.Category;

import java.util.List;

/**
 * category分类表
 */
public interface ICategoryDAO {
    /**
     * 查询所有数据
     * @return 查询结果保存在List集合中返回
     */
    List<Category> findAll();


}
