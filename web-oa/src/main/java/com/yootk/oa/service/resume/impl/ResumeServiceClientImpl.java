package com.yootk.oa.service.resume.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.oa.resume.IResumeService;
import com.yootk.oa.service.resume.IResumeServiceClient;
import org.springframework.stereotype.Service;

@Service
public class ResumeServiceClientImpl implements IResumeServiceClient {
    @Reference
    private IResumeService resumeService;
    @Override
    public IResumeService getIResumeService() {
        return this.resumeService;
    }
}
