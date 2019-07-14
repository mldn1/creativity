package com.yootk.dubbo.dao;

import com.yootk.dubbo.vo.Job;

public interface JobMapper {
    int deleteByPrimaryKey(Long jid);

    int insert(Job record);

    int insertSelective(Job record);

    Job selectByPrimaryKey(Long jid);

    int updateByPrimaryKeySelective(Job record);

    int updateByPrimaryKey(Job record);
}