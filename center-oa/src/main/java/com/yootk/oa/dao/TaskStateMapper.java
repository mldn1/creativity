package com.yootk.oa.dao;

import com.yootk.oa.vo.TaskState;

public interface TaskStateMapper {
    int deleteByPrimaryKey(Integer tsid);

    int insert(TaskState record);

    int insertSelective(TaskState record);

    TaskState selectByPrimaryKey(Integer tsid);

    int updateByPrimaryKeySelective(TaskState record);

    int updateByPrimaryKey(TaskState record);
}