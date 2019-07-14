package com.yootk.dubbo.dao;

import com.yootk.dubbo.vo.Text;

public interface TextMapper {
    int deleteByPrimaryKey(Long textid);

    int insert(Text record);

    int insertSelective(Text record);

    Text selectByPrimaryKey(Long textid);

    int updateByPrimaryKeySelective(Text record);

    int updateByPrimaryKey(Text record);
}