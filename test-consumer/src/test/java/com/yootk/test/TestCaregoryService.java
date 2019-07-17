package com.yootk.test;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.ICategoryService;
import com.yootk.dubbo.vo.Category;
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
    @Test
    public void testAdd(){
        Category category = new Category() ;
        category.setTitle("测试1") ;
        category.setGrade(2);
        clientService.add(category,1L) ;
    }
}
