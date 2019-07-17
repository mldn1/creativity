package com.yootk.mall.service;

import com.yootk.dubbo.vo.mall.Goods;

import java.util.List;

public interface IGoodsTransferService {
    List<Goods> findShowGoods();
}
