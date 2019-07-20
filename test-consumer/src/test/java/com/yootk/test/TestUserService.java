package com.yootk.test;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.IChannelService;
import com.yootk.dubbo.service.IMemberService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

@ContextConfiguration(locations = {"classpath:spring/spring-base.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestUserService {
    @Reference
    private IChannelService channelService;
    @Reference
    private IMemberService memberService;
    @Test
    public void testGetAll(){
        System.err.println(this.channelService.getAll() + "【哈哈哈！】");
    }
    @Test
    public void testList(){
        Map<String,Object> param = new HashMap<>();
        param.put("column","name");
        param.put("keyword","%%");
        param.put("start",0);
        param.put("linesize",5);
        param.put("state","");
        param.put("source","");
        Map<String,Object> result = this.memberService.list(param);
        System.err.println("[param]" + param);
        System.err.println(result.get("allMembers") + "【allMembers】");
        System.err.println(result.get("allRecorders") + "【allRecorders】");
        System.err.println("【States】" + result.get("allStates"));
        System.err.println("【M_grades】" + result.get("allM_grades"));
    }
}
