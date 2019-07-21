package com.yootk.authc.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.authc.dao.IMemberDAO;
import com.yootk.dubbo.service.IMemberService;
import com.yootk.dubbo.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Map;

@Service
public class MemberServiceImpl implements IMemberService {
    @Autowired
    private IMemberDAO memberDAO ;
    @Override
        public Member login(Member info) {
        System.err.println(info);
        Member user = this.memberDAO.findById(info.getMid()) ;
//        if (user != null) {
//            if (info.getPassword().equals(user.getPassword()) && user.getLocked().equals(0)) {
//                return user;
//            }
//        }
        return null;
    }

    @Override
    public Member get(String mid) {
        return this.memberDAO.findById(mid);
    }

    @Override
    public Map<String, Object> list(Map<String, Object> param) {
        return null;
    }

    @Override
    public Map<String, Object> getByPhone(String phone) {
        return null;
    }

    @Override
    public boolean edit(Member member) {
        return false;
    }
}
