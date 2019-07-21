package com.yootk.mall.dao;

import com.yootk.dubbo.vo.mall.OrderGood;

import java.util.List;
import java.util.Map;

public interface IOrderGoodDAO {
    public boolean doCreate(OrderGood orderGood);
    public List<OrderGood> findByOid(String oid);
}