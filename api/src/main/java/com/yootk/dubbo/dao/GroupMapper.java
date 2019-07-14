package com.yootk.dubbo.dao;

import com.yootk.dubbo.vo.Group;

public interface GroupMapper {
    int deleteByPrimaryKey(Long gid);

    int insert(Group record);

    int insertSelective(Group record);

    Group selectByPrimaryKey(Long gid);

    int updateByPrimaryKeySelective(Group record);

    int updateByPrimaryKey(Group record);
}