package com.yootk.mall.consumer.listener;

import com.yootk.dubbo.service.mall.IMemberLogsService;
import com.yootk.dubbo.vo.MemberLogs;
import org.springframework.beans.factory.annotation.Autowired;

public class MemberListener {
    @Autowired
    private IMemberLogsService memberLogsService;

    public void createLogs(MemberLogs memberLogs){
        this.memberLogsService.createLogs(memberLogs);
    }
}
