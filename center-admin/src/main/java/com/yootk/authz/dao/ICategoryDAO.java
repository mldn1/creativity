package com.yootk.authz.dao;

import com.yootk.dubbo.vo.Category;

import java.util.List;

public interface ICategoryDAO {
    public List<Category> findByGrade(Integer grade) ;//获取某一级的所有分类
    public List<Long> findIdByParent(Long pid) ;//获取某父类的所有子类的id
    public Category findById(Long cid) ;//根据id获得类信息
    public Category findByTitle(String title) ;
    public Long findMaxId();//获取当前最大id
    public Long doCreate(Category category) ;
    public Long doCreateRelationship(Long scid,Long pcid) ;
    public Long findParentId(Long scid) ;
    public Long doEdit(Category category) ;
    public Long doEditRelationship(Long scid,Long pcid) ;
    public Long doDeleteRelationship(Long scid);
    public Long doDeleteCategory(Long cid) ;
}
