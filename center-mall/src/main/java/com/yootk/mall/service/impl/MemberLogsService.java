package com.yootk.mall.service.impl;

import com.yootk.dubbo.service.mall.IMemberLogsService;
import com.yootk.dubbo.vo.MemberLogs;
import com.yootk.mall.dao.IMemberLogsDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberLogsService implements IMemberLogsService {
    @Autowired
    private IMemberLogsDAO memberLogsDAO;
    @Override
    public boolean createLogs(MemberLogs empLogs) {
        return  this.memberLogsDAO.createLogs(empLogs)>0;
    }
}
