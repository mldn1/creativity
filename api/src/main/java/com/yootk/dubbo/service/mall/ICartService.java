package com.yootk.dubbo.service.mall;

import com.yootk.dubbo.vo.mall.Cart;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface ICartService {

    public boolean add(String module , String userId ,String goodsId,Integer num) throws Exception ;
    public Map<String,String> get(String module, String userId, String goodsId) throws Exception ;
    /**
     *
     * @param module   操作模块名称
     * @param userId   当前用户ID
     * @param goodsId  当前商品ID
     * @param num      设置商品变更数量
     * @param type     递增、递减 或 覆盖当前数量
     * @return
     * @throws Exception
     */
    public boolean edit(String module , String userId ,String goodsId,Integer num ,String type) throws Exception ;
    public boolean removeByIds(String ... ids) throws Exception ;
    public List<Object> list(String module, String userId) throws Exception ;
}
