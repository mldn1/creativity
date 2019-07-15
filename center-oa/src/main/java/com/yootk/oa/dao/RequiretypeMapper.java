package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Requiretype;

public interface RequiretypeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Requiretype record);

    int insertSelective(Requiretype record);

    Requiretype selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Requiretype record);

    int updateByPrimaryKey(Requiretype record);
}