package com.yootk.oa.service.checkork.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.oa.checkork.IEmpServicewxl;
import com.yootk.oa.service.checkork.IEmpServicewxlClient;
import org.springframework.stereotype.Service;

@Service
public class EmpServicewxlClientImpl implements IEmpServicewxlClient {
    @Reference
    private IEmpServicewxl servicewxl;
    @Override
    public IEmpServicewxl getIEmpServicewxl() {
        return this.servicewxl;
    }
}
