package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class Orders implements Serializable {

    private Long id ;
    private String oid ;
    private String mid ;
    private Double allprice ;
    private Double endprice ;
    private Long address ;
    private Long coupon ;
    private Integer transport ;
    private Double fare ;
    private Integer invoice ;
    private Long iid ;
    private Integer state ;
    private Integer payment ;
    private Integer paystate ;
    private Long payid ;
    private Date createdate ;
    private Date editdate ;
    private Date paydate ;
    private Integer channel ;
    private Long coid ;
    private Long eid ;
    private Integer returns ;
    private Integer returnstate ;
    private String name ;
    private String phone ;
    private String note ;
    private String ordertype ;
    private String operator ;
    private Integer invoiceState ;


    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", oid='" + oid + '\'' +
                ", mid='" + mid + '\'' +
                ", allprice=" + allprice +
                ", endprice=" + endprice +
                ", address=" + address +
                ", coupon=" + coupon +
                ", transport=" + transport +
                ", fare=" + fare +
                ", invoice=" + invoice +
                ", iid=" + iid +
                ", state=" + state +
                ", payment=" + payment +
                ", paystate=" + paystate +
                ", payid=" + payid +
                ", createdate=" + createdate +
                ", editdate=" + editdate +
                ", paydate=" + paydate +
                ", channel=" + channel +
                ", coid=" + coid +
                ", eid=" + eid +
                ", returns=" + returns +
                ", returnstate=" + returnstate +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", note='" + note + '\'' +
                ", ordertype='" + ordertype + '\'' +
                ", operator='" + operator + '\'' +
                ", invoiceState=" + invoiceState +
                '}';
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }




    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public Integer getInvoiceState() {
        return invoiceState;
    }

    public void setInvoiceState(Integer invoiceState) {
        this.invoiceState = invoiceState;
    }

    public String getOrdertype() {
        return ordertype;
    }

    public void setOrdertype(String ordertype) {
        this.ordertype = ordertype;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
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

    public Long getAddress() {
        return address;
    }

    public void setAddress(Long address) {
        this.address = address;
    }

    public Long getCoupon() {
        return coupon;
    }

    public void setCoupon(Long coupon) {
        this.coupon = coupon;
    }

    public Integer getTransport() {
        return transport;
    }

    public void setTransport(Integer transport) {
        this.transport = transport;
    }

    public Double getFare() {
        return fare;
    }

    public void setFare(Double fare) {
        this.fare = fare;
    }

    public Integer getInvoice() {
        return invoice;
    }

    public void setInvoice(Integer invoice) {
        this.invoice = invoice;
    }

    public Long getIid() {
        return iid;
    }

    public void setIid(Long iid) {
        this.iid = iid;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
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

    public Long getPayid() {
        return payid;
    }

    public void setPayid(Long payid) {
        this.payid = payid;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Date getEditdate() {
        return editdate;
    }

    public void setEditdate(Date editdate) {
        this.editdate = editdate;
    }

    public Date getPaydate() {
        return paydate;
    }

    public void setPaydate(Date paydate) {
        this.paydate = paydate;
    }

    public Integer getChannel() {
        return channel;
    }

    public void setChannel(Integer channel) {
        this.channel = channel;
    }

    public Long getCoid() {
        return coid;
    }

    public void setCoid(Long coid) {
        this.coid = coid;
    }

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }

    public Integer getReturns() {
        return returns;
    }

    public void setReturns(Integer returns) {
        this.returns = returns;
    }

    public Integer getReturnstate() {
        return returnstate;
    }

    public void setReturnstate(Integer returnstate) {
        this.returnstate = returnstate;
    }


}
