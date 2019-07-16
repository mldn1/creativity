package com.yootk.admin.service.checkork.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.admin.service.checkork.IEmpServiceClient;
import com.yootk.dubbo.service.oa.checkork.IEmpService;
import org.springframework.stereotype.Service;

@Service
public class EmpServiceClientImpl implements IEmpServiceClient {
    @Reference
    private IEmpService empService;

    @Override
    public IEmpService getIEmpService() {
        return this.empService;
    }
}
