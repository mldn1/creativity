package com.yootk.admin.dao;

import com.yootk.dubbo.vo.Categorys;

import java.util.List;

public interface ICategorysDAO {
    public List<Categorys> findByGrade(Integer grade) ;//获取某一级的所有分类
    public List<Long> findIdByParent(Long pid) ;//获取某父类的所有子类的id
    public Categorys findById(Long cid) ;//根据id获得类信息
    public Categorys findByTitle(String title) ;
    public Long findMaxId();//获取当前最大id
    public Long doCreate(Categorys category) ;
    public Long doCreateRelationship(Long scid,Long pcid) ;
    public Long findParentId(Long scid) ;
    public Long doEdit(Categorys category) ;
    public Long doEditRelationship(Long scid,Long pcid) ;
    public Long doDeleteRelationship(Long scid);
    public Long doDeleteCategory(Long cid) ;
}
