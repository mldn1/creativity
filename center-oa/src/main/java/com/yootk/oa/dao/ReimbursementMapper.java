package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Reimbursement;

public interface ReimbursementMapper {
    int deleteByPrimaryKey(Long reiid);

    int insert(Reimbursement record);

    int insertSelective(Reimbursement record);

    Reimbursement selectByPrimaryKey(Long reiid);

    int updateByPrimaryKeySelective(Reimbursement record);

    int updateByPrimaryKey(Reimbursement record);
}