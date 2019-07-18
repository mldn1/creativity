package com.yootk.mall.service;

import com.yootk.dubbo.vo.mall.Good;

import java.util.List;

public interface IGoodsTransferService {
    List<Good> findShowGoods();
}
