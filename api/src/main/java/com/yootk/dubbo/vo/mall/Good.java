package com.yootk.dubbo.vo.mall;

import java.io.Serializable;
import java.util.Date;

public class Good implements Serializable {
    private Long id;
    private String gid;
    private String title;
    private String shortname;
    private String link;
    private String deduction;
    private String standard;
    private String color;
    private String size;
    private String material;
    private String purpose;
    private String description;
    private String showpicture;
    private String picture;
    private String focuspicture;
    private String details;
    private Double originprice;
    private Double saleprice;
    private String pack;
    private Long suppiler;
    private Integer singlesize;

    public Integer getSinglesize() {
        return singlesize;
    }

    public void setSinglesize(Integer singlesize) {
        this.singlesize = singlesize;
    }

    private String iscg;
    private Integer stateid;
    private Integer showstate;
    private Double weight;
    private Integer sort;
    private Integer site;
    private Long click;
    private Integer sales;
    private Date createdate;
    private Date editdate;
    private Long eid;

    public Good() {}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getShortname() {
        return shortname;
    }

    public void setShortname(String shortname) {
        this.shortname = shortname;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getDeduction() {
        return deduction;
    }

    public void setDeduction(String deduction) {
        this.deduction = deduction;
    }

    public String getStandard() {
        return standard;
    }

    public void setStandard(String standard) {
        this.standard = standard;
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

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getShowpicture() {
        return showpicture;
    }

    public void setShowpicture(String showpicture) {
        this.showpicture = showpicture;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getFocuspicture() {
        return focuspicture;
    }

    public void setFocuspicture(String focuspicture) {
        this.focuspicture = focuspicture;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public Double getOriginprice() {
        return originprice;
    }

    public void setOriginprice(Double originprice) {
        this.originprice = originprice;
    }

    public Double getSaleprice() {
        return saleprice;
    }

    public void setSaleprice(Double saleprice) {
        this.saleprice = saleprice;
    }

    public String getPack() {
        return pack;
    }

    public void setPack(String pack) {
        this.pack = pack;
    }

    public Long getSuppiler() {
        return suppiler;
    }

    public void setSuppiler(Long suppiler) {
        this.suppiler = suppiler;
    }

    public String getIscg() {
        return iscg;
    }

    public void setIscg(String iscg) {
        this.iscg = iscg;
    }

    public Integer getStateid() {
        return stateid;
    }

    public void setStateid(Integer stateid) {
        this.stateid = stateid;
    }

    public Integer getShowstate() {
        return showstate;
    }

    public void setShowstate(Integer showstate) {
        this.showstate = showstate;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getSite() {
        return site;
    }

    public void setSite(Integer site) {
        this.site = site;
    }

    public Long getClick() {
        return click;
    }

    public void setClick(Long click) {
        this.click = click;
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
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

    @Override
    public String toString() {
        return "Good{" +
                "id=" + id +
                ", gid='" + gid + '\'' +
                ", title='" + title + '\'' +
                ", shortname='" + shortname + '\'' +
                ", link='" + link + '\'' +
                ", deduction='" + deduction + '\'' +
                ", standard='" + standard + '\'' +
                ", color='" + color + '\'' +
                ", size='" + size + '\'' +
                ", material='" + material + '\'' +
                ", purpose='" + purpose + '\'' +
                ", showpicture='" + showpicture + '\'' +
                ", picture='" + picture + '\'' +
                ", focuspicture='" + focuspicture + '\'' +
                ", description='" + description + '\'' +
                ", details='" + details + '\'' +
                ", originprice=" + originprice +
                ", saleprice=" + saleprice +
                ", pack='" + pack + '\'' +
                ", suppiler=" + suppiler +
                ", singlesize=" + singlesize +
                ", iscg='" + iscg + '\'' +
                ", stateid=" + stateid +
                ", showstate=" + showstate +
                ", weight=" + weight +
                ", sort=" + sort +
                ", site=" + site +
                ", click=" + click +
                ", sales=" + sales +
                ", createdate=" + createdate +
                ", editdate=" + editdate +
                ", eid=" + eid +
                '}';
    }
}
