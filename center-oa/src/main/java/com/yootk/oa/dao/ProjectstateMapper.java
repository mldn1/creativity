package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Projectstate;

import java.util.List;

public interface ProjectstateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Projectstate record);

    int insertSelective(Projectstate record);

    Projectstate selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Projectstate record);

    int updateByPrimaryKey(Projectstate record);

    String getTittleByById(Integer id);

    List<Projectstate> getAll();
}