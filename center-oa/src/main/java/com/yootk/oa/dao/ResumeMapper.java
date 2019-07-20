package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Resume;

import java.util.List;
import java.util.Map;

public interface ResumeMapper {
    /**
     * 根据简历id删除对应的简历信息
     * @param resid 简历id
     * @return 删除成功返回1，否则返回0
     */
    int deleteByPrimaryKey(Long resid);

    /**
     * 创建新的简历
     * @param record 简历对象
     * @return 返回影响的行数
     */
    int insert(Resume record);

    int insertSelective(Resume record);

    Resume selectByPrimaryKey(Long resid);

    /**
     * 修改简历信息
     * @param record 简历对象
     * @return 返回影响的行数
     */
    int updateByPrimaryKeySelective(Resume record);

    int updateByPrimaryKey(Resume record);

    /**
     * 分页查询
     * @param map 传的参数是map集合，具体见业务层
     * @return 返回简历的list集合
     */
    public List<Resume> findAll(Map<String,Object> map);

    public Long getAllRecorders(Map<String, Object> params);//获得返回数据的总记录数，下面分页查询需要用到

    public Resume findByRsid(Long resid);//根据简历id查询到简历对象


}