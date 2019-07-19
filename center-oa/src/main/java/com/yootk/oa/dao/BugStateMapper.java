package com.yootk.oa.dao;


import com.yootk.dubbo.vo.BugState;

public interface BugStateMapper {
    int deleteByPrimaryKey(Integer bsid);

    int insert(BugState record);

    int insertSelective(BugState record);

    BugState selectByPrimaryKey(Integer bsid);

    int updateByPrimaryKeySelective(BugState record);

    int updateByPrimaryKey(BugState record);
}