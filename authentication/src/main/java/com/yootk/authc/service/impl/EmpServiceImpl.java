package com.yootk.authc.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.authc.dao.IEmpDAO;
import com.yootk.dubbo.service.IEmpService;
import com.yootk.dubbo.vo.Emp;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class EmpServiceImpl implements IEmpService {
    @Autowired
    private IEmpDAO empDAO ;
    @Override
    public Emp get(String phone) {
        return this.empDAO.findById(phone);
    }
    @Override
    public boolean updateDateAndIp(String lastrecord, String ip, String phone) {
        return this.empDAO.updateDateAndIp(lastrecord,ip,phone)>0;
    }
}
