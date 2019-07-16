package com.yootk.admin.service;

import com.yootk.dubbo.vo.Emp;

public interface IEmpAllPrivilegeService {
    /**
     * 查询雇员的所有信息
     * 包含用户的的基本内容（ID，姓名）
     * @param phone 用户的手机号为登录用户名
     * @return 登录成功返回Vo类，登录失败，返回NULL
     */
    public boolean setPassword(String new_password,String old_password,String phone);

}
