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
}
