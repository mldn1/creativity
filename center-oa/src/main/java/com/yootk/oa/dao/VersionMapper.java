package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Version;

public interface VersionMapper {
    int deleteByPrimaryKey(Long verid);

    int insert(Version record);

    int insertSelective(Version record);

    Version selectByPrimaryKey(Long verid);

    int updateByPrimaryKeySelective(Version record);

    int updateByPrimaryKey(Version record);
}