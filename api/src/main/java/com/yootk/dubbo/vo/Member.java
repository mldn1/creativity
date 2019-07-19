package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class Member implements Serializable {

    private String mid;
    private String phone;
    private String name;
    private String email;
    private String sex;
    private Date birthday;
    private String password;
    private String photo;
    private Integer grade;
    private Integer state;
    private Date regist;
    private Date lastrecord;
    private Integer eid;
    private Integer count;
    private String ip;

    @Override
    public String toString() {
        return "Member{" +
                "mid='" + mid + '\'' +
                ", phone='" + phone + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", sex='" + sex + '\'' +
                ", birthday=" + birthday +
                ", password='" + password + '\'' +
                ", photo='" + photo + '\'' +
                ", grade=" + grade +
                ", state=" + state +
                ", regist=" + regist +
                ", lastrecord=" + lastrecord +
                ", eid=" + eid +
                ", count=" + count +
                ", ip='" + ip + '\'' +
                '}';
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getRegist() {
        return regist;
    }

    public void setRegist(Date regist) {
        this.regist = regist;
    }

    public Date getLastrecord() {
        return lastrecord;
    }

    public void setLastrecord(Date lastrecord) {
        this.lastrecord = lastrecord;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }
}
