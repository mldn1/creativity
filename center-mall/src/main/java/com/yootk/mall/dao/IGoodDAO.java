package com.yootk.mall.dao;

import com.yootk.dubbo.vo.mall.Good;

import java.util.List;

public interface IGoodDAO {
    /**
     * 查询首页展示的数据
     * @return 查询结果以List<Goods>集合返回
     */
    List<Good> findShow();

    /**
     * 根据id查询单条数据
     * @return
     */
    Good findById(String gid);
}
