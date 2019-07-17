package com.yootk.dubbo.service.mall;

import com.yootk.dubbo.vo.mall.Cart;

import java.util.Map;
import java.util.Set;

public interface ICartService {

    public boolean add(Cart cart) throws  Exception ;
    public boolean get(String id) throws Exception ;
    public boolean edit(Cart cart) throws Exception ;
    public boolean removeById(String ... ids) throws Exception ;
    public Map<String,Object> List(Map<String,Object> map) throws Exception ;
}
