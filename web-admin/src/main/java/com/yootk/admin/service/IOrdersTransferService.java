package com.yootk.admin.service;

import com.yootk.dubbo.vo.Orders;
import com.yootk.dubbo.vo.Orders_goods;
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
  /*  public Map<Integer,String> channelName() ;*/

    //订单进入预加载列表
    public Map<String,Object> orderPre(Long currentPage,Integer lineSize) ;

    //订单编辑预加载回显
    public Map<String,Object> preEdit(String oid) ;

    //订单编辑
    public boolean editOrder(Orders orders) ;

    //订单商品查询
    public List<Orders_goods> listOGoodsName() ;
}
