package com.yootk.admin.dao;

import java.util.Set;

public interface IRoleDAO {
    /**
     * 根据用户编号查询所有的用户的角色id
     * @param phone 用户的编号
     * @return 返回所有的用户的角色的id
     */
    public Set<String> findAllByMember(String phone);
}
