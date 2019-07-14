package com.yootk.dubbo.dao;

import com.yootk.dubbo.vo.Requireorigin;

public interface RequireoriginMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Requireorigin record);

    int insertSelective(Requireorigin record);

    Requireorigin selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Requireorigin record);

    int updateByPrimaryKey(Requireorigin record);
}