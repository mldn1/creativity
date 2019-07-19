package com.yootk.admin.dao;


import com.yootk.dubbo.vo.Goods;

import java.util.List;
import java.util.Map;

public interface IGoodsDAO {
    /**
     *实现商品的分页查询
     * @param map
     * 保存商品分页查询数据：
     * 1.key = column，value = 要查询的关键字段
     * 2.key = keyword，value = 要查询的关键字
     * 3.key = start，value = 分页开始数据行数
     * 4，key = linesize，value = 每页显示数据量
     * @return 返回商品的集合
     */
    public List<Goods> findSplit(Map<String, Object> map);

    /**
     * 实现取得商品全部数据的个数
     * @param map
     * 1.key = column，value = 要查询的关键字段
     * 2.key = keyword，value = 要查询的关键字
     * @return 商品个数
     */
    public Long getAllCount(Map<String, Object> map);

}
