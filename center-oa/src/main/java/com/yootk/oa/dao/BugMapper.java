package com.yootk.oa.dao;


import com.yootk.dubbo.vo.Bug;

public interface BugMapper {
    int deleteByPrimaryKey(Long bugid);

    int insert(Bug record);

    int insertSelective(Bug record);

    Bug selectByPrimaryKey(Long bugid);

    int updateByPrimaryKeySelective(Bug record);

    int updateByPrimaryKey(Bug record);
}