package com.yootk.authz.dao;

import com.yootk.dubbo.vo.Orders_address;

import java.util.List;
import java.util.Map;

public interface IOrders_addressDAO {
    /**
     * 根据订单编号查询订单地址表，然后根据传入的姓名或手机再做进一步查询oid
     * @param
     * od_param
     *      1、key = coloumn_name，value = 要查询的列
     *      2、key = keyword,value = 要查询的关键字
     *      3、key = column_phone,value = 要查询的列
     *      4、key = keyword,value = 要查询的关键字
     *      5、key = oidList,value = oid集合
     * @return
     */
    public List<Orders_address> findOrders_Address(Map<String,Object> od_param) ;

    /**
     * 接口测试
     * @param id
     * @return
     */
    public List<Orders_address> getCount(String oid) ;
}
