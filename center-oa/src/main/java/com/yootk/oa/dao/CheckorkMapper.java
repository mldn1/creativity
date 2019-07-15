package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Checkork;

import java.util.List;
import java.util.Map;

public interface CheckorkMapper {
    int deleteByPrimaryKey(Long coid);

    int insert(Checkork record);

    int insertSelective(Checkork record);

    Checkork selectByPrimaryKey(Long coid);

    int updateByPrimaryKeySelective(Checkork record);

    int updateByPrimaryKey(Checkork record);

    /**
     * 根据用户eid查找到所有的考勤记录
     * @param map 封装好eid，currentpage，linesize
     * @return 返回权限表的对象
     * @throws Exception 抛出异常
     */
    public List<Checkork> findSplitByEid(Map<String,Object> map) throws Exception;
}