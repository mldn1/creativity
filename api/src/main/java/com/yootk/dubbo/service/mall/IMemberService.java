package com.yootk.dubbo.service.mall;

import com.yootk.dubbo.vo.Member;

public interface IMemberService {
    /**
     * 实现登录的认证处理，如果用户名和密码正确，则将数据信息返回
     * 包含用户的的基本内容（ID，姓名）
     * @param phone 包含有登录信息的Vo类
     * @return 登录成功返回Vo类，登录失败，返回NULL
     */
    public Member login(String phone);
    public boolean createMember(String phone,String password);
    public boolean getPhone(String phone);
}