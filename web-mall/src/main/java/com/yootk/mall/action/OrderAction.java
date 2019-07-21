package com.yootk.mall.action;

import com.yootk.dubbo.vo.mall.Order;
import com.yootk.mall.service.IOrderTransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;
import java.util.concurrent.TimeUnit;

@Controller
@RequestMapping("/pages/front/order/")
public class OrderAction {
    @Autowired
    IOrderTransferService orderTransferService;

    @RequestMapping("order_details")
    public ModelAndView orderDetails(String orderId) throws Exception {
        ModelAndView mav = new ModelAndView("front/order/order_details") ;

        Map<String,Object> map = this.orderTransferService.get(orderId) ;
        System.err.println(map.get("orderList"));
        System.err.println(map.get("orderGoodList"));
        //System.out.println(this.orderTransferService.handleOrder());

        mav.addObject("orderList",map.get("orderList"));
        mav.addObject("orderGoodList",map.get("orderGoodList"));
        return mav ;
    }
    @RequestMapping("order_status")
    public ModelAndView orderStatus() throws Exception {
        ModelAndView mav = new ModelAndView("front/order/order_status") ;
        System.err.println(this.orderTransferService.list().get("orderList"));
        System.err.println("====================");
        System.err.println(this.orderTransferService.list().get("orderGoodList"));
        mav.addObject("orderList",this.orderTransferService.list().get("orderList")) ;
        mav.addObject("orderGoodList",this.orderTransferService.list().get("orderGoodList")) ;
        return mav ;
    }
    @RequestMapping("order_coupon")
    public ModelAndView orderCoupon() throws Exception {
        ModelAndView mav = new ModelAndView("front/order/order_coupon") ;
        return mav ;
    }
}
