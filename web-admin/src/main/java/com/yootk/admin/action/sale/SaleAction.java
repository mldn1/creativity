package com.yootk.admin.action.sale;

import com.yootk.admin.service.IOrdersTransferService;
import com.yootk.admin.util.PageUtil;
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

    @GetMapping("chat_list")
    public ModelAndView chatList() {
        ModelAndView mav = new ModelAndView("front/sale/chat_list") ;
        return mav ;
   }

   //首页进入订单页的列表加载
    @GetMapping("order_list")
    public ModelAndView orderList() {
        System.out.println("saleAction进入测试");
        ModelAndView mav = new ModelAndView("front/sale/order_list") ;
        PageUtil pu = new PageUtil("pages/front/sale/order_list.action");
        Map<String, Object> map = new HashMap<>();
        map = this.ordersService.orderPre(pu.getCurrentPage(),pu.getLineSize()) ;
        map.put("allOrdersGoodsName",this.ordersService.listOGoodsName()) ; //将订单商品加入map集合
        Long count = (Long)map.get("allRecorders") ;
        //不传数据，查询全部

        mav.addAllObjects(map) ;
        mav.addObject("start",(pu.getCurrentPage()-1)*pu.getLineSize()) ;
        mav.addObject("lineSize",pu.getLineSize()) ;  //默认为每页
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
