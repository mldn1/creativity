package com.yootk.dubbo.service;

import com.sun.org.apache.xpath.internal.operations.Or;
import com.yootk.dubbo.vo.Orders;
import com.yootk.dubbo.vo.Orders_address;
import com.yootk.dubbo.vo.PayState;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface IOrdersService {

    /**
     * 根据订单状态查询 。（测试）
     * @param state
     * @return
     */
    public List<Orders> listByState(Integer state) ;


    /**
     * 查询支付状态的名称
     * @return
     */
    public PayState list() ;

    /**
     * 查询订单信息列表分页
     * @param orders
     * @param sdate
     * @param edate
     * @param column_name
     * @param keyword_name
     * @param currentPage
     * @param lineSize
     * @return
     */
    public Map<String,Object> orderList(Orders orders,Date sdate,Date edate,String gid,String phone,String column_name,String keyword_name,Long currentPage,Integer lineSize) ;

    /**
     * 查询订单渠道名称
     * @return
     */
    /*public Map<Integer,String> orderChannel() ;*/

    /**
     * 订单加载
     * @return
     */
    public Map<String,Object> getAllOrders(Long currentPage,Integer lineSize) ;

    /**
     * 订单编辑回显操作
     * @param oid
     * @return
     */
    public Map<String,Object> preEditOrder(String oid) ;

    /**
     * 订单编辑
     * @param orders
     * @return
     */
    public boolean editOrder(Orders orders) ;
}
