package com.yootk.dubbo.vo.mall;

import java.io.Serializable;

public class Order  implements Serializable {
    public String oid ;
    public String mid ;
    public String address ;

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Order{" +
                "oid='" + oid + '\'' +
                ", mid='" + mid + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
