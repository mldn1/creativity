package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.IMemberLogsService;
import com.yootk.dubbo.vo.MemberLogs;
import com.yootk.mall.dao.IMemberLogsDAO;
import org.springframework.beans.factory.annotation.Autowired;


@Service
public class MemberLogsServiceImpl implements IMemberLogsService {
    @Autowired
    private IMemberLogsDAO memberLogsDAO;
    @Override
    public boolean createLogs(MemberLogs empLogs) {
        return  this.memberLogsDAO.createLogs(empLogs)>0;
    }
}
