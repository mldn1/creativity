package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Project;

import java.util.List;
import java.util.Map;

public interface ProjectMapper {
    int deleteByPrimaryKey(Long proid);

    int insert(Project record);

    int insertSelective(Project record);

    int state(Project project);

    Project selectByPrimaryKey(Long proid);

    int updateByPrimaryKeySelective(Project record);

    int updateByPrimaryKey(Project record);

    List<Project> findSplit(Map<String, Object> params);

    List<Project> findSearchSplit(Map<String, Object> params);

    Long getAllRecorders(Map<String, Object> params);

    Long getAllSearchRecorders(Map<String, Object> params);
}