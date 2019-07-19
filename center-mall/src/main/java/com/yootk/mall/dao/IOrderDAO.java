package com.yootk.mall.dao;

import com.yootk.dubbo.vo.mall.Order;

import java.util.List;
import java.util.Map;

public interface IOrderDAO {

    public Order findById(String id);

    public Order findByOid(String oid);

    public List<Order> findAllCondition(Map<String,Object> map);
}