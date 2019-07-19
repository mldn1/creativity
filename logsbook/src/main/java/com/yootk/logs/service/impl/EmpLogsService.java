package com.yootk.logs.service.impl;

import com.yootk.dubbo.service.IEmpLogsService;
import com.yootk.dubbo.vo.EmpLogs;
import com.yootk.logs.dao.IEmpLogsDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmpLogsService implements IEmpLogsService {
    @Autowired
    private IEmpLogsDAO empLogsDAO;
    @Override
    public boolean createLogs(EmpLogs empLogs) {
        return  this.empLogsDAO.createLogs(empLogs)>0;
    }
}
