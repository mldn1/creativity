package com.yootk.oa.service.impl;

import com.yootk.dubbo.service.ICheckorkService;
import com.yootk.dubbo.vo.Checkork;
import com.yootk.oa.dao.CheckorkMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

@ContextConfiguration(locations = "classpath:META-INF/spring/spring-base.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class test {
    @Autowired
    private CheckorkMapper mapper;
    @Test
    public void test() throws Exception {
        Map<String,Object> map=new HashMap<>();
        map.put("eid",1);
        map.put("start",1);//currentPage*(lineSize-1)
        map.put("end",1);//currentPage
        System.out.println("************"+mapper+"************");
        Checkork checkork=this.mapper.findSplitByEid(map);
        System.out.println(checkork.getIp());
    }
}
