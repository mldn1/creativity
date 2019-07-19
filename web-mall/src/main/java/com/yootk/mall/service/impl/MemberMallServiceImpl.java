package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.mall.IMemberService;
import com.yootk.dubbo.vo.Member;
import com.yootk.mall.service.IMemberMallService;
import org.springframework.stereotype.Service;

@Service
public class MemberMallServiceImpl implements IMemberMallService {
    @Reference
    private IMemberService memberService;
    public Member login(String phone){
        return this.memberService.login(phone);
    }

    @Override
    public boolean CreateMember(String phone, String password) {
        return this.memberService.createMember(phone,password);
    }

    @Override
    public boolean getPhone(String phone) {
        return this.memberService.getPhone(phone);
    }
}
