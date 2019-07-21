package com.yootk.test;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.IClientService;
import com.yootk.dubbo.service.IOrdersService;
import com.yootk.dubbo.vo.Orders;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

@ContextConfiguration(locations = {"classpath:spring/spring-base.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class TestOrderService {
    @Reference
    private IOrdersService ordersService;
    @Test
    public void testGetByState() throws InterruptedException {

            new Thread(()->{
                System.err.println("订单信息" + this.ordersService.listByState(3));
            }).start();
        TimeUnit.DAYS.sleep(Long.MAX_VALUE);
    }

    @Test
    public void testOrderList() throws InterruptedException {
        Orders orders = new Orders() ;
        orders.setOid("");
        orders.setState(1);
        orders.setChannel(1);
        orders.setPayment(1);
        orders.setPaystate(1);
        orders.setCreatedate(new Date());
        String uddr = "" ;
        String phone = uddr ;
        String keyword_name = "%"+uddr+"%" ;

        new Thread(()->{
            System.err.println("订单列表信息"+this.ordersService.orderList(
                    orders,null,null,"2",phone, "name",keyword_name,1L,3));
        }).start();
        TimeUnit.SECONDS.sleep(Long.MAX_VALUE);
    }


    @Test
    public void testPreOrder() throws InterruptedException {
        new Thread(()->{
            System.err.println("订单进入时的分页"+this.ordersService.getAllOrders(1L,1));
        }).start();
        TimeUnit.SECONDS.sleep(Long.MAX_VALUE);
    }
    @Test
    public void editPreOrder() throws InterruptedException {
        new Thread(()->{
            System.err.println("订单编辑页面数据回显"+this.ordersService.preEditOrder("20190320120604afd78900"));
        }).start();
        TimeUnit.SECONDS.sleep(Long.MAX_VALUE);
    }

    @Test
    public void editOrder() {
        Orders orders = new Orders() ;
        orders.setOid("16553qreqrqet4546262347");
        orders.setUsernote("啦啦啦啦！");
        new Thread(()->{
            System.err.println("订单编辑测试"+this.ordersService.editOrder(orders));
        }).start();
    }
}
