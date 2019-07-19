package com.yootk.logs.consumer.listener;

import com.yootk.dubbo.service.IEmpLogsService;
import com.yootk.dubbo.vo.EmpLogs;
import org.springframework.beans.factory.annotation.Autowired;

public class MemberlogsListener {
    @Autowired
    private IEmpLogsService empLogsService;

    public void createLogs(EmpLogs empLogs){
        this.empLogsService.createLogs(empLogs);
    }
}
