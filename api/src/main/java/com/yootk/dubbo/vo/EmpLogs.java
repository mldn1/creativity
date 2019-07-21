package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class EmpLogs implements Serializable {
    private String logintime;
    private String logintip;
    private String phone;

    @Override
    public String toString() {
        return "EmpLogs{" +
                "logintime='" + logintime + '\'' +
                ", logintip='" + logintip + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }

    public String getLogintime() {
        return logintime;
    }

    public void setLogintime(String logintime) {
        this.logintime = logintime;
    }

    public String getLogintip() {
        return logintip;
    }

    public void setLogintip(String logintip) {
        this.logintip = logintip;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
