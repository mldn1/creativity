package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Authority;

public interface AuthorityMapper {
    int deleteByPrimaryKey(Long authoid);

    int insert(Authority record);

    int insertSelective(Authority record);

    Authority selectByPrimaryKey(Long authoid);

    int updateByPrimaryKeySelective(Authority record);

    int updateByPrimaryKey(Authority record);
}