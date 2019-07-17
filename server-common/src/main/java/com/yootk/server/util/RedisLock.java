package com.yootk.server.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.util.concurrent.TimeUnit;

@Component
public class RedisLock {
    @Autowired
    private RedisTemplate<String, String> stringRedisTemplate;

    /**
     * 进行业务锁的设置
     *
     * @param serviceKey 要进行处理业务定义的KEY名称
     * @param userid     保存的数据内容，内容可以任意，但是一定要有唯一标记
     * @param timeout    业务操作的超时时间，防止死锁
     * @param timeUnit   时间单元配置
     * @return 返回true表示加锁成功，如果返回的是false表示加锁失败
     */
    public boolean lock(String serviceKey, String userid, Long timeout, TimeUnit timeUnit) {
        // 1、既然要进行锁的设计，那么就必须防止有可能会出现锁重复配置的情况
        if (this.stringRedisTemplate.opsForValue().setIfAbsent(
                serviceKey, userid, timeout, timeUnit)) {   // 如果数据不存在则进行设置
            return true; // 直接返回true，表示已经获取了锁
        }
        // 2、如果此时没有相应的内容，则应该考虑获取指定key的内容，观察其是否为空
        // 如果可以获取内容，则获取到的是当前的执行者的用户ID
        String oldValue = this.stringRedisTemplate.opsForValue().get(serviceKey);
        // 当前Redis数据库里面存储的内容正好是当前操作者的用户信息
        if (!StringUtils.isEmpty(oldValue) && oldValue.equals(userid)) {
            // 重复的进行一个新的内容的设置，这样就可以解决一个业务突然加长的问题
            this.stringRedisTemplate.opsForValue().setIfAbsent(serviceKey, userid, timeout, timeUnit);
            return true;
        }
        return false;
    }

    /**
     * 实现解锁的处理操作，就是删除指定的key的内容
     *
     * @param serviceKey 业务处理的执行KEY
     * @param userid     保存的用户ID
     */
    public void unlock(String serviceKey, String userid) {
        String oldValue = this.stringRedisTemplate.opsForValue().get(serviceKey);
        // 当前进行传递到方法中进行解锁的内容正好是Redis里面所保存的数据
        if (!StringUtils.isEmpty(oldValue) && oldValue.equals(userid)) {
            this.stringRedisTemplate.opsForValue().getOperations().delete(serviceKey);
        }
    }
}
