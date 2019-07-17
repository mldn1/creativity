package com.yootk.admin.service.impl;


import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.admin.dao.ICategoryDAO;
import com.yootk.dubbo.service.ICategoryService;
import com.yootk.dubbo.vo.Category;
import org.springframework.beans.factory.annotation.Autowired;


import java.util.*;

@Service
public class CategoryServiceImpl implements ICategoryService {
    @Autowired
    private ICategoryDAO categoryDAO ;
    @Override
    public List<Category> listByGrade(Integer grade) {
        List<Category> list = this.categoryDAO.findByGrade(grade) ;
        return list ;
    }

    @Override
    public Map<Category, List<Category>> listAccordingToParent() {
        Map<Category, List<Category>> map = new HashMap<>() ;
        List<Category> list = this.categoryDAO.findByGrade(1) ;//查询全部一级类
        Iterator<Category> iterator = list.iterator() ;
        while (iterator.hasNext()){
            Category category = iterator.next() ;
            List<Long> cids = this.categoryDAO.findIdByParent(category.getCid()) ;//获取一级类下的全部二级子类的id
            Iterator<Long> cid = cids.iterator() ;
            List<Category> sons = new ArrayList<>() ;
            while (cid.hasNext()){
                sons.add(this.categoryDAO.findById(cid.next())) ;//获取某一级类下的全部二级子类的VO对象
            }
            map.put(category,sons) ;
        }
        return map ;
    }

    @Override
    public Long preAdd() {
        return this.categoryDAO.findMaxId() + 1 ;
    }

    @Override
    public Boolean add(Category category,Long pcid){
        if (this.categoryDAO.findByTitle(category.getTitle()) != null){
            return false ;
        }
        if (this.categoryDAO.doCreate(category) > 0){
            if (pcid != 0L) {
                return this.categoryDAO.doCreateRelationship(category.getCid(), pcid) > 0 ;
            }
            return true ;
        }
        return false ;
    }

    @Override
    public Category getCategory(Long cid) {
        return this.categoryDAO.findById(cid);
    }

    @Override
    public Category getParent(Long scid) {
        Long cid = this.categoryDAO.findParentId(scid) ;
        return this.categoryDAO.findById(cid);
    }

    @Override
    public Boolean edit(Category category, Long pcid) {
        if (this.categoryDAO.findByTitle(category.getTitle()) != null){
            return false ;
        }
        if (this.categoryDAO.doEdit(category) > 0){
            if (pcid != 0L) {
                return this.categoryDAO.doEditRelationship(category.getCid(), pcid) > 0 ;
            }else{
                return this.categoryDAO.doDeleteRelationship(category.getCid()) > 0 ;
            }
        }
        return false ;
    }

    @Override
    public Boolean delete(Long cid) {
        if (this.categoryDAO.doDeleteCategory(cid) > 0) {
            if (this.categoryDAO.findParentId(cid) != null) {
                return  this.categoryDAO.doDeleteRelationship(cid) > 0;
            }
            return true ;
        }
        return false;
    }
}
