package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.IMemberService;
import com.yootk.mall.dao.IMemberDAO;
import com.yootk.dubbo.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class MemberServiceImpl implements IMemberService {
    @Autowired
    private IMemberDAO memberDAO;
    @Override
    public Member login(String phone) {
        System.err.println(phone);
        Member user = this.memberDAO.findByPhone(phone);
        return user;
    }

    @Override
    public Member get(String mid) {
        return null;
    }
}
