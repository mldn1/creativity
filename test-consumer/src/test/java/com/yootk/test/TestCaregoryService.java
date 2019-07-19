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
    private ICategoryService categoryService;
    @Test
    public void testGet() {
        System.err.println(this.categoryService.listByGrade(1));
    }
    @Test
    public void testAdd(){
        Category category = new Category() ;
        category.setTitle("测试1") ;
        category.setGrade(2);
        categoryService.add(category,1L) ;
    }
    @Test
    public void testFindParent(){
        this.categoryService.listByGrade(1) ;
        this.categoryService.getCategory(17L) ;
        Category parent = this.categoryService.getParent(17L) ;
        System.err.println( "【*********************SERVICE RETURN*****************】"+ parent);
        Long pcid = 0L ;
        if ( parent != null){
            pcid = parent.getCid() ;
        }
        System.err.println("【****************SERVICE PCID******************】" + pcid) ;
    }
}
