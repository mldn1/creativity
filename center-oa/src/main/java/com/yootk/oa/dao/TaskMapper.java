package com.yootk.oa.dao;

import com.yootk.oa.vo.Task;

public interface TaskMapper {
    int deleteByPrimaryKey(Long taskid);

    int insert(Task record);

    int insertSelective(Task record);

    Task selectByPrimaryKey(Long taskid);

    int updateByPrimaryKeySelective(Task record);

    int updateByPrimaryKey(Task record);
}