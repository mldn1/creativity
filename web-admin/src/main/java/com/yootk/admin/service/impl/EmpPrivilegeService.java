package com.yootk.admin.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.admin.service.IEmpPrivilegeService;
import com.yootk.dubbo.service.IEmpService;
import com.yootk.dubbo.vo.Emp;
import org.springframework.stereotype.Service;

@Service
public class EmpPrivilegeService implements IEmpPrivilegeService {
    @Reference
    private IEmpService empService;

    @Override
    public Emp getByPhone(String phone) {
        return this.empService.get(phone);
    }
    @Override
    public boolean setDateAndIp(String lastrecord, String ip, String phone) {
        return this.empService.updateDateAndIp(lastrecord,ip,phone);
    }
}
