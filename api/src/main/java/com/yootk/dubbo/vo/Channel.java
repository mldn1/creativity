package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class Channel implements Serializable {
    private Integer id ;
    private Integer channel ;
    private String title ;
    private Integer type;
    private String password ;
    private String sign ;
    private String url ;
    private Integer ratio ;
    private Long businessman ;
    private Integer state ;
    private Date createdate;
    private Date editdate ;
    private Long eid ;

    @Override
    public String toString() {
        return "channel{" +
                "id=" + id +
                ", channel=" + channel +
                ", title='" + title + '\'' +
                ", type=" + type +
                ", password='" + password + '\'' +
                ", sign='" + sign + '\'' +
                ", url='" + url + '\'' +
                ", ratio=" + ratio +
                ", businessman=" + businessman +
                ", state=" + state +
                ", createdate=" + createdate +
                ", editdate=" + editdate +
                ", eid=" + eid +
                '}';
    }

    public Integer getChannel() {
        return channel;
    }

    public void setChannel(Integer channel) {
        this.channel = channel;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getRatio() {
        return ratio;
    }

    public void setRatio(Integer ratio) {
        this.ratio = ratio;
    }

    public Long getBusinessman() {
        return businessman;
    }

    public void setBusinessman(Long businessman) {
        this.businessman = businessman;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
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

    public Long getEid() {
        return eid;
    }

    public void setEid(Long eid) {
        this.eid = eid;
    }
}
