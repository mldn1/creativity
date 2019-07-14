package com.yootk.oa.dao;

import com.yootk.oa.vo.AskLeave;

public interface AskLeaveMapper {
    int deleteByPrimaryKey(Long alid);

    int insert(AskLeave record);

    int insertSelective(AskLeave record);

    AskLeave selectByPrimaryKey(Long alid);

    int updateByPrimaryKeySelective(AskLeave record);

    int updateByPrimaryKey(AskLeave record);
}