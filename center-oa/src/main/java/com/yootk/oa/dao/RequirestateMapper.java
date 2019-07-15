package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Requirestate;

public interface RequirestateMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Requirestate record);

    int insertSelective(Requirestate record);

    Requirestate selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Requirestate record);

    int updateByPrimaryKey(Requirestate record);
}