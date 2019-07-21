package com.yootk.test;

import com.yootk.util.date.WorkdayUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author yaoxinlan
 */
public class WorkDays {

    public static void main(String[] args) {
        Date date = new Date();
        Date date1 = new Date(119, 6, 24);
        System.out.println(getDutyDays("2019-7-17", "2019-7-24"));
        System.out.println(date);
        System.out.println(date1);
        System.out.println(WorkdayUtils.howManyWorkday(date, date1));
    }

    public static int getDutyDays(String strStartDate, String strEndDate) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate = null;
        Date endDate = null;

        try {
            startDate = df.parse(strStartDate);
            endDate = df.parse(strEndDate);
        } catch (ParseException e) {
            System.out.println("非法的日期格式,无法进行转换");
            e.printStackTrace();
        }
        int result = 0;
        while (startDate.compareTo(endDate) <= 0) {
            if (startDate.getDay() != 6 && startDate.getDay() != 0)
                result++;
            startDate.setDate(startDate.getDate() + 1);
        }

        return result;
    }
}
