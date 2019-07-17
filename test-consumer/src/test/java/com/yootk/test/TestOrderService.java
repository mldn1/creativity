package com.yootk.test;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.IMemberService;
import com.yootk.dubbo.service.mall.IOrderService;
import com.yootk.dubbo.vo.Member;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration(locations = {"classpath:spring/spring-base.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestOrderService {
    @Reference
    private IOrderService orderService;

    @Test
    public void testGet() throws Exception{
        System.err.println(this.orderService.List("20190320120604afd78900").get("order"));
    }
}
