package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Doc;

public interface DocMapper {
    int deleteByPrimaryKey(Long docid);

    int insert(Doc record);

    int insertSelective(Doc record);

    Doc selectByPrimaryKey(Long docid);

    int updateByPrimaryKeySelective(Doc record);

    int updateByPrimaryKey(Doc record);
}