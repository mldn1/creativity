package com.yootk.admin.service.impl;


import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.admin.dao.ICategorysDAO;
import com.yootk.dubbo.service.ICategorysService;
import com.yootk.dubbo.vo.Categorys;
import org.springframework.beans.factory.annotation.Autowired;


import java.util.*;

@Service
public class CategorysServiceImpl implements ICategorysService {
    @Autowired
    private ICategorysDAO categorysDAO ;
    @Override
    public List<Categorys> listByGrade(Integer grade) {
        List<Categorys> list = this.categorysDAO.findByGrade(grade) ;
        return list ;
    }

    @Override
    public Map<Categorys, List<Categorys>> listAccordingToParent() {
        Map<Categorys, List<Categorys>> map = new HashMap<>() ;
        List<Categorys> list = this.categorysDAO.findByGrade(1) ;//查询全部一级类
        Iterator<Categorys> iterator = list.iterator() ;
        while (iterator.hasNext()){
            Categorys category = iterator.next() ;
            List<Long> cids = this.categorysDAO.findIdByParent(category.getCid()) ;//获取一级类下的全部二级子类的id
            Iterator<Long> cid = cids.iterator() ;
            List<Categorys> sons = new ArrayList<>() ;
            while (cid.hasNext()){
                sons.add(this.categorysDAO.findById(cid.next())) ;//获取某一级类下的全部二级子类的VO对象
            }
            map.put(category,sons) ;
        }
        return map ;
    }

    @Override
    public Long preAdd() {
        return this.categorysDAO.findMaxId() + 1 ;
    }

    @Override
    public Boolean add(Categorys category,Long pcid){
        if (this.categorysDAO.findByTitle(category.getTitle()) != null){
            return false ;
        }
        if (this.categorysDAO.doCreate(category) > 0){
            if (pcid != 0L) {
                return this.categorysDAO.doCreateRelationship(category.getCid(), pcid) > 0 ;
            }
            return true ;
        }
        return false ;
    }

    @Override
    public Categorys getCategory(Long cid) {
        return this.categorysDAO.findById(cid);
    }

    @Override
    public Categorys getParent(Long scid) {
        Long pcid = 0L ;
        pcid = this.categorysDAO.findParentId(scid) ;
        if (pcid == null||pcid==0){
            return null ;
        }
        return this.categorysDAO.findById(pcid);
    }

    @Override
    public Boolean edit(Categorys category, Long pcid) {
        Categorys c = this.categorysDAO.findByTitle(category.getTitle()) ;
        if (c != null && c.getCid() != category.getCid()){
            return false ;
        }
        if (this.categorysDAO.doEdit(category) > 0){
            this.categorysDAO.doDeleteRelationship(category.getCid()) ;
            if (pcid != 0L) {
                return this.categorysDAO.doCreateRelationship(category.getCid(), pcid) > 0 ;
            }else{
                return true ;
            }
        }
        return false ;
    }

    @Override
    public Boolean delete(Long cid) {
        if (this.categorysDAO.doDeleteCategory(cid) > 0) {
            if (this.categorysDAO.findParentId(cid) != null) {
                return  this.categorysDAO.doDeleteRelationship(cid) > 0;
            }
            return true ;
        }
        return false;
    }
}
