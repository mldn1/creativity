package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Groupemp;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface GroupempMapper {

    int insertSelective(Groupemp record);

    int updateByPrimaryKeySelective(Groupemp record);

    int updateByPrimaryKey(Groupemp record);



    Set<Long> findAllEidsByGid(Long gid);

    long getAllCountByGid(Long gid);

    int deleteByGidAndEid(Map<String, Long> params);

    int deleteByGid(long gid);

    int doCreate(Map<String, Long> params);

    int getCountByGidAndEid(Map<String, Long> params);


}