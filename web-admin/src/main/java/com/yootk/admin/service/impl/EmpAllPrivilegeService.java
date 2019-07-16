package com.yootk.admin.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.admin.service.IEmpAllPrivilegeService;
import com.yootk.dubbo.service.IEmpAllService;
import com.yootk.dubbo.vo.Emp;
import org.springframework.stereotype.Service;

@Service
public class EmpAllPrivilegeService implements IEmpAllPrivilegeService {
    @Reference
    private IEmpAllService empAllService;
    @Override
    public Emp getEmp(String phone) {
        return this.empAllService.getEmp(phone);
    }

    @Override
    public boolean setPassword(String new_password, String old_password, String phone) {
        return this.empAllService.updatePassword(new_password,old_password,phone);
    }
}
