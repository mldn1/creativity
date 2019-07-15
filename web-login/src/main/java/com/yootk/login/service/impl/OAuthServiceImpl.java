package com.yootk.login.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.IClientService;
import com.yootk.dubbo.service.IEmpService;
import com.yootk.dubbo.service.IMemberService;
import com.yootk.dubbo.vo.Client;
import com.yootk.dubbo.vo.Emp;
import com.yootk.dubbo.vo.Member;
import com.yootk.login.service.IOAuthService;
import org.springframework.stereotype.Service;

@Service
public class OAuthServiceImpl implements IOAuthService {
    @Reference
    private IClientService clientService;
    @Reference
    private IEmpService empService;

    @Override
    public Emp getEmp(String mid) {
        return this.empService.get(mid);
    }
    @Override
    public Client get(String mid) {
        return this.clientService.get(mid);
    }
}
