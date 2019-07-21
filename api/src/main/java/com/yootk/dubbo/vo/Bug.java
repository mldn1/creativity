package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class Bug implements Serializable {
    private Long bugid;

    private Long rid;

    private Long tid;

    private String title;

    private Integer period;

    private Date createdate;

    private Integer state;

    private Long founder;

    private Long assigned;

    private Long send;

    private Long completor;

    private Date resolvdate;

    private String description;

    private String system;

    private String browser;

    public Long getBugid() {
        return bugid;
    }

    public void setBugid(Long bugid) {
        this.bugid = bugid;
    }

    public Long getRid() {
        return rid;
    }

    public void setRid(Long rid) {
        this.rid = rid;
    }

    public Long getTid() {
        return tid;
    }

    public void setTid(Long tid) {
        this.tid = tid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getPeriod() {
        return period;
    }

    public void setPeriod(Integer period) {
        this.period = period;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Long getFounder() {
        return founder;
    }

    public void setFounder(Long founder) {
        this.founder = founder;
    }

    public Long getAssigned() {
        return assigned;
    }

    public void setAssigned(Long assigned) {
        this.assigned = assigned;
    }

    public Long getSend() {
        return send;
    }

    public void setSend(Long send) {
        this.send = send;
    }

    public Long getCompletor() {
        return completor;
    }

    public void setCompletor(Long completor) {
        this.completor = completor;
    }

    public Date getResolvdate() {
        return resolvdate;
    }

    public void setResolvdate(Date resolvdate) {
        this.resolvdate = resolvdate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getSystem() {
        return system;
    }

    public void setSystem(String system) {
        this.system = system == null ? null : system.trim();
    }

    public String getBrowser() {
        return browser;
    }

    public void setBrowser(String browser) {
        this.browser = browser == null ? null : browser.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", bugid=").append(bugid);
        sb.append(", rid=").append(rid);
        sb.append(", tid=").append(tid);
        sb.append(", title=").append(title);
        sb.append(", period=").append(period);
        sb.append(", createdate=").append(createdate);
        sb.append(", state=").append(state);
        sb.append(", founder=").append(founder);
        sb.append(", assigned=").append(assigned);
        sb.append(", send=").append(send);
        sb.append(", completor=").append(completor);
        sb.append(", resolvdate=").append(resolvdate);
        sb.append(", description=").append(description);
        sb.append(", system=").append(system);
        sb.append(", browser=").append(browser);
        sb.append("]");
        return sb.toString();
    }
}