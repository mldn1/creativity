package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Requireperiod;

import java.util.List;

public interface RequireperiodMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Requireperiod record);

    int insertSelective(Requireperiod record);

    Requireperiod selectByPrimaryKey(Long id);

    List<Requireperiod> findAll();

    int updateByPrimaryKeySelective(Requireperiod record);

    int updateByPrimaryKey(Requireperiod record);

    String getNameById(Integer id);
}