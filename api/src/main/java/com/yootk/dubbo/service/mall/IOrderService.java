package com.yootk.dubbo.service.mall;

import java.util.Map;

public interface IOrderService {

    /**
     *
     * @param map
     * @return
     * @throws Exception
     * key=order       value=订单集合
     * key=allCount    value=
     */
    public Map<String,Object> List(Map<String,Object> map) throws Exception ;

}
