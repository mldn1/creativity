package com.yootk.mall.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.yootk.dubbo.service.mall.ICartService;
import com.yootk.dubbo.service.mall.IOrderService;
import com.yootk.dubbo.vo.mall.Order;
import com.yootk.dubbo.vo.mall.OrderGood;
import com.yootk.mall.dao.IGoodDAO;
import com.yootk.mall.dao.IOrderDAO;
import com.yootk.mall.dao.IOrderGoodDAO;
import com.yootk.server.util.RedisLock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.TimeUnit;

@Service
public class OrderServiceImpl implements IOrderService {
    @Autowired
    private IOrderDAO orderDAO;
    @Autowired
    private IOrderGoodDAO orderGoodDAO;
    @Autowired
    private ICartService cartService;
    @Autowired
    private RedisLock redisLock;
    @Override
    public Map<String, Object> list(Map<String,Object> paramMap) throws Exception {
        Map<String, Object> map = new HashMap<>() ;
//        // 通过当前的线程名称来模拟用户名
//        if (this.redisLock.lock(SERVICE_KEY,Thread.currentThread().getName(),10L, TimeUnit.SECONDS)) {
//            System.err.println( this.stringRedisTemplate.opsForValue().get(SERVICE_KEY));
//        }
//        this.redisLock.unlock(SERVICE_KEY,Thread.currentThread().getName());
        //System.err.println(this.orderDAO.findAllCondition(paramMap));
        List<Order> orderList= this.orderDAO.findAllCondition(paramMap) ;
        List<OrderGood> orderGoodList= new ArrayList<OrderGood>();
        for(Order order:orderList){
            orderGoodList.addAll(this.orderGoodDAO.findByOid(order.oid));
        }
        map.put("orderGoodList",orderGoodList) ;
        map.put("orderList",orderList) ;
        return map;
    }

    @Override
    public String add(String userid,String goodsIds, String addressId, String logistics, String allprice, String endprice, String fare,String payway) throws Exception {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        String newDate = sdf.format(new Date());
        String result = "";
        Random random = new Random();
        for (int i = 0; i < 3; i++) {
            result += random.nextInt(10);
        }
        String oid =  newDate+result ;
        Order order = new Order() ;
        order.setOid(oid);
        order.setAddress(addressId);
        order.setAllprice(Double.valueOf(allprice));
        order.setEndprice(Double.valueOf(endprice));
        order.setFare(Double.valueOf(fare));
        order.setPayid(1D);
        order.setPayment(payway.equalsIgnoreCase("alipay")?2:1);
        order.setPaystate(1);
        order.setPaydate(new Date());
        order.setCreatedate(new Date());
        Map<String,String> map = new HashMap<>() ;
        if(this.orderDAO.doCreate(order)){//订单创建成功，接着创建订单商品关联表
            String[] ids = goodsIds.split(";");
            for (String id :ids){
                //检查商品库存是否满足，如果为否，直接返回false
                //this.stringRedisTemplate.opsForHash().get("cart",userid,id);
                map = this.cartService.get("cart",userid,id);
                OrderGood orderGood = new OrderGood();
                orderGood.setOid(oid);
                orderGood.setGid(id);
                orderGood.setCount(map.get("count"));
                orderGood.setPrice(Double.valueOf(map.get("price")));
                orderGood.setGoodsname(map.get("goodsName"));
                orderGoodDAO.doCreate(orderGood);
            }
            return oid ;
        }
        return "" ;
    }

    @Override
    public Map<String,Object> get(String oid) throws Exception {
        Map<String,Object> map = new HashMap<>();
       // System.out.println(this.orderDAO.findByOid(oid));
        System.err.println(this.orderGoodDAO.findByOid(oid));
        map.put("order",this.orderDAO.findByOid(oid));
        map.put("orderGoodList",this.orderGoodDAO.findByOid(oid));
        return map;
    }
}
