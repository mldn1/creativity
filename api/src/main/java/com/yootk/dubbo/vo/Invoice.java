package com.yootk.dubbo.vo;

import java.io.Serializable;

public class Invoice implements Serializable {
    private Long id ;
    private Integer head ;
    private String name ;
    private Long num ;
    private String oid ;
    private Double price ;
    private Integer phone ;
    private String email ;
    private String source ;

    @Override
    public String toString() {
        return "Invoice{" +
                "id=" + id +
                ", head=" + head +
                ", name='" + name + '\'' +
                ", num=" + num +
                ", oid='" + oid + '\'' +
                ", price=" + price +
                ", phone=" + phone +
                ", email='" + email + '\'' +
                ", source='" + source + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getHead() {
        return head;
    }

    public void setHead(Integer head) {
        this.head = head;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getNum() {
        return num;
    }

    public void setNum(Long num) {
        this.num = num;
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getPhone() {
        return phone;
    }

    public void setPhone(Integer phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }
}
