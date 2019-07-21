package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Team;

import java.util.List;
import java.util.Map;

public interface TeamMapper {
    int deleteByPrimaryKey(Long tid);

    int insert(Team record);

    int insertSelective(Team record);

    Team selectByPrimaryKey(Long tid);

    int updateByPrimaryKeySelective(Team record);

    int updateByPrimaryKey(Team record);

    List<Team> findSplitByProid(Map<String, Object> params);

    int getTeamCount(Long proid);

    List<Long> findEids(Long proid);
}