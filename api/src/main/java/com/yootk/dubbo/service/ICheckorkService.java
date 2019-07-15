package com.yootk.dubbo.service;

import com.yootk.dubbo.vo.Checkork;
public interface ICheckorkService {

        /**
         * 根据雇员eid（emp表中）查询出该用户的所有考勤记录
         * @param eid 用户id
         * @param currentPage 当前页
         * @param lineSize 每页存放的长度
         * @return 返回Checkork（考勤表）对象
         * @throws Exception 抛出异常
         */
        public Checkork list(Long eid, Long currentPage, Integer lineSize) throws Exception ;
}
