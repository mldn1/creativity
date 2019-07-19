package com.yootk.test;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.IMemberService;
import com.yootk.dubbo.service.oa.organization.IGroupService;
import com.yootk.dubbo.vo.Member;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration(locations = {"classpath:spring/spring-base.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestGroupService {
    @Reference
    private IGroupService groupService;

    @Test
    public void testGetGroupEmps() {
        System.out.println(this.groupService.addGroupEmpByNameOrUsername("奥巴马", 33));
    }
}
