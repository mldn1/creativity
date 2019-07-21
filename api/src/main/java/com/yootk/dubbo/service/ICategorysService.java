package com.yootk.dubbo.service;

import com.yootk.dubbo.vo.Categorys;

import java.util.List;
import java.util.Map;

public interface ICategorysService {
    public List<Categorys> listByGrade(Integer grade) ; //查询所有一级分类
    public Map<Categorys,List<Categorys>> listAccordingToParent() ;//查询所有一级类以及对应的子类的名称
    public Long preAdd() ;//增加分类操作前，获取要显示的id
    public Boolean add(Categorys category,Long pcid) ;
    public Categorys getCategory(Long cid) ;
    public Categorys getParent(Long scid) ;
    public Boolean edit(Categorys category,Long pcid) ;
    public Boolean delete(Long cid) ;
}
