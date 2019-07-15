package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Activetype;

public interface ActivetypeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Activetype record);

    int insertSelective(Activetype record);

    Activetype selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Activetype record);

    int updateByPrimaryKey(Activetype record);
}