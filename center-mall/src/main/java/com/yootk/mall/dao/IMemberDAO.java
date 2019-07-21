package com.yootk.mall.dao;

import com.yootk.dubbo.vo.Member;

import java.util.Map;

public interface IMemberDAO {
    public Member findByPhone(String phone);
    public int doCreateMmeber(Map<String,String> map);
    public String findPhone(String phone);
}
