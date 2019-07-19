package com.yootk.mall.service;

import com.yootk.dubbo.vo.mall.Category;

import java.util.List;

public interface ICategoryTransferService {
    /**
     * 查询所有分类数据
     * @return 查询结果保存到List集合中返回
     */
    List<Category> findAllCategory();
}
