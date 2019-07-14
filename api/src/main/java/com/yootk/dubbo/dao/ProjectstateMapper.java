package com.yootk.dubbo.dao;

import com.yootk.dubbo.vo.Projectstate;

public interface ProjectstateMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Projectstate record);

    int insertSelective(Projectstate record);

    Projectstate selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Projectstate record);

    int updateByPrimaryKey(Projectstate record);
}