package com.yootk.mall.service.impl;
import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.mall.ICartService;
import com.yootk.dubbo.service.mall.IOrderService;
import com.yootk.dubbo.vo.mall.Order;
import com.yootk.mall.service.ICartTransferService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CartTransferServiceImpl implements ICartTransferService {
    @Reference
    private ICartService cartService ;
    /**
     * 整合购物车数据相关表，将整合之后的数据以Map的形式反馈给前台
     *涉及的表有：订单表、商品表、用户表、库存表
     * @return
     */
    @Override
    public List<Object>  handleCartList() {
        List<Object>  ordersList = new ArrayList<>() ;
        try {
            ordersList = this.cartService.list("cart","admin") ;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ordersList;
    }

    @Override
    public boolean handleGoodsNumAdjust(String goodsId,String num) {
        try {
            System.err.println("2、handleCartAdjust==============");
            this.cartService.edit("cart","admin",goodsId,Integer.valueOf(num),"") ;
        } catch (Exception e) {
            e.printStackTrace();
            return false ;
        }
        return false;
    }

    @Override
    public boolean handleGoodsRemove(String goodsId) {
        try {
            return   this.cartService.removeByIds(goodsId);
        } catch (Exception e) {
            e.printStackTrace();
            return false ;
        }
    }
}
