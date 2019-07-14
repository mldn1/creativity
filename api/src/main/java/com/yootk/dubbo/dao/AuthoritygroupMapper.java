package com.yootk.dubbo.dao;

import com.yootk.dubbo.vo.Authoritygroup;

public interface AuthoritygroupMapper {
    int deleteByPrimaryKey(Long authoid);

    int insert(Authoritygroup record);

    int insertSelective(Authoritygroup record);

    Authoritygroup selectByPrimaryKey(Long authoid);

    int updateByPrimaryKeySelective(Authoritygroup record);

    int updateByPrimaryKey(Authoritygroup record);
}