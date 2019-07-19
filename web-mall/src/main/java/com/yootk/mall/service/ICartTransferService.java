package com.yootk.mall.service;

import java.util.List;
import java.util.Map;

public interface ICartTransferService {
    public List<Object> handleCartList() ; //返回所有的购物车商品信息
    public boolean handleGoodsNumAdjust(String goodsId,String num) ; //调整商品数量
    public boolean handleGoodsRemove(String goodsId) ; //删除购物车商品
}
