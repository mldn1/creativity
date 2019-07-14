package com.yootk.oa.dao;

import com.yootk.oa.vo.LeaveType;

public interface LeaveTypeMapper {
    int deleteByPrimaryKey(Long ltid);

    int insert(LeaveType record);

    int insertSelective(LeaveType record);

    LeaveType selectByPrimaryKey(Long ltid);

    int updateByPrimaryKeySelective(LeaveType record);

    int updateByPrimaryKey(LeaveType record);
}