package com.yootk.mall.dao;

import com.yootk.dubbo.vo.Member;

public interface IMemberDAO {
    public Member findByPhone(String phone);
}
