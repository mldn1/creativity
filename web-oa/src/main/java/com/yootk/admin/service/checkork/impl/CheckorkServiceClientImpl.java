package com.yootk.admin.service.checkork.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.admin.service.checkork.ICheckorkServiceClient;
import com.yootk.dubbo.service.oa.checkork.ICheckorkService;
import org.springframework.stereotype.Service;

@Service
public class CheckorkServiceClientImpl implements ICheckorkServiceClient {
    @Reference
    private ICheckorkService checkorkService;

    @Override
    public ICheckorkService getICheckorkService() {
        System.out.println(checkorkService);
        return this.checkorkService;
    }
}
