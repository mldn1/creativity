package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Groupemp;

public interface GroupempMapper {
    int deleteByPrimaryKey(Long gid);

    int insert(Groupemp record);

    int insertSelective(Groupemp record);

    Groupemp selectByPrimaryKey(Long gid);

    int updateByPrimaryKeySelective(Groupemp record);

    int updateByPrimaryKey(Groupemp record);
}