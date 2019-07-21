package com.yootk;

import com.yootk.admin.util.EncryptUtil;
import com.yootk.admin.util.cache.RedisCache;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration(locations = {"classpath:spring/spring-test.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class test {
    @Autowired
    private RedisCache<Object,Object> redisCache;
    @Test
    public void testPut(){
        this.redisCache.put("hello","HappyShu");
    }
    @Test
    public void testGett(){
        System.out.println(this.redisCache.get("admin"));
    }
}
