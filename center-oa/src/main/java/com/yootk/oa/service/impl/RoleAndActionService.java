package com.yootk.oa.service.impl;

import com.alibaba.dubbo.config.annotation.Service;

import com.yootk.authz.dao.IActionDAO;
import com.yootk.authz.dao.IRoleDAO;
import com.yootk.dubbo.service.IRoleAndActionService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.Map;

@Service
public class RoleAndActionService implements IRoleAndActionService {
    @Autowired
    private IRoleDAO roleDAO;
    @Autowired
    private IActionDAO actionDAO;
    @Override
    public Map<String, Object> get(String mid) {
        Map<String ,Object> result = new HashMap<>();
        result.put("allRoles",this.roleDAO.findAllByMember(mid));
        result.put("allActions",this.actionDAO.findAllByMember(mid));
        return result;
    }
}
