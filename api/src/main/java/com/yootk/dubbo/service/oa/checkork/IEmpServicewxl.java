package com.yootk.dubbo.service.oa.checkork;

import com.yootk.dubbo.vo.Emp;

import java.util.List;

public interface IEmpServicewxl {
    /**
     * 根据手机号获得用户id
     * @param phone 用户手机号
     * @return 用户id
     */
    public Long getEid(String phone);

    /**
     * 获得全部的雇员信息
     * @return 雇员信息
     */
    public List<Emp> getAllEmp();
}
