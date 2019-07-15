package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Checkork;

public interface CheckorkMapper {
    int deleteByPrimaryKey(Long coid);

    int insert(Checkork record);

    int insertSelective(Checkork record);

    Checkork selectByPrimaryKey(Long coid);

    int updateByPrimaryKeySelective(Checkork record);

    int updateByPrimaryKey(Checkork record);
}