package com.yootk.dubbo.service.oa.checkork;


import java.util.Date;
import java.util.Map;

public interface ICheckorkService {

        /**
         * 根据雇员eid（emp表中）查询出该用户的所有考勤记录
         * @param eid 用户id
         * @param currentPage 当前页
         * @param lineSize 每页存放的长度
         * @return 返回Checkork（考勤表）的map集合
         */
        public Map<String,Object> list(Long eid, Long currentPage, Integer lineSize, String column, String keyword) ;


        /**
         * 打卡
         * @param eid 用户id
         * @param datetime 打卡时间
         * @param state 考勤状态（1,2,3,4）
         * @param ip 用户打卡电脑的ip地址
         * @return 返回打卡成功或失败
         */
        public boolean doCreate(Long eid, Date datetime, Integer state, String ip);

}

