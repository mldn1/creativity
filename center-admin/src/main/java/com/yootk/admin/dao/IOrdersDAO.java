package com.yootk.admin.dao;

import com.yootk.dubbo.vo.*;


import java.util.List;
import java.util.Map;

public interface IOrdersDAO {

    /**
     * 根据若干条件查询订单信息
     * @param params
     * 1、key = column_oid ,value = 查询列，订单号（根据订单再去其他表查询收件人信息和商品信息）
     * 2、key = keyword,value = 要查询的关键字
     * 2、key = mid，value = 下单用户（用户账户，不是收件人。这里前台并未要求，只是写好备用）
     * 2、key = keyword_oid,value = 模糊查询的关键字
     * 3、key = state ,value = 订单状态
     * 4、key = channel,value = 订单渠道
     * 5、key = paystate,value = 支付状态
     * 6、key = startTime,value = 查询时间范围_开始
     * 7、key = endTime,value = 查询时间范围_结束
     * 8、key = lineSize
     * 9、key = pageSize
     * @return 对应编号的订单信息集合
     */
    public List<Orders> findSplitByOid(Map<String,Object> params) ;

    /**
     * 根据订单状态查询所有订单信息（测试）
     * @param state 订单状态编号
     * @return
     */
    public List<Orders> findAllByState(Integer state) ;

    /**
     * 根据订单编号查询订单地址表，然后根据传入的姓名或手机再做进一步查询oid
     * @param
     * od_param
     *      1、key = coloumn_name，value = 要查询的列
     *      2、key = keyword_name,value = 要查询的关键字
     *      3、key = column_phone,value = 要查询的列
     *      4、key = keyword_phone,value = 要查询的关键字
     *      5、key = oidList,value = oid集合
     * @return
     */
    public List<Orders> findOrdersAddress(Map<String,Object> od_param) ;



    /**
     * 根据订单编号集合做查询
     * @param oidList
     * @return
     */
    public List<Orders> findSplitByOidList(Map<String,Object> oidList) ;

    /**
     * 根据商品编号查询商品名称，并在业务层替换掉最后整合的Map集合中的商品id
     * @param gid
     * @return
     */
    public List<Goods> findGoodsNameByGid(String gid) ;

    public Long getCountByOidList1(List<String> oidList)  ;

    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++更改了数据库，重新编写尽量在一张表查询，避免复杂逻辑
    /**
     *
     * @param params    查询条件，业务层打包好成Map集合去做查询
     * @return 返回订单信息list集合
     */
    public List<Orders> findSplitOrders(Map<String,Object> params) ;

    /**
     * 根据gid查询订单编号。有gid的情况下，先查这个表
     * @param paramGid
     * @return
     */
    public List<Orders> findOrdersGoods(Map<String,Object> paramGid) ;

    /**
     * 查询订单信息的分页
     * @param
     * @return
     */
    public Long getCountByOidList(Map<String,Object> paramGid)  ;

    /**
     * 根据订单渠道id集合查询渠道名称
     * @param cidList
     * @return
     */
    public List<Channel> getChannelName(List<Integer> cidList) ;

    /**
     * 订单进入加载。查询  统计
     * @return
     */
    public List<Orders> findAllOrders(Map<String,Object> param) ;

    public Long getAllCount() ;

    /**
     * 订单编辑页面回显数据
     * @param oid
     * @return
     */
    public Orders findOrderByOid(String oid) ;

    /**
     * 查询所有订单类型名称
     * @return
     */
    public List<Order_type> findOrderType() ;

    /**
     *查询所有发票信息
     * @return
     */
    public List<Invoice> findInvoice(String oid) ;

    /**
     * 查询所有发票状态
     * @return
     */
    public List<InvoiceState> findInvoiceState() ;
}
