package com.yootk.test;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class test1 {
    public static void main(String[] args) {
        Date date=new Date();
        DateFormat dateFormat=new SimpleDateFormat("HH:mm:ss");
        System.out.println(dateFormat.format(date));
        Date datetime=new Date();
        String time=dateFormat.format(datetime);
        Integer hour=Integer.parseInt(time.split(":")[0]);
        Integer minutes=Integer.parseInt(time.split(":")[1]);
        Integer second=Integer.parseInt(time.split(":")[2]);
        System.out.println(hour);
        System.out.println(minutes);
        System.out.println(second);
    }
}
