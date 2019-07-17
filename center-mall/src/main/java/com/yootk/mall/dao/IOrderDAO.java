package com.yootk.mall.dao;

import com.yootk.dubbo.vo.mall.Orders;

import java.util.List;
import java.util.Map;

public interface IOrderDAO {

    public Orders findById(String id);

    public Orders findByOid(String oid);

    public List<Orders> findAllCondition(Map<String,Object> map);
}