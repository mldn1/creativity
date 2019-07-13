package com.yootk.authc.dao;

import com.yootk.dubbo.vo.Member;

public interface IMemberDAO {
    public Member findById(String mid);
}
