package com.yootk.mall.service.impl;
import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.mall.IOrderService;
import com.yootk.dubbo.vo.Orders;
import com.yootk.mall.service.IOrderTransferService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OrderServiceImpl  implements IOrderTransferService {
    @Reference
    private IOrderService orderService ;

    /**
     * 整合订单相关表，将整合之后的数据以Map的形式反馈给前台
     *涉及的表有：订单表、商品表、用户表、库存表
     * @return
     */
    @Override
    public Map<String, Object> handleOrder() {
        List<Orders>  ordersList = new ArrayList<>() ;
        Map<String,Object> map = null ;
        Map<String,Object> parmaMap = new HashMap<>() ;
        try {
            map = this.orderService.List(parmaMap) ;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
