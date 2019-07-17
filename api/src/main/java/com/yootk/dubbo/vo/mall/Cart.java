package com.yootk.dubbo.vo.mall;

import javax.lang.model.element.NestingKind;
import java.io.Serializable;

public class Cart implements Serializable {
    public int id ;
    public String mid ;
    public String gid ;
    public String gaid ;
    public Integer count ;
    public String color ;
    public String size ;
    public Double price ;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    public String getGaid() {
        return gaid;
    }

    public void setGaid(String gaid) {
        this.gaid = gaid;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", mid='" + mid + '\'' +
                ", gid='" + gid + '\'' +
                ", gaid='" + gaid + '\'' +
                ", count=" + count +
                ", color='" + color + '\'' +
                ", size='" + size + '\'' +
                ", price=" + price +
                '}';
    }
}
