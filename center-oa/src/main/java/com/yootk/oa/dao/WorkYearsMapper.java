package com.yootk.oa.dao;

import com.yootk.dubbo.vo.WorkYears;

import java.util.List;

public interface WorkYearsMapper {
    int deleteByPrimaryKey(Long wyid);

    int insert(WorkYears record);

    int insertSelective(WorkYears record);

    WorkYears selectByPrimaryKey(Long wyid);

    int updateByPrimaryKeySelective(WorkYears record);

    int updateByPrimaryKey(WorkYears record);

    public List<WorkYears> findAll();
}