package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Group;

import java.util.List;
import java.util.Map;

public interface GroupMapper {
    int deleteByPrimaryKey(Long gid);

    int insert(Group record);

    int insertSelective(Group record);

    Group selectByPrimaryKey(Long gid);

    int updateByPrimaryKeySelective(Group record);

    int updateByPrimaryKey(Group record);

    List<Group> findSplit(Map<String, Object> params);

    Long getAllRecorders(Map<String, Object> params);
}