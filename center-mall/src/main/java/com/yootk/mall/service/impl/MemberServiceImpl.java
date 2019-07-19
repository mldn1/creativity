package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.IMemberService;
import com.yootk.mall.dao.IMemberDAO;
import com.yootk.dubbo.vo.Member;
import com.yootk.util.encrypt.EncryptUtil;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.Map;

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
    public boolean createMember(String phone, String password) {
        Map<String,String> map = new HashMap<>();
        map.put("phone",phone);
        map.put("password",EncryptUtil.encode(password));
        return this.memberDAO.doCreateMmeber(map)>0;
    }

    @Override
    public boolean getPhone(String phone) {
        if (this.memberDAO.findPhone(phone) == null){
            return true;
        }
        return false;
    }

}
