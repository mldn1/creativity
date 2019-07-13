package com.yootk.dubbo.service;

import com.yootk.dubbo.vo.Emp;
import com.yootk.dubbo.vo.Member;

public interface IEmpService {
    /**
     * 实现登录的认证处理，如果用户名和密码正确，则将数据信息返回
     * 包含用户的的基本内容（ID，姓名）
     * @param phone 用户的手机号为登录用户名
     * @return 登录成功返回Vo类，登录失败，返回NULL
     */
    public Emp get(String phone);
}
