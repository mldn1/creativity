package com.yootk.mall.service;

import com.yootk.dubbo.vo.mall.Goods;

import java.util.List;

public interface IGoodsTransferService {
    /**
     * 查询展示商品信息
     * @return
     */
    List<Goods> findShowGoods();

    /**
     * 根据id查询商品详情
     * @param gid 要查询的商品id
     * @return
     */
    Goods findGoodsById(String gid);
}
