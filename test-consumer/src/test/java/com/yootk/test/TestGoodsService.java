package com.yootk.test;

import com.alibaba.dubbo.config.annotation.Reference;
import com.yootk.dubbo.service.ICategoryService;
import com.yootk.dubbo.service.IGoodsService;
import com.yootk.dubbo.service.IGoods_stateService;
import com.yootk.dubbo.vo.Category;
import com.yootk.dubbo.vo.Goods_state;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration(locations = "classpath:spring/spring-base.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class TestGoodsService {
    @Reference
    private IGoodsService goodsService;
    @Reference
    private IGoods_stateService goods_stateService;
    @Reference
    private ICategoryService categoryService;
    @Test
    public void testList(){
        List<Category> categories = this.categoryService.listByGrade(1);
        System.err.println("状态：" + categories);
        List<Goods_state> goods_states = this.goods_stateService.list();
        System.err.println("分类：" + goods_states);
    }
}
