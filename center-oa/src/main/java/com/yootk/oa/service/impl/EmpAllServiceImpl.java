package com.yootk.oa.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.IEmpAllService;
import com.yootk.dubbo.vo.Emp;
import com.yootk.oa.dao.IEmpDAO;
import com.yootk.util.encrypt.EncryptUtil;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class EmpAllServiceImpl implements IEmpAllService {
    @Autowired
    private IEmpDAO empDAO;
    @Override
    public Emp getEmp(String phone) {
        return this.empDAO.findByPhone(phone);
    }

    @Override
    public boolean updatePassword(String new_password, String old_password, String phone) {
        Emp emp = this.empDAO.findByPhone(phone);
        if (EncryptUtil.encode(old_password).equals(emp.getPassword())){
            return this.empDAO.updateByPassword(EncryptUtil.encode(new_password),phone)>0;
        }
        return false;
    }
}
