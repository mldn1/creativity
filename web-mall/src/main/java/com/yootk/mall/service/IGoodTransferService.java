package com.yootk.mall.service;

import com.yootk.dubbo.vo.mall.Good;

import java.util.List;

public interface IGoodTransferService {
    /**
     * 查询展示商品信息
     * @return
     */
    List<Good> findShowGoods();

    /**
     * 根据id查询商品详情
     * @param gid 要查询的商品id
     * @return
     */
    Good findGoodsById(String gid);

    /**
     * 根据分类id查询该分类下的商品信息
     * @param cid 要查询的分类id
     * @return 查询结果保存在List集合中返回
     */
    List<Good> findCateGood(Long cid);

    /**
     * 模糊查询商品信息
     * @param keyWord 要查询的关键字
     * @return 查询结果保存在List集合中返回
     */
    List<Good> findSplitGood(String keyWord);
}
