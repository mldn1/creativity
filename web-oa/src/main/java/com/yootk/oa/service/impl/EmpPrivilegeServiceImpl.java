package com.yootk.oa.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.IEmpService;
import com.yootk.oa.service.IEmpPrivilegeService;
import org.springframework.stereotype.Service;

@Service
public class EmpPrivilegeServiceImpl implements IEmpPrivilegeService {
    @Reference
    private IEmpService empService;
    @Override
    public boolean setDateAndIp(String lastrecord, String ip, String phone) {
        return this.empService.updateDateAndIp(lastrecord,ip,phone);
    }
}
