package com.yootk.dubbo.dao;

import com.yootk.dubbo.vo.Requireperiod;

public interface RequireperiodMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Requireperiod record);

    int insertSelective(Requireperiod record);

    Requireperiod selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Requireperiod record);

    int updateByPrimaryKey(Requireperiod record);
}