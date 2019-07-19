package com.yootk.mall.action;

import com.yootk.mall.service.IOrderTransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.concurrent.TimeUnit;

@Controller
@RequestMapping("/pages/front/order/")
public class OrderAction {
    @Autowired
    IOrderTransferService orderTransferService;

    @RequestMapping("order_details")
    public ModelAndView orderDetails() throws Exception {
        ModelAndView mav = new ModelAndView("front/order/order_details") ;

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
