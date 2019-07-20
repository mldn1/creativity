package com.yootk.authz.action.sale;

import com.yootk.authz.service.IOrdersTransferService;
import com.yootk.authz.util.web.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller // 创建一个控制器
@RequestMapping("/pages/front/sale/*")
public class SaleAction  {

    @Autowired
    private IOrdersTransferService ordersService ;

    private static PageUtil pu ;

    @GetMapping("chat_list")
    public ModelAndView chatList() {
        ModelAndView mav = new ModelAndView("front/sale/chat_list") ;
        return mav ;
   }

    @GetMapping("order_list")
    public ModelAndView orderList() {
        Map<String, Object> map = new HashMap<>();
        map = this.ordersService.orderPre() ;
        Long count = (Long)map.get("allRecorders") ;
        //不传数据，查询全部
        ModelAndView mav = new ModelAndView("front/sale/order_list") ;
        mav.addAllObjects(map) ;
        mav.addObject("start",0) ;    //默认从第一页开始。
        mav.addObject("lineSize",2) ;  //默认为每页2
        mav.addObject("allRecorders",count) ;
        System.err.println("order数据"+map+"数据统计"+count);

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
