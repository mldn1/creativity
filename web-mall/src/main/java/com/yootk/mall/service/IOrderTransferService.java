package com.yootk.mall.service;

import java.util.Map;

public interface IOrderTransferService {
    public Map<String,Object> list() ;
    public Map<String,Object> get(String oid ) ;
    public String add(String goodsIds, String addressId, String logistics, String allprice, String endprice, String fare,String payway) ;
}
