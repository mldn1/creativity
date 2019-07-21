package com.yootk.dubbo.vo.mall;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Order  implements Serializable {
    public String oid ;
    public String mid ;
    public String address ;
    public Double allprice ;
    public Double endprice ;
    public Double fare ;
    public Integer payment ;
    public Integer paystate ;
    public Double payid ;
    public Date paydate;
    public List<OrderGood> ordergood;

    public List<OrderGood> getOrdergood() {
        return ordergood;
    }

    public void setOrdergood(List<OrderGood> ordergood) {
        this.ordergood = ordergood;
    }

    public Double getPayid() {
        return payid;
    }

    public void setPayid(Double payid) {
        this.payid = payid;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Date createdate;

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

    public Double getAllprice() {
        return allprice;
    }

    public void setAllprice(Double allprice) {
        this.allprice = allprice;
    }

    public Double getEndprice() {
        return endprice;
    }

    public void setEndprice(Double endprice) {
        this.endprice = endprice;
    }

    public Double getFare() {
        return fare;
    }

    public void setFare(Double fare) {
        this.fare = fare;
    }

    public Integer getPayment() {
        return payment;
    }

    public void setPayment(Integer payment) {
        this.payment = payment;
    }

    public Integer getPaystate() {
        return paystate;
    }

    public void setPaystate(Integer paystate) {
        this.paystate = paystate;
    }



    public Date getPaydate() {
        return paydate;
    }

    public void setPaydate(Date paydate) {
        this.paydate = paydate;
    }

    @Override
    public String toString() {
        return "Order{" +
                "oid='" + oid + '\'' +
                ", mid='" + mid + '\'' +
                ", address='" + address + '\'' +
                ", allprice=" + allprice +
                ", endprice=" + endprice +
                ", fare=" + fare +
                ", payment=" + payment +
                ", paystate=" + paystate +
                ", payid=" + payid +
                ", paydate=" + paydate +
                '}';
    }
}
