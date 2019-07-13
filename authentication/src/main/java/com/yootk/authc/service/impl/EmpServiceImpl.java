package com.yootk.authc.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.authc.dao.IEmpDAO;
import com.yootk.authc.dao.IMemberDAO;
import com.yootk.dubbo.service.IEmpService;
import com.yootk.dubbo.service.IMemberService;
import com.yootk.dubbo.vo.Emp;
import com.yootk.dubbo.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class EmpServiceImpl implements IEmpService {
    @Autowired
    private IEmpDAO empDAO ;
    @Override
    public Emp get(String mid) {
        return this.empDAO.findById(mid);
    }
}
