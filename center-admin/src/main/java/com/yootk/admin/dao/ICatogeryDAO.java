package com.yootk.admin.dao;

import com.yootk.admin.vo.Catogery;

import java.util.List;

public interface ICatogeryDAO {
    public List<Catogery> findCatogeryByGrade(Integer grade) ;//获取某一级的所有分类
}
