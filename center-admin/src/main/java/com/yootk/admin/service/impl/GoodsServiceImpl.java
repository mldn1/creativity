package com.yootk.admin.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.admin.dao.IGoodsDAO;
import com.yootk.dubbo.service.IGoodsService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.Map;

@Service
public class GoodsServiceImpl implements IGoodsService {
    @Autowired
    private IGoodsDAO goodsDAO;
    @Override
    public Map<String, Object> list(String column, String keyword, Long start, int linesize) {
        Map<String,Object> result = new HashMap<>();
        Map<String,Object> params = new HashMap<>();
        params.put("column",column);
        params.put("keyword",keyword);
        params.put("start",start);
        params.put("linesize",linesize);
        result.put("allGoods",this.goodsDAO.findSplit(params));
        result.put("allRecorders",this.goodsDAO.getAllCount(params));
        return result;
    }
}
