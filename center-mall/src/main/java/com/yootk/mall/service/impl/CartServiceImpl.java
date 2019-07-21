package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.ICartService;
import com.yootk.dubbo.vo.mall.Good;
import com.yootk.mall.dao.IGoodDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.*;

@Service
public class CartServiceImpl implements ICartService {
    @Autowired
    private RedisTemplate<String, String> stringRedisTemplate;
    @Autowired
    private IGoodDAO goodDAO ;

    /**
     * 向Rides数据库中添加商品数据
     * 需保存的内容有商品，单价，数量
     */
    @Override
    public boolean add(String module, String userId, String goodsId, Integer num) throws Exception {
        Map<String,String> map = new HashMap<>() ;
        //1、获取当前用户
        String HashKey = module + "-" + userId ; //模块+用户名称
        //3、获取商品ID，商品、数量
        Good goods = goodDAO.findById(goodsId) ;
        //4、向Redis里面 添加HSet数据，Key =模块 + 用户名   value=
        map.put("goodsId",goodsId) ;
        map.put("goodsName",goods.getTitle()) ;
        map.put("goodsUrl",goods.getShowpicture()) ;
        map.put("count",String.valueOf(num)) ;
        Map<String,Object> mapGoods = new HashMap<>() ;
        mapGoods.put(goodsId,map);
        this.stringRedisTemplate.opsForHash().putAll(HashKey,mapGoods);
        return true;
    }

    /**
     *获取用户购物车指定商品相关信息
     */
    @Override
    public Map<String,String> get(String module, String userId, String goodsId) throws Exception {
        String hashKey = module + "-" + userId; //模块+用户名称 ; //模块+用户名称
        //2、通过商品ID获取商品最新单价
        Object obj = this.stringRedisTemplate.opsForHash().get(hashKey,goodsId) ;
        Map<String,String> map  = ( Map<String,String>)this.stringRedisTemplate.opsForHash().get(hashKey,goodsId) ;
        map.put("price",this.goodDAO.findById(goodsId).getSales().toString()) ;
        return  map ;
    }

    @Override
    public   List<Object> list(String module, String userId) throws Exception {
        //1、查询指定用户下的购物车商品列表，
        String hashKey =module + "-" + userId ; //模块+用户名称
        //2、遍历获取到的商品，从数据库里面查询最新的,商品价格
        //this.stringRedisTemplate.opsForHash().get
        //3、查询图片对应的显示地址
        //4、将数据转换为Map形式反馈到Action层

        Map<Object,Object> map = this.stringRedisTemplate.opsForHash().entries(hashKey) ; //商品列表

        List<Object> list = new ArrayList<>() ;
        //遍历商品列表
        Set<Map.Entry<Object,Object>> set = (Set<Map.Entry<Object,Object>> )(map.entrySet()) ;
        Iterator<Map.Entry<Object,Object>> iter = set.iterator() ;
        Map<String,String> temp = null ;
        int price= 0 ;
        int priceTotal= 0 ;
        while (iter.hasNext()) {
            Map.Entry<Object,Object> entry =  iter.next() ;
            temp  =(Map<String,String>)entry.getValue() ;
            price = this.goodDAO.findById(temp.get("goodsId")).getSales() ;
            priceTotal = price * Integer.valueOf(temp.get("count")) ;
            temp.put("price",String.valueOf(price)) ;
            temp.put("priceTotal",String.valueOf(priceTotal)) ;
            list.add(temp) ;
        }

//        Map<String,Object> oldMap = (Map<String,Object>)(this.stringRedisTemplate.opsForHash().entries(hashKey))  ;
//        Set<Map.Entry<String,String>> set = (Map.Entry<String,String>)oldMap.entrySet() ;
//        Iterator<Map.Entry<String,String>> iter = set.iterator() ;
//        while (iter.hasNext()) {
//            Map.Entry<String,String> entry = iter.next() ;
//            System.out.println("key = " + entry.getKey() + "、value = " + entry.getValue());
//        }
        return list;
    }
    /**
     * 编辑商品数量
     * @param
     * @return
     * @throws Exception
     *
     */
    @Override
    public boolean edit(String module, String userId, String goodsId, Integer num, String type) throws Exception {


        //编辑商品数量
        String hashKey = module+ "-" + userId  ; //模块+用户名称
        Object obj = this.stringRedisTemplate.opsForHash().get(hashKey,goodsId) ;
        System.err.println("3、----------------------");
        System.out.println(obj);
        Integer oldVal = Integer.valueOf(((Map<String,String>)obj).get("count")) ;
        System.err.println(oldVal);
        String result =  result = String.valueOf(num ); ;
//        if (type.equals("one")){
//            result = String.valueOf(oldVal+ num );
//        }else{
//            result = String.valueOf(num );
//        }
        ((Map<String,String>)obj).put("count",result );

        System.out.println(goodsId);
        System.out.println(result);
        System.out.println(obj);
        System.err.println("========================");
        this.stringRedisTemplate.opsForHash().put(hashKey,goodsId,obj);
        return true;
    }

    /**
     *从用户购物车删除指定商品信息
     */
    @Override
    public boolean removeByIds(String... ids) throws Exception {
        //通过商品ID删除，对应的购物车商品
        for(String id:ids){
            String hashKey = "cart" + "-" + "admin" ; //模块+用户名称
            //this.stringRedisTemplate.opsForHash().delete(HashKey) ;
            this.stringRedisTemplate.opsForHash().delete(hashKey,id) ;
        }
        return true;
    }

}
