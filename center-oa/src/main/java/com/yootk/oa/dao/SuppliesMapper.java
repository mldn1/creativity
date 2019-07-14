package com.yootk.oa.dao;

import com.yootk.oa.vo.Supplies;

public interface SuppliesMapper {
    int deleteByPrimaryKey(Long supid);

    int insert(Supplies record);

    int insertSelective(Supplies record);

    Supplies selectByPrimaryKey(Long supid);

    int updateByPrimaryKeySelective(Supplies record);

    int updateByPrimaryKey(Supplies record);
}