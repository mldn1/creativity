package com.yootk.test;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.IMemberService;
import com.yootk.dubbo.vo.Member;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration(locations = {"classpath:spring/spring-base.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestMemberService {
    @Reference
    private IMemberService memberService;

    @Test
    public void testGet() {
        Member member = new Member() ;
        member.setMid("2001");
        member.setPassword("hello");
        System.out.println(this.memberService.login(member));
    }
}
