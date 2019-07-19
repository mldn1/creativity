package com.yootk.admin.service;

import com.yootk.dubbo.vo.Orders;
import com.yootk.dubbo.vo.PayState;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface IOrdersTransferService {

    public List<Orders> listByState(Integer state) ;

    public PayState list() ;

    //订单查询
    public Map<String,Object> orderMap(
            Orders orders, Date sdate, Date edate, String gid,String phone,String column_name, String keyword_name, Long currentPage, Integer lineSize);

    //获取渠道名称
    public Map<Integer,String> channelName() ;

    //订单进入预加载
    public Map<String,Object> orderPre() ;

    //订单编辑预加载回显
    public Map<String,Object> preEdit(String oid) ;
}
