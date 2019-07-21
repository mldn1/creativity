package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Project;
import com.yootk.dubbo.vo.Require;

import java.util.List;
import java.util.Map;

public interface RequireMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Require record);

    int insertSelective(Require record);

    Require selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Require record);

    int updateByPrimaryKey(Require record);

    List<Require> findSplit(Map<String, Object> params);

    List<Require> findSearchSplit(Map<String, Object> params);

    Long getAllRecorders(Map<String, Object> params);
    Long getAllSearchRecorders(Map<String, Object> params);
}