package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Active;

public interface ActiveMapper {
    int deleteByPrimaryKey(Long aid);

    int insert(Active record);

    int insertSelective(Active record);

    Active selectByPrimaryKey(Long aid);

    int updateByPrimaryKeySelective(Active record);

    int updateByPrimaryKey(Active record);
}