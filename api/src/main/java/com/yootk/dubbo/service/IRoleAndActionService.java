package com.yootk.dubbo.service;

import java.util.Map;

public interface IRoleAndActionService{
    /**
     * 根据指定的用户获取用户的角色与权限
     * @param phone 用户账号
     * @return 返回内容包含两个快内容
     * 1、key=allRoles、value=用户对应的所有角色id
     * 2、key=allActions、value=用户对应的所有权限id
     */
    public Map<String,Object> get(String phone);
}
