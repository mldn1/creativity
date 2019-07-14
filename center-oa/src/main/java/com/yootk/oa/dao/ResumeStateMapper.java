package com.yootk.oa.dao;

import com.yootk.dubbo.vo.ResumeState;

public interface ResumeStateMapper {
    int deleteByPrimaryKey(Long rsid);

    int insert(ResumeState record);

    int insertSelective(ResumeState record);

    ResumeState selectByPrimaryKey(Long rsid);

    int updateByPrimaryKeySelective(ResumeState record);

    int updateByPrimaryKey(ResumeState record);
}