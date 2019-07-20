package com.yootk.authz.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.authz.service.IOrdersTransferService;
import com.yootk.dubbo.service.IOrdersService;
import com.yootk.dubbo.vo.Orders;
import com.yootk.dubbo.vo.PayState;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class OrdersServiceImpl implements IOrdersTransferService {
    @Reference
    IOrdersService ordersService ;


    @Override
    public Map<String,Object> orderMap(
            Orders orders, Date sdate, Date edate, String gid,String phone,String column_name, String keyword_name, Long currentPage, Integer lineSize){
        /*orders.setOid("1");
        orders.setState(1);
        orders.setChannel(1);
        orders.setPayment(1);
        orders.setPaystate(1);
        orders.setCreatedate(new Date());
        String uddr = "" ;
        phone = uddr ;
        keyword_name = "%"+uddr+"%" ;*/
        Map<String,Object> orderMap = this.ordersService.orderList(
                orders,sdate,edate,gid,phone, column_name,keyword_name,currentPage,lineSize
        ) ;
        System.err.println("数据测试*************"+orderMap);
        return orderMap ;
    }

    @Override
    public List<Orders> listByState(Integer state) {
        return null;
    }

    @Override
    public PayState list() {
        return null;
    }

    /*@Override
    public Map<Integer, String> channelName() {
        Map<Integer,String> channelNameMap = new HashMap<>() ;
        channelNameMap = this.ordersService.orderChannel() ;
        System.out.println("渠道名称测试"+channelNameMap);
        return channelNameMap;
    }*/

    //首页进入订单页时的列表加载
    @Override
    public Map<String, Object> orderPre() {
        Map<String,Object> map = new HashMap<>() ;
        map = this.ordersService.getAllOrders() ;
        return map;
    }

    //订单编辑的数据回显
    @Override
    public Map<String, Object> preEdit(String oid) {
        Map<String,Object> map = new HashMap<>() ;
        map = this.ordersService.preEditOrder(oid) ;
        System.err.println("消费端"+map);
        return map;
    }

    @Override
    public boolean editOrder(Orders orders) {

        return this.ordersService.editOrder(orders);
    }
}
