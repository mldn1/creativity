package com.yootk.admin.action.sale;

import com.yootk.admin.service.IOrdersTransferService;
import com.yootk.dubbo.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.Map;

@Controller // 创建一个控制器
@RequestMapping("/pages/front/sale/*")
public class SaleAction  {

    @Autowired
    private IOrdersTransferService ordersService ;

    @GetMapping("chat_list")
    public ModelAndView chatList() {
        ModelAndView mav = new ModelAndView("front/sale/chat_list") ;
        return mav ;
   }

    @GetMapping("order_list")
    public ModelAndView orderList() {
        ModelAndView mav = new ModelAndView("front/sale/order_list") ;
        //不传数据，查询全部
        mav.addAllObjects(this.ordersService.orderPre()) ;
        return mav ;
    }



    @GetMapping("Return_list")
    public ModelAndView ReturnList() {
        ModelAndView mav = new ModelAndView("front/sale/Return_list") ;
        return mav ;
    }

    @GetMapping("FAQ_list")
    public ModelAndView FAQList() {
        ModelAndView mav = new ModelAndView("front/sale/FAQ_list") ;
        return mav ;
    }

    @GetMapping("express_list")
    public ModelAndView expressList() {
        ModelAndView mav = new ModelAndView("front/sale/express_list") ;
        return mav ;
    }




}
