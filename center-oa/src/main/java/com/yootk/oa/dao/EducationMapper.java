package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Education;

import java.util.List;

public interface EducationMapper {
    int deleteByPrimaryKey(Long eduid);

    int insert(Education record);

    int insertSelective(Education record);

    Education selectByPrimaryKey(Long eduid);

    int updateByPrimaryKeySelective(Education record);

    int updateByPrimaryKey(Education record);

    public List<Education> findAllEducation();
}