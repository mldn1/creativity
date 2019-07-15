package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Extension;

public interface ExtensionMapper {
    int deleteByPrimaryKey(Long extid);

    int insert(Extension record);

    int insertSelective(Extension record);

    Extension selectByPrimaryKey(Long extid);

    int updateByPrimaryKeySelective(Extension record);

    int updateByPrimaryKey(Extension record);
}