package com.yootk.oa.dao;

import com.yootk.oa.vo.ApprovalResult;

public interface ApprovalResultMapper {
    int deleteByPrimaryKey(Long arid);

    int insert(ApprovalResult record);

    int insertSelective(ApprovalResult record);

    ApprovalResult selectByPrimaryKey(Long arid);

    int updateByPrimaryKeySelective(ApprovalResult record);

    int updateByPrimaryKey(ApprovalResult record);
}