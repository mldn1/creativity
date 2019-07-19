package com.yootk.mall.action;

import com.yootk.dubbo.vo.mall.Goods;
import com.yootk.mall.service.IGoodsTransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GoodsAction {

    @Autowired
    private IGoodsTransferService goodsTransferService;

    @GetMapping("shop_details")
    public ModelAndView goodsAction(String gid) {
        ModelAndView mav = new ModelAndView("front/goods/shop_details");
        Goods goods = goodsTransferService.findGoodsById(gid);
        String[] pictures = goods.getPicture().split(";");
        mav.addObject("pictures", pictures);
        return mav;
    }

}
