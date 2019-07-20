package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Grade;

public interface GradeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Grade record);

    int insertSelective(Grade record);

    Grade selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Grade record);

    int updateByPrimaryKey(Grade record);
}