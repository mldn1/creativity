package com.yootk.admin.service;

import com.yootk.admin.vo.Catogery;

import java.util.List;

public interface ICatogeryService {
    public List<Catogery> oneGradeCatogery(Integer grade) ; //查询所有一级分类
}
