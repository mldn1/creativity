package com.yootk.dubbo.dao;

import com.yootk.dubbo.vo.Newstype;

public interface NewstypeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Newstype record);

    int insertSelective(Newstype record);

    Newstype selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Newstype record);

    int updateByPrimaryKey(Newstype record);
}