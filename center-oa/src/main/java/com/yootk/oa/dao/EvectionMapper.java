package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Evection;

public interface EvectionMapper {
    int deleteByPrimaryKey(Long eveid);

    int insert(Evection record);

    int insertSelective(Evection record);

    Evection selectByPrimaryKey(Long eveid);

    int updateByPrimaryKeySelective(Evection record);

    int updateByPrimaryKey(Evection record);
}