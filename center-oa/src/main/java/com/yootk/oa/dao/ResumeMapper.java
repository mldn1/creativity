package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Resume;

public interface ResumeMapper {
    int deleteByPrimaryKey(Long resid);

    int insert(Resume record);

    int insertSelective(Resume record);

    Resume selectByPrimaryKey(Long resid);

    int updateByPrimaryKeySelective(Resume record);

    int updateByPrimaryKey(Resume record);
}