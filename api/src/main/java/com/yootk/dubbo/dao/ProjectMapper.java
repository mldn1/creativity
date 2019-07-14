package com.yootk.dubbo.dao;

import com.yootk.dubbo.vo.Project;

public interface ProjectMapper {
    int deleteByPrimaryKey(Long proid);

    int insert(Project record);

    int insertSelective(Project record);

    Project selectByPrimaryKey(Long proid);

    int updateByPrimaryKeySelective(Project record);

    int updateByPrimaryKey(Project record);
}