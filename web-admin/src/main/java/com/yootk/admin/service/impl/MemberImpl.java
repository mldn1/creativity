package com.yootk.admin.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.admin.service.IMember;
import com.yootk.dubbo.service.IMemberService;
import org.springframework.stereotype.Service;

import java.util.Map;
@Service
public class MemberImpl implements IMember {
    @Reference
    private IMemberService memberService;
    @Override
    public Map<String, Object> list(Map<String, Object> param) {
        return this.memberService.list(param);
    }
}
