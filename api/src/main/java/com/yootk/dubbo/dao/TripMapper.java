package com.yootk.dubbo.dao;

import com.yootk.dubbo.vo.Trip;

public interface TripMapper {
    int deleteByPrimaryKey(Long tripid);

    int insert(Trip record);

    int insertSelective(Trip record);

    Trip selectByPrimaryKey(Long tripid);

    int updateByPrimaryKeySelective(Trip record);

    int updateByPrimaryKey(Trip record);
}