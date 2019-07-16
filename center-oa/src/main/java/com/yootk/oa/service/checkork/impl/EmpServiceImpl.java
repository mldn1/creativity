package com.yootk.oa.service.checkork.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.oa.checkork.IEmpService;
import com.yootk.oa.dao.IEmpDAO;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class EmpServiceImpl implements IEmpService {
    @Autowired
    private IEmpDAO empDAO;
    @Override
    public Long getEid(String phone) {
        System.err.println("======================"+phone+"==========================");
        return this.empDAO.getEidByPhone(phone);
    }
}
