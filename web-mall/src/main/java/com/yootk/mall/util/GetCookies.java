package com.yootk.mall.util;

import javax.servlet.http.Cookie;
import java.util.LinkedList;

public class GetCookies {

    private GetCookies() {}

    public static LinkedList<Cookie> getCookie(Cookie[] cookies) {
        LinkedList<Cookie> listCoolies = new LinkedList<>();
        for (Cookie temp : cookies) {
            if (!"JSESSIONID".equals(temp.getName())) {
                listCoolies.add(temp);
            }
        }
        return listCoolies;
    }
}
