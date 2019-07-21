package com.yootk.mall.action;

import com.yootk.mall.service.ICategoryTransferService;
import com.yootk.mall.service.IGoodTransferService;
import com.yootk.mall.service.ISearchTransferService;
import com.yootk.mall.util.GetCookies;
import com.yootk.mall.util.ValueComparator;
import com.yootk.util.action.AbstractAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.Cookie;
import java.util.*;

@Controller
public class IndexAction {
    @Autowired
    private ISearchTransferService searchTransferService;

    @Autowired
    private IGoodTransferService goodTransferService;

    @Autowired
    private ICategoryTransferService categoryTransferService;

    // 跳转到首页
    @GetMapping("index")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("front/main/index");
        mav.addObject("showGoods", this.goodTransferService.findShowGoods());
        mav.addObject("allCategory", this.categoryTransferService.findAllCategory());
        return mav;
    }

    // 跳转到搜索页
    @GetMapping("search")
    public ModelAndView search() {
        ModelAndView mav = new ModelAndView("front/search/search");
        AbstractAction action = new AbstractAction();

        // 获取历史搜索记录
        // 获取浏览器中保存的cookie，向页面中显示历史搜索数据
        Cookie[] cookies = action.getRequest().getCookies();
        // 删除cookies中的Session，获取Cookie的List集合
        if (cookies != null) {
            LinkedList<Cookie> cookieList = GetCookies.getCookie(cookies);
            // 取出Cookie中的value保存在集合中
            List<String> valueList = new LinkedList<>();
            for (Cookie temp : cookieList) {
                valueList.add(temp.getValue());
            }
            Collections.reverse(valueList);
            mav.addObject("allCookies" , valueList);
        }

        // 获取热门搜索记录
        Set<String> descRank = searchTransferService.descRank(0L, 4L);
        if (null != descRank) {
            // 获取Set集合中的keyWord，获取分数，保存在map集合中
            Map<String, Integer> map = new HashMap<>();
            for (String temp : descRank) {
                map.put(temp, searchTransferService.score(temp).intValue());
            }
            // 对map集合进行排序，使用Comparator实现排序规则，Collections的sort方法进行排序
            List<Map.Entry<String, Integer>> rankList = new ArrayList<>();
            // 将map.entry保存在List集合中
            rankList.addAll(map.entrySet());
            ValueComparator vc = new ValueComparator();
            // 根据ValueComparator中的规则，对map.entry进行排序
            Collections.sort(rankList, vc);
            // 取出排序后的keyWord，保存在List集合中
            List<String> keyList = new LinkedList<>();
            for (Map.Entry<String, Integer> temp : rankList) {
                keyList.add(temp.getKey());
            }
            System.out.println(rankList);
            mav.addObject("allRank" , keyList);
        }
        return mav;
    }

    // 跳转到购物车
    @GetMapping("shopping_cart")
    public ModelAndView shoppingCart() {
        ModelAndView mav = new ModelAndView("front/cart/shopping_cart");
        return mav;
    }

    // 跳转到个人中心
    @GetMapping("mine")
    public ModelAndView mine() {
        ModelAndView mav = new ModelAndView("front/my/mine");
        return mav;
    }
    // 跳转到xxX馆
    @GetMapping("active_page")
    public ModelAndView activePage(Long cid) {
        ModelAndView mav = new ModelAndView("front/main/active_page");
        mav.addObject("allCategory", this.categoryTransferService.findAllCategory());
        mav.addObject("allCategoryGoods", this.goodTransferService.findCateGood(cid));
        return mav;
    }

}
