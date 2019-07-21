package com.yootk.oa.service.checkork.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.oa.checkork.ICheckorkService;
import com.yootk.oa.service.checkork.ICheckorkServiceClient;
import org.springframework.stereotype.Service;

@Service
public class CheckorkServiceClientImpl implements ICheckorkServiceClient {
    @Reference
    private ICheckorkService checkorkService;

    @Override
    public ICheckorkService getICheckorkService() {
        return this.checkorkService;
    }
}
