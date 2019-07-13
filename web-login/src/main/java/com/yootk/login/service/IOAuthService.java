package com.yootk.login.service;


import com.yootk.dubbo.vo.Client;
import com.yootk.dubbo.vo.Emp;
import com.yootk.dubbo.vo.Member;

public interface IOAuthService {
    /**
     * 进行用户认证信息的获取
     * @param mid 要获取的用户id
     * @return 用户的完整的信息
     */
    public Emp getEmp(String mid);
    public Client get(String mid);
}
