package com.yootk.test;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.ICategoryService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration(locations = {"classpath:spring/spring-base.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestCaregoryService {
    @Reference
    private ICategoryService clientService;
    @Test
    public void testGet() {
        System.err.println(this.clientService.listByGrade(1));
    }
}
