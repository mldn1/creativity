package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class Memberlogs implements Serializable {
    private Long mlid ;
    private String mid ;
    private Date logintime ;

    public Long getMlid() {
        return mlid;
    }

    public void setMlid(Long mlid) {
        this.mlid = mlid;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public Date getLogintime() {
        return logintime;
    }

    public void setLogintime(Date logintime) {
        this.logintime = logintime;
    }
}
