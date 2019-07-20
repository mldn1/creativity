package com.yootk.authz.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.authz.dao.IGoods_stateDAO;
import com.yootk.dubbo.service.IGoods_stateService;
import com.yootk.dubbo.vo.Goods_state;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

@Service
public class Goods_stateServiceImpl implements IGoods_stateService {
    @Autowired
    private IGoods_stateDAO goods_stateDAO;
    @Override
    public List<Goods_state> list() {
        List<Goods_state> all = this.goods_stateDAO.findAll();
        return all;
    }
}
