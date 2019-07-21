package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.IGoodService;
import com.yootk.dubbo.vo.mall.Good;
import com.yootk.mall.dao.IGoodDAO;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


@Service
public class GoodServiceImpl implements IGoodService {

    @Autowired
    private IGoodDAO goodDAO;

    @Override
    public List<Good> findShowGoodss() {
        return goodDAO.findShow();
    }

    @Override
    public Good findGoodsById(String gid) {
        return goodDAO.findById(gid);
    }

    @Override
    public List<Good> findCategoryGood(Long cid) {
        return goodDAO.findCategoryGood(cid);
    }

    @Override
    public List<Good> findSplitGood(String keyWord) {
        return goodDAO.findSplits("%" + keyWord + "%");
    }
}
