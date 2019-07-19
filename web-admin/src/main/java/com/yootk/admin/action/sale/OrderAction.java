package com.yootk.admin.action.sale;

import com.yootk.admin.service.IOrdersTransferService;
import com.yootk.dubbo.vo.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

@Controller // 创建一个控制器
@RequestMapping("/pages/front/sale/*")
public class OrderAction {

    @Autowired
    private IOrdersTransferService  ordersService ;

    //跳转订单修改页面(回显数据)
    @RequestMapping("preEditOrder")
    public ModelAndView preEditOrder(String oid) {
        System.err.println("获取的"+oid);
        ModelAndView mav = new ModelAndView("front/sale/order_modify") ;
        try{
            System.out.println("******************");
            Map<String,Object> map = this.ordersService.preEdit(oid) ;
            System.err.println("map集合"+map);
            mav.addAllObjects(map) ;
            System.err.println("mav集合"+mav);
        }catch (Exception e){
            e.printStackTrace();
        }
        return mav ;
    }

    @GetMapping("order_edit")
    public ModelAndView editOrder() {
        ModelAndView mav = new ModelAndView("front/sale/order_list") ;
        return mav ;
    }

    //订单列表查询
    @PostMapping("order_list_search")
    public ModelAndView order_list_search(Orders orders,String gid,String uaddr,String sdate,String edate) throws ParseException {
        System.err.println("前台传递的所有参数********************"+"\n"+
                orders+";"+gid+","+uaddr+","+sdate+","+edate);
        System.err.println("**********************************************");
        ModelAndView mav = new ModelAndView("front/sale/order_list") ;
        //处理uaddr
        String phone = uaddr ;
        String keyword_name = "%"+uaddr+"%" ;
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd") ;
        //Date startDate = dateFormat.parse(sdate) ;
        //Date endDate = dateFormat.parse(edate) ;
        System.err.println("处理后的所有参数********************"+"\n"+
                orders+","+gid+","+phone+","+keyword_name+","+sdate+","+edate);
        try{
            System.out.println("******************");
            Map<String,Object> map = this.ordersService.orderMap(
                    orders,null,null,gid, phone,"name",keyword_name,1L,2) ;
            map.put("allChannel",this.ordersService.channelName()) ;
            System.err.println("map集合"+map);
            mav.addAllObjects(map) ;
            System.err.println("mav集合"+mav);
        }catch (Exception e){
            e.printStackTrace();
        }
        return mav ;
    }

    //测试用
    /*@PostMapping("order_list_search")
    public ModelAndView order_list_search(){
        System.err.println("查询进入控制层测试************************************");
        ModelAndView mav = new ModelAndView("front/sale/order_list") ;
        return mav ;
    }*/
}
