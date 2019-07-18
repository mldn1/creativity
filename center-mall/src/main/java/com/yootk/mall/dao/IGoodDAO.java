package com.yootk.mall.dao;

import com.yootk.dubbo.vo.mall.Good;

import java.util.List;

public interface IGoodDAO {
    /**
     * 查询首页展示的数据
     * @return 查询结果以List<Good>集合返回
     */
    public List<Good> findShow();
    public Good findById(String gid);
}
