package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class Doc implements Serializable {
    private Long docid;

    private Long proid;

    private String title;

    private String keyword;

    private Integer type;

    private Long founder;

    private Date createdate;

    private String link;

    private String content;

    private String appendix;

    public Long getDocid() {
        return docid;
    }

    public void setDocid(Long docid) {
        this.docid = docid;
    }

    public Long getProid() {
        return proid;
    }

    public void setProid(Long proid) {
        this.proid = proid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword == null ? null : keyword.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Long getFounder() {
        return founder;
    }

    public void setFounder(Long founder) {
        this.founder = founder;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link == null ? null : link.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getAppendix() {
        return appendix;
    }

    public void setAppendix(String appendix) {
        this.appendix = appendix == null ? null : appendix.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", docid=").append(docid);
        sb.append(", proid=").append(proid);
        sb.append(", title=").append(title);
        sb.append(", keyword=").append(keyword);
        sb.append(", type=").append(type);
        sb.append(", founder=").append(founder);
        sb.append(", createdate=").append(createdate);
        sb.append(", link=").append(link);
        sb.append(", content=").append(content);
        sb.append(", appendix=").append(appendix);
        sb.append("]");
        return sb.toString();
    }
}