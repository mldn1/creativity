package com.yootk.dubbo.service;

import com.yootk.dubbo.vo.Member;

import java.util.Map;

public interface IMemberServiceAdmin {
    /**
     * 实现登录的认证处理，如果用户名和密码正确，则将数据信息返回
     * 包含用户的的基本内容（ID，姓名）
     * @param vo 包含有登录信息的Vo类
     * @return 登录成功返回Vo类，登录失败，返回NULL
     */
    public Member login(Member vo);
    public Member get(String mid);

    /**
     * 实现用户的分类查询
     * @param param 分类需要的参数
     * 1.key = column ，value = 要查询的列；
     * 2.key = keyword, value = 要查询的关键词;
     * 3.key = start, value = 所在页面；
     * 4.key = linesize, value = 每页要现实的数量；
     * 5.key = state， value = 用户的状态
     * 6.key = source, value = 用户来源
     * @return
     */
    public Map<String,Object> list(Map<String, Object> param);

    /**
     * 实现用户数据的回填
     * @param phone 用户手机号
     * @return
     * 1.key = Member， value = 根据指定phone查询到的用户数据；
     * 2.key = allGrades， value = 所有的用户级别List集合；
     * 3.key = allStates， value = 所有的用户状态List集合；
     */
    public Map<String,Object> getByPhone(String phone);

    /**
     * 修改用户的部分信息
     * @return
     */
    public boolean edit(Member member);
}