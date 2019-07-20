package com.yootk.authz.util;

import java.util.ArrayList;
import java.util.List;

public class ListIntersection {
    public static List<String> Intersection(List<String> list1,List<String> list2) {

        List<String> result = new ArrayList<String>();
        for (String s : list2) {
            if(list1.contains(s)) {
                result.add(s);
            }
        }
        System.err.println(result);
        return result ;
    }

}
