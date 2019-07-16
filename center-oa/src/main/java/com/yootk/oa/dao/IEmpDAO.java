package com.yootk.oa.dao;

public interface IEmpDAO {
    /**
     * 根据当前用户的注册手机号查询到当前用户的eid
     * @param phone 当前用户的注册手机号
     * @return 当前用户的eid
     */
    public Long getEidByPhone(String phone);
}
