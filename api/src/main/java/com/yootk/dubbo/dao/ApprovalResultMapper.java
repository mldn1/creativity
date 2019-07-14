package com.yootk.dubbo.dao;

import com.yootk.dubbo.vo.ApprovalResult;

public interface ApprovalResultMapper {
    int deleteByPrimaryKey(Long arid);

    int insert(ApprovalResult record);

    int insertSelective(ApprovalResult record);

    ApprovalResult selectByPrimaryKey(Long arid);

    int updateByPrimaryKeySelective(ApprovalResult record);

    int updateByPrimaryKey(ApprovalResult record);
}