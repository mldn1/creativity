package com.yootk.dubbo.dao;

import com.yootk.dubbo.vo.Require;

public interface RequireMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Require record);

    int insertSelective(Require record);

    Require selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Require record);

    int updateByPrimaryKey(Require record);
}