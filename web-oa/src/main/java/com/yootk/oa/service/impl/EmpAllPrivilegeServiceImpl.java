package com.yootk.oa.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.IEmpAllService;
import com.yootk.dubbo.vo.Emp;
import com.yootk.oa.service.IEmpAllPrivilegeService;
import org.springframework.stereotype.Service;

@Service
public class EmpAllPrivilegeServiceImpl implements IEmpAllPrivilegeService {
    @Reference
    private IEmpAllService empAllService;

    public Emp getEmp(String phone){
        return this.empAllService.getEmp(phone);
    }
    public boolean setPassword(String new_password,String old_password,String phone){
        return this.empAllService.updatePassword(new_password,old_password,phone);
    }
}
