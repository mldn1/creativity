package com.yootk.admin.service.impl;


import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.admin.dao.ICategoryDAO;
import com.yootk.dubbo.service.ICategoryService;
import com.yootk.dubbo.vo.Category;
import org.springframework.beans.factory.annotation.Autowired;


import java.util.ArrayList;
import java.util.List;

@Service
public class CategoryServiceImpl implements ICategoryService {
    @Autowired
    private ICategoryDAO categoryDAO ;
    @Override
    public List<Category> listByGrade(Integer grade) {
        List<Category> list = new ArrayList<>() ;
        System.out.println(categoryDAO);
        list = categoryDAO.findByGrade(grade) ;
        return list ;
    }
}
