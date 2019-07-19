package com.yootk.dubbo.service;

import com.yootk.dubbo.vo.Category;

import java.util.List;
import java.util.Map;

public interface ICategoryService {
    public List<Category> listByGrade(Integer grade) ; //查询所有一级分类
    public Map<Category,List<Category>> listAccordingToParent() ;//查询所有一级类以及对应的子类的名称
    public Long preAdd() ;//增加分类操作前，获取要显示的id
    public Boolean add(Category category,Long pcid) ;
    public Category getCategory(Long cid) ;
    public Category getParent(Long scid) ;
    public Boolean edit(Category category,Long pcid) ;
    public Boolean delete(Long cid) ;
}
