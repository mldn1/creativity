package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class Member implements Serializable {
    private Long id;
    private String mid;
    private String phone;
    private String name;
    private String email;
    private String sex;
    private Date birthday;
    private String password;
    private String photo;
    private Long grade;
    private Long state;
    private Date regist;
    private Date lastrecord;
    private Long eid;
    private Long count;
    private String ip;
    private Long source;

    @Override
    public String toString() {
        return "Member{" +
                "id=" + id +
                ", mid='" + mid + '\'' +
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
                ", source=" + source +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
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

    public Long getGrade() {
        return grade;
    }

    public void setGrade(Long grade) {
        this.grade = grade;
    }

    public Long getState() {
        return state;
    }

    public void setState(Long state) {
        this.state = state;
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

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Long getSource() {
        return source;
    }

    public void setSource(Long source) {
        this.source = source;
    }
}
