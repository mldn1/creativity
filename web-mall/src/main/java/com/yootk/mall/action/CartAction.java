package com.yootk.mall.action;


import com.yootk.mall.service.ICartTransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/pages/front/cart/")
public class CartAction {
    @Autowired
    ICartTransferService cartTransferService ;
    //购物车页面编辑商品数量、删除商品、选择下单商品、
    @RequestMapping("shopping_cart")
    public ModelAndView shoppingCar() throws Exception {
        ModelAndView mav = new ModelAndView() ;
        mav.setViewName("front/cart/shopping_cart");
        System.err.println(this.cartTransferService.handleCartList()) ;
        mav.addObject("allCarts",this.cartTransferService.handleCartList()) ;
        return mav ;
    }
    @ResponseBody
    @RequestMapping("jiajian")
    public void jiajian(String goodsId,String num) throws Exception {
        this.cartTransferService.handleGoodsNumAdjust(goodsId,num) ;
    }
    @ResponseBody
    @RequestMapping("goodsRemove")
    public boolean goodsRemove(String goodsId) throws Exception {
       return this.cartTransferService.handleGoodsRemove(goodsId);
    }
    @RequestMapping("shopping_cart_1")
    public ModelAndView shoppingCar1() throws Exception {   //下单页面
        ModelAndView mav = new ModelAndView() ;
        mav.setViewName("front/cart/shopping_cart_1");
        return mav ;
    }

    @RequestMapping("shopping_cart_2")
    public ModelAndView shoppingCar2() throws Exception {   //支付页面
        ModelAndView mav = new ModelAndView() ;
        mav.setViewName("front/cart/shopping_cart_2");
        return mav ;
    }

    @RequestMapping("shopping_cart_3")
    public ModelAndView shoppingCar3() throws Exception {   //下单成功页面
        ModelAndView mav = new ModelAndView() ;
        mav.setViewName("front/cart/shopping_cart_3");
        return mav ;
    }
    @RequestMapping("shopping_cart_4")
    public ModelAndView shoppingCar4() throws Exception {   //付款失败页面
        ModelAndView mav = new ModelAndView() ;
        mav.setViewName("front/cart/shopping_cart_4");
        return mav ;
    }
    @RequestMapping("shopping_cart_5")
    public ModelAndView shoppingCar5() throws Exception {   //购物车为空页面
        ModelAndView mav = new ModelAndView() ;
        mav.setViewName("front/cart/shopping_cart_5");
        return mav ;
    }
    @RequestMapping("shopping_cart_6")
    public ModelAndView shoppingCar6() throws Exception {   //发票页面
        ModelAndView mav = new ModelAndView() ;
        mav.setViewName("front/cart/shopping_cart_6");
        return mav ;
    }





}
