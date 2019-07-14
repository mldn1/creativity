package com.yootk.oa.dao;

import com.yootk.oa.vo.ApplyState;

public interface ApplyStateMapper {
    int deleteByPrimaryKey(Long asid);

    int insert(ApplyState record);

    int insertSelective(ApplyState record);

    ApplyState selectByPrimaryKey(Long asid);

    int updateByPrimaryKeySelective(ApplyState record);

    int updateByPrimaryKey(ApplyState record);
}