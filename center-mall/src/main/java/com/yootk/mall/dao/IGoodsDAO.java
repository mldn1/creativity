package com.yootk.mall.dao;

import com.yootk.dubbo.vo.mall.Goods;

import java.util.List;

public interface IGoodsDAO {
    /**
     * 查询首页展示的数据
     * @return 查询结果以List<Goods>集合返回
     */
    List<Goods> findShow();
}
