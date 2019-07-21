package com.yootk.mall.action;

import com.yootk.mall.service.IGoodTransferService;
import com.yootk.mall.service.ISearchTransferService;
import com.yootk.mall.util.GetCookies;
import com.yootk.util.action.AbstractAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller
public class SearchAction {
    @Autowired
    private ISearchTransferService searchTransferService;

    @Autowired
    private IGoodTransferService goodTransferService;

    @GetMapping("search_end")
    public ModelAndView searchEnd(String keyWord) {

        ModelAndView mav = new ModelAndView("front/search/search_end");
        mav.addObject("splitGood", goodTransferService.findSplitGood(keyWord));
        System.out.println(goodTransferService.findSplitGood(keyWord));

        // 历史搜索
        AbstractAction action = new AbstractAction();
        HttpServletResponse response = (HttpServletResponse) action.getResponse();
        // 获取保存在浏览器的Cookie
        Cookie[] cookies = action.getRequest().getCookies();
        if (cookies != null) {
            // 删除cookies中的Session
            LinkedList<Cookie> cookieList = GetCookies.getCookie(cookies);
            if (cookieList.size() != 0) {
                // 创建int[]数组，保存Cookie中所有的key
                int[] keys = new int[cookieList.size()];
                // 创建keys数组脚标
                int foot = 0;
                // 创建一个List集合保存Cookie中的关键字keyWord
                List<String> valueList = new ArrayList();
                // 查询出Cookie中所有的key和value保存
                for (Cookie temp : cookieList) {
                    keys[foot++] = Integer.parseInt(temp.getName());    // 保存所有的key
                    valueList.add(temp.getValue());    // 保存所有的Value
                }
                Arrays.sort(keys);
                // 如果要添加的关键字不存在，则添加
                if (! valueList.contains(keyWord)) {
                    // 创建Cookie对象保存关键字,key=keys中的最大值 + 1
                    Cookie cookie = new Cookie(String.valueOf(keys[keys.length - 1] + 1) , keyWord);
                    cookie.setMaxAge(60);
                    cookie.setPath("/");
                    response.addCookie(cookie);

                    // Cookie记录大于5条,删除最早添加的数据
                    if (cookieList.size() > 4) {
                        for (Cookie temp : cookieList) {
                            if (Integer.parseInt(temp.getName()) == keys[0]) {
                                temp.setMaxAge(0);
                                temp.setPath("/");
                                response.addCookie(temp);
                            }
                        }
                    }
                }
            } else {
                // 没有Cookie，直接添加
                Cookie cookie = new Cookie("0" , keyWord);
                cookie.setMaxAge(60);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
        }


        // 热门搜索
        // 获取关键字的排名
        Long rank = searchTransferService.rank(keyWord);

        // 如果排名为空，则该关键字为新关键字，在Redis中添加该关键字
        if (null == rank) {
            searchTransferService.add(keyWord, 1.0);
        } else {
            // 如果排名不为空，则获取该关键字的分数并 + 1
            Double score = searchTransferService.score(keyWord) + 1.0;
            // 重新保存该关键字
            searchTransferService.add(keyWord, score);
        }
        return mav;
    }

}
