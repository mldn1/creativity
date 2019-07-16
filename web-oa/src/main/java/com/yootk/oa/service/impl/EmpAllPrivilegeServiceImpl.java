package com.yootk.oa.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.IEmpAllService;
import com.yootk.oa.service.IEmpAllPrivilegeService;
import org.springframework.stereotype.Service;

@Service
public class EmpAllPrivilegeServiceImpl implements IEmpAllPrivilegeService {
    @Reference
    private IEmpAllService empAllService;
    public boolean setPassword(String new_password,String old_password,String phone){
        return this.empAllService.updatePassword(new_password,old_password,phone);
    }

    @Override
    public boolean setPhoto(String photo,String phone) {
        return this.empAllService.updatePhoto(photo,phone);
    }
}
