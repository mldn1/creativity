package com.yootk.authz.action.sale;

import com.yootk.authz.service.IOrdersTransferService;
import com.yootk.authz.util.web.PageUtil;
import com.yootk.dubbo.vo.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

@Controller // 创建一个控制器
@RequestMapping("/pages/front/sale/*")
public class OrderAction {

    @Autowired
    private IOrdersTransferService  ordersService ;

    private static PageUtil pu ;

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
    //订单修改，数据更新
    @GetMapping("order_modify")
    public ModelAndView editOrder(Orders order) {
        System.err.println("前台修改参数"+order);
        ModelAndView mav = new ModelAndView("front/sale/order_list") ;
        boolean flag = this.ordersService.editOrder(order) ;
        Map<String,Object> map = new HashMap<>() ;
        map.put("editResult",flag) ;
        mav.addAllObjects(map) ;
        mav.addAllObjects(this.ordersService.orderPre()) ;
        return mav ;
    }

    //订单列表查询
    @PostMapping("order_list_search")
    public ModelAndView order_list_search(Orders orders,String gid,String uaddr,String sdate,String edate,Integer lineSize) throws ParseException {
        System.err.println("前台传递的所有参数********************"+"\n"+
                orders+";"+gid+","+uaddr+","+sdate+","+edate+","+lineSize);
        System.err.println("**********************************************");
        ModelAndView mav = new ModelAndView("front/sale/order_list") ;
        //处理uaddr
        String column_name = null ;
        String keyword_name = null ;
        String phone = null;
        if(uaddr != null & uaddr != ""){
            System.out.println("进入测试"+uaddr+"");
            Pattern pattern = Pattern.compile("[0-9]*");    //判断是否为纯数字。如果为纯数字，赋值给phone，name仍然为空
            boolean flag = pattern.matcher(uaddr).matches() ;
            if (flag) {
                phone = uaddr ;
            }else {
                column_name = "name" ;
                keyword_name = "%"+uaddr+"%" ;
            }
        }
        //处理日期
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd") ;
        //Date startDate = dateFormat.parse(sdate) ;
        //Date endDate = dateFormat.parse(edate) ;
        System.err.println("处理后的所有参数********************"+"\n"+
                orders+","+gid+","+phone+","+keyword_name+","+sdate+","+edate);
        try{
            System.out.println("******************");
            Map<String,Object> map = this.ordersService.orderMap(
                    orders,null,null,gid, phone, column_name,keyword_name,1L,2) ;
           /* map.put("allChannel",this.ordersService.channelName()) ;  获取渠道名。这里直接先放到前端处理了*/
            System.err.println("map集合"+map);
            mav.addAllObjects(map) ;
            System.err.println("mav集合"+mav);
        }catch (Exception e){
            e.printStackTrace();
        }
        mav.addObject("start",0) ;
        /*mav.addObject("start",(pu.getCurrentPage()-1)*pu.getLineSize());*/
/*        if (size!=null){
            allInvoice.put("lineSize",size);
        }else {
            allInvoice.put("lineSize",pu.getLineSize());
        }*/
        mav.addObject("lineSize",2) ;
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
