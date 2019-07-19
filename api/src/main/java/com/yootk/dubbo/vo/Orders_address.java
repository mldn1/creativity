package com.yootk.dubbo.vo;

import java.io.Serializable;

public class Orders_address implements Serializable {
    private Orders oid ;
    private String name ;
    private String address ;
    private Integer phone ;

    @Override
    public String toString() {
        return "Orders_address{" +
                "oid=" + oid +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", phone=" + phone +
                '}';
    }

    public Orders getOid() {
        return oid;
    }

    public void setOid(Orders oid) {
        this.oid = oid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getPhone() {
        return phone;
    }

    public void setPhone(Integer phone) {
        this.phone = phone;
    }
}
