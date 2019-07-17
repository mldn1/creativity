package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Project;

import java.util.List;
import java.util.Map;

public interface ProjectMapper {
    int deleteByPrimaryKey(Long proid);

    int insert(Project record);

    int insertSelective(Project record);

    Project selectByPrimaryKey(Long proid);

    int updateByPrimaryKeySelective(Project record);

    int updateByPrimaryKey(Project record);

    List<Project> findSplit(Map<String, Object> params);

    Long getAllRecorders(Map<String, Object> params);
}