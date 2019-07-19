package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Emp;

import java.util.List;

public interface EmpMapper {
    /**
     * 根据当前用户的注册手机号查询到当前用户的eid
     * @param phone 当前用户的注册手机号
     * @return 当前用户的eid
     */
    public Long getEidByPhone(String phone);

    /**
     * 获得全部的雇员信息
     * @return 返回emp的list集合
     */
    public List<Emp> getAllEmp();
}
