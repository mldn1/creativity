package com.yootk.mall.service;

import com.yootk.dubbo.vo.Member;

public interface IMemberMallService {
    public Member login(String phone);
    public boolean CreateMember(String phone,String password);
    public boolean getPhone(String phone);
}
