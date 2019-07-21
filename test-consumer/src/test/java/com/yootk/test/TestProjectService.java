package com.yootk.test;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.oa.projects.IProjectService;
import com.yootk.dubbo.vo.Member;
import com.yootk.dubbo.vo.Project;
import com.yootk.dubbo.vo.Require;
import com.yootk.util.date.WorkdayUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@ContextConfiguration(locations = {"classpath:spring/spring-base.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestProjectService {
    @Reference
    private IProjectService projectService;

    @Test
    public void testGet() {
        System.out.println(this.projectService.chart(1L));
    }

}
