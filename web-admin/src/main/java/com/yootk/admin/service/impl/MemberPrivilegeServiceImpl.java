package com.yootk.admin.service.impl;


import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.IRoleAndActionService;
import com.yootk.admin.service.IMemberPrivilegeService;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Service
public class MemberPrivilegeServiceImpl implements IMemberPrivilegeService {
    @Reference
    private IRoleAndActionService roleAndActionService ;

    @Override
    public Map<String, Set<String>> getByMember(String phone) {
        Map<String,Set<String>> result = new HashMap<>() ;
        Map<String,Object> data = this.roleAndActionService.get(phone) ;
        result.put("allRoles",(Set<String>)data.get("allRoles")) ;
        result.put("allActions",(Set<String>)data.get("allActions")) ;
        return result;
    }
}
