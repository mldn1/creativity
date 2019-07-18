package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.IOrderService;
import com.yootk.mall.dao.IOrderDAO;
import com.yootk.server.util.RedisLock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

@Service
public class OrderServiceImpl implements IOrderService {
    @Autowired
    private IOrderDAO orderDAO;
    @Autowired
    private RedisTemplate<String, String> stringRedisTemplate;
    @Autowired
    private RedisLock redisLock;
    @Override
    public Map<String, Object> List(Map<String, Object> map) throws Exception {


        String SERVICE_KEY = "money-service" ;

        // 通过当前的线程名称来模拟用户名
        if (this.redisLock.lock(SERVICE_KEY,Thread.currentThread().getName(),10L, TimeUnit.SECONDS)) {
            System.err.println( this.stringRedisTemplate.opsForValue().get(SERVICE_KEY));
        }
        this.redisLock.unlock(SERVICE_KEY,Thread.currentThread().getName());

        map.put("order",this.orderDAO.findAllCondition(map)) ;
        return map;
    }
}
