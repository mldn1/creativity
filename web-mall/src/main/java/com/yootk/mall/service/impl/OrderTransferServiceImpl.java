package com.yootk.mall.service.impl;
import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.mall.IOrderService;
import com.yootk.dubbo.vo.mall.Order;
import com.yootk.dubbo.vo.mall.OrderGood;
import com.yootk.mall.service.IOrderTransferService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OrderTransferServiceImpl  implements IOrderTransferService {
    @Reference
    private IOrderService orderService ;

    /**
     * 整合订单相关表，将整合之后的数据以Map的形式反馈给前台
     *涉及的表有：订单表、商品表、用户表、库存表
     * @return
     */
    @Override
    public Map<String, Object> list() {
        List<Order>  ordersList = new ArrayList<>() ;
        Map<String,Object> paramMap = new HashMap<>() ;
        paramMap.put("mid","admin");
        Map<String,Object> map = new HashMap<>();
        try {
            map = this.orderService.list(paramMap) ;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

    @Override
    public String add(String goodsIds, String addressId, String logistics, String allprice, String endprice, String fare,String payway) {
        try {
            //获取当前用户ID，唯一标识
            String userid="admin" ;
            String oid = this.orderService.add(userid,goodsIds,addressId,logistics,allprice,endprice,fare,payway);
            return oid ;
        } catch (Exception e) {
            e.printStackTrace();
            return "" ;
        }
    }
    @Override
    public Map<String,Object> get(String oid ){
        Map<String,Object> map = new HashMap<>() ;
        try {
            map =  this.orderService.get(oid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map ;
    }
}
