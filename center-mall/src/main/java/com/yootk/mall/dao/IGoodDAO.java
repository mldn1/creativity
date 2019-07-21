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

    /**
     * 根据category_goods表的cid查询goods表数据
     * @param cid 要查询的cid
     * @return 查询结果保存在List集合中返回
     */
    List<Good> findCategoryGood(Long cid);

    /**
     * 模糊查询
     * 查询goods表中的title、shortname、description、details字段
     * @param keyWord 模糊查询关键字
     * @return 查询结果保存在List集合中返回
     */
    List<Good> findSplits(String keyWord);

}
