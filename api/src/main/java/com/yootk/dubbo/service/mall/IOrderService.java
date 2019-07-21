package com.yootk.dubbo.service.mall;

import com.yootk.dubbo.vo.mall.Order;

import java.util.Map;

public interface IOrderService {

    /**
     *
     * @param
     * @return
     * @throws Exception
     * key=order       value=订单集合
     * key=allCount    value=
     */
    public Map<String,Object> list(Map<String,Object> paramMap) throws Exception ;
    public String add(String userid,String goodsIds,String addressId,String logistics,String allprice,String endprice,String fare,String payway) throws Exception ;
    public Map<String,Object>  get(String oid) throws Exception ;
}
