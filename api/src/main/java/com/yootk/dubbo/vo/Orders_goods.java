package com.yootk.dubbo.vo;

import java.io.Serializable;

public class Orders_goods implements Serializable {
    private Long id ;
    private String oid ;
    private String gid ;
    private Integer count ;
    private Double price ;
    private String goodsname ;

    @Override
    public String toString() {
        return "Orders_goods{" +
                "id=" + id +
                ", oid=" + oid +
                ", gid='" + gid + '\'' +
                ", count=" + count +
                ", price=" + price +
                ", goodsname='" + goodsname + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

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

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
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
}
