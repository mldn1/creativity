package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Requirestate;

import java.util.List;

public interface RequirestateMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Requirestate record);

    int insertSelective(Requirestate record);

    Requirestate selectByPrimaryKey(Long id);

    List<Requirestate> findAll();

    int updateByPrimaryKeySelective(Requirestate record);

    int updateByPrimaryKey(Requirestate record);

    String getNameById(Integer id);
}