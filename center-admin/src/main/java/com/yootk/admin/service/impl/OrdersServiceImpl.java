package com.yootk.admin.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.admin.dao.IOrdersDAO;
import com.yootk.dubbo.service.IOrdersService;
import com.yootk.dubbo.vo.*;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.*;

@Service
public class OrdersServiceImpl implements IOrdersService {
    @Autowired
    private IOrdersDAO ordersDAO ;

    public static Map<String,Object> orderMap = new HashMap<>() ;   //保存订单查询结果
    public static List<Orders> orderList = new ArrayList<>() ;                         //保存订单查询的list集合


    @Override
    public List<Orders> listByState(Integer state) {
        List<Orders> list = new ArrayList<>() ;
        list = this.ordersDAO.findAllByState(state) ;
        return list;
    }

    @Override
    public PayState list() {

        return null;
    }

    //进入订单页时的列表加载,和订单查询*************************
    @Override
    public Map<String, Object> orderList(Orders orders, Date sdate, Date edate, String gid,String phone,String column_name, String keyword_name, Long currentPage, Integer lineSize) {


        List<Orders> OrderGoodsOid = new ArrayList<>() ;
        Set<String> tempOidSet = new HashSet<>() ;
        if(gid != null && gid != ""){   //如果商品id不为空，那就先查询  订单商品表
            Map<String,Object> paramGid = new HashMap<>() ;
            paramGid.put("gid",gid) ;
            OrderGoodsOid = this.ordersDAO.findOrdersGoods(paramGid) ;

            for (Orders s : OrderGoodsOid) {
                tempOidSet.add(s.getOid()) ;
            }
        }
        List<String> oidList = new ArrayList<>() ;
        for (String  s : tempOidSet) {
            oidList.add(s) ;      //用商品id查询得到的oid集合，转换为list集合
        }
        System.out.println("第一次查询的oid集合查看"+oidList+";");
        //第二次，订单信息查询
        Map<String,Object> paramOrder = new HashMap<>() ;
        paramOrder.put("orders",orders) ;
        System.err.println("orders对象***************"+orders);
        paramOrder.put("sdate",sdate) ;
        paramOrder.put("edate",edate) ;
        paramOrder.put("phone",phone) ;
        paramOrder.put("column_name",column_name);
        paramOrder.put("keyword_name",keyword_name) ;
        paramOrder.put("start",(currentPage-1)*lineSize) ;
        paramOrder.put("lineSie",lineSize) ;
        paramOrder.put("oidList",oidList) ;

        System.err.println("参数"+paramOrder);                    //订单查询分页的最终条件
        orderList  = this.ordersDAO.findSplitOrders(paramOrder) ;    //获取所有订单数据
        orderMap.put("allOrders",orderList) ;
        //统计数据
        Long allRecorders = this.ordersDAO.getCountByOidList(paramOrder) ;
        System.err.println("数据条数"+allRecorders);
        orderMap.put("allRecorders",allRecorders) ;

        System.err.println("数据输出"+orderMap);

        return orderMap;
    }


    /**
     * 渠道名称查询
     * @return
     */
    @Override
    public Map<Integer,String> orderChannel() {    //不需要参数
        Map<Integer,String> channelMap = new HashMap<>() ;
        List<Integer> channelId = new ArrayList<>() ;
        for(Orders s : orderList){
            channelId.add(s.getChannel()) ;
        }
        System.out.println("渠道id集合"+channelId);
        List<Channel> tempList = new ArrayList<>() ;

        if(channelId != null) {
            tempList = this.ordersDAO.getChannelName(channelId);
            System.out.println("渠道名称集合测试" + tempList);
            for (Channel s : tempList) {
                channelMap.put(s.getChannel(), s.getTitle());
            }
            System.out.println("返回的渠道名称" + channelMap);
        }
            return channelMap ;
    }

    //订单页面加载
    @Override
    public Map<String,Object> getAllOrders() {
        Map<String,Object> map = new HashMap<>() ;
        map.put("start",0) ;    //从第一条数据开始
        map.put("lineSize",20); //默认就设置为每页20条
        List<Orders> list = new ArrayList<>() ;
        list = this.ordersDAO.findAllOrders(map) ;
        Long allCounts = this.ordersDAO.getAllCount() ;
        map.put("allOrders",list) ;
        map.put("allRecorders",allCounts) ;
        System.out.println("订单进入时的分页数据"+map);
        return map ;
    }

    //订单编辑页面数据回显
    @Override
    public Map<String, Object> preEditOrder(String oid) {
        Map<String,Object> map = new HashMap<>() ;
        //查询订单基本信息
        map.put("preEditOrder",this.ordersDAO.findOrderByOid(oid)) ;
        System.out.println("生产端回显"+map);
        //查询订单类型
        List<Order_type> orderType = new ArrayList<>() ;
        orderType = this.ordersDAO.findOrderType() ;
        System.out.println("订单类型"+orderType);
        map.put("allOrderType",orderType) ;
        //查询发票信息
        List<Invoice> invoice = new ArrayList<>() ;
        invoice = this.ordersDAO.findInvoice(oid) ;
        System.out.println("发票信息"+invoice);
        map.put("allInvoice",invoice) ;
        //查询发票状态
        List<InvoiceState> invoiceStates = new ArrayList<>() ;
        invoiceStates = this.ordersDAO.findInvoiceState() ;
        map.put("allInvoiceState",invoiceStates) ;
        System.out.println("订单状态"+invoiceStates);
        return map;
    }
}