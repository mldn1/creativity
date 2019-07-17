package com.yootk.mall.service.impl;

import com.yootk.dubbo.service.mall.ICartService;
import com.yootk.dubbo.vo.mall.Cart;

import java.util.Map;

public class CartServiceImpl implements ICartService {
    @Override
    public boolean add(Cart cart) throws Exception {
        return false;
    }

    @Override
    public boolean get(String id) throws Exception {
        return false;
    }

    @Override
    public boolean edit(Cart cart) throws Exception {
        return false;
    }

    @Override
    public boolean removeById(String... ids) throws Exception {
        return false;
    }

    @Override
    public Map<String, Object> List(Map<String, Object> map) throws Exception {
        return null;
    }
}
