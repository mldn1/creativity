package com.yootk.dubbo.vo;

public class Authority {
    private Long authoid;

    private String title;

    private Integer etitle;

    private Integer show;

    private String style;

    private Integer sort;

    public Long getAuthoid() {
        return authoid;
    }

    public void setAuthoid(Long authoid) {
        this.authoid = authoid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getEtitle() {
        return etitle;
    }

    public void setEtitle(Integer etitle) {
        this.etitle = etitle;
    }

    public Integer getShow() {
        return show;
    }

    public void setShow(Integer show) {
        this.show = show;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style == null ? null : style.trim();
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", authoid=").append(authoid);
        sb.append(", title=").append(title);
        sb.append(", etitle=").append(etitle);
        sb.append(", show=").append(show);
        sb.append(", style=").append(style);
        sb.append(", sort=").append(sort);
        sb.append("]");
        return sb.toString();
    }
}