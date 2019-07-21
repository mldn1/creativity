package com.yootk.dubbo.vo.mall;

import java.io.Serializable;
import java.util.Date;

public class OrderGood implements Serializable {
    public String oid ;
    public String gid ;
    public String count ;
    public Double price ;
    public String goodsname;

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }
    @Override
    public String toString() {
        return "OrderGood{" +
                "oid='" + oid + '\'' +
                ", gid='" + gid + '\'' +
                ", count='" + count + '\'' +
                ", price=" + price +
                ", goodsname='" + goodsname + '\'' +
                '}';
    }
}
