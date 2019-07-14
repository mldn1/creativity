package com.yootk.oa.dao;

import com.yootk.oa.vo.Overtime;

public interface OvertimeMapper {
    int deleteByPrimaryKey(Long otid);

    int insert(Overtime record);

    int insertSelective(Overtime record);

    Overtime selectByPrimaryKey(Long otid);

    int updateByPrimaryKeySelective(Overtime record);

    int updateByPrimaryKey(Overtime record);
}