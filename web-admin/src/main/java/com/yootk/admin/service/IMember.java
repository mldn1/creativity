package com.yootk.admin.service;

import com.yootk.dubbo.vo.Member;

import java.util.Map;

public interface IMember {
    public Map<String,Object> list(Map<String,Object> param);

    public Map<String,Object> getByPhone(String phone);

    public boolean edit(Member member);
}
