package com.yootk.oa.service.checkork.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.oa.checkork.IEmpServicewxl;
import com.yootk.dubbo.vo.Emp;
import com.yootk.oa.dao.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
@Service
public class EmpServiceImplwxl implements IEmpServicewxl {
    @Autowired
    private EmpMapper empMapper;
    @Override
    public Long getEid(String phone) {
        return null;
    }

    @Override
    public List<Emp> getAllEmp() {
        return this.empMapper.getAllEmp();
    }
}
