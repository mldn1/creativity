package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.IOrderService;
import com.yootk.mall.dao.IOrderDAO;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.Map;

@Service
public class OrderServiceImpl implements IOrderService {
    @Autowired
    private IOrderDAO orderDAO;

    @Override
    public Map<String, Object> List(Map<String, Object> map) throws Exception {

        map.put("order",this.orderDAO.findAllCondition(map)) ;
        return map;
    }
}
