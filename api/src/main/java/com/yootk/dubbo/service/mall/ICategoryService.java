package com.yootk.dubbo.service.mall;

import com.yootk.dubbo.vo.mall.Category;
import com.yootk.dubbo.vo.mall.Good;

import java.util.List;

/**
 * 商品分类Service
 */
public interface ICategoryService {
    /**
     * 查询所有分类数据
     * @return 查询结果保存在List集合中返回
     */
    List<Category> findAllCategory();

}
