package com.yootk.oa.dao;

import com.yootk.dubbo.vo.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Long nid);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Long nid);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);
}