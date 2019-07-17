package com.yootk.mall.action;

import com.yootk.mall.service.IOrderTransferService;
import com.yootk.server.util.RedisLock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.concurrent.TimeUnit;

@Controller
@RequestMapping("/pages/front/order/")
public class OrderAction {
    @Autowired
    IOrderTransferService orderTransferService;
    @Autowired
    private RedisLock redisLock;

    @Autowired
    private RedisTemplate<String, String> stringRedisTemplate;
    @RequestMapping("order_details")
    public ModelAndView orderDetails() throws Exception {
        ModelAndView mav = new ModelAndView("front/order/order_details") ;

        String SERVICE_KEY = "money-service" ;

        // 通过当前的线程名称来模拟用户名
        if (this.redisLock.lock(SERVICE_KEY,Thread.currentThread().getName(),10L,TimeUnit.SECONDS)) {
            System.err.println( this.stringRedisTemplate.opsForValue().get(SERVICE_KEY));
        }
        this.redisLock.unlock(SERVICE_KEY,Thread.currentThread().getName());
        //System.out.println(this.orderTransferService.handleOrder());
        return mav ;
    }
    @RequestMapping("order_status")
    public ModelAndView orderStatus() throws Exception {
        ModelAndView mav = new ModelAndView("front/order/order_status") ;
        return mav ;
    }
    @RequestMapping("order_coupon")
    public ModelAndView orderCoupon() throws Exception {
        ModelAndView mav = new ModelAndView("front/order/order_coupon") ;
        return mav ;
    }
}
