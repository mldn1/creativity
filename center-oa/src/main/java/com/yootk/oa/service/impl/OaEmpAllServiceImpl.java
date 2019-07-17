package com.yootk.oa.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.IEmpAllService;
import com.yootk.dubbo.vo.Emp;
import com.yootk.oa.dao.IEmpDAO;
import com.yootk.util.encrypt.EncryptUtil;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.Map;

@Service
public class OaEmpAllServiceImpl implements IEmpAllService {
    @Autowired
    private IEmpDAO empDAO;

    @Override
    public boolean updatePassword(String new_password, String old_password, String phone) {
        Emp emp = this.empDAO.findByPhone(phone);
        if (EncryptUtil.encode(old_password).equals(emp.getPassword())){
            return this.empDAO.updateByPassword(EncryptUtil.encode(new_password),phone)>0;
        }
        return false;
    }

    @Override
    public boolean updatePhoto(String photo,String phone) {
        return this.empDAO.updatePhoto(photo,phone)>0;
    }
}
