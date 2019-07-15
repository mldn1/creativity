package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Team;

public interface TeamMapper {
    int deleteByPrimaryKey(Long tid);

    int insert(Team record);

    int insertSelective(Team record);

    Team selectByPrimaryKey(Long tid);

    int updateByPrimaryKeySelective(Team record);

    int updateByPrimaryKey(Team record);
}