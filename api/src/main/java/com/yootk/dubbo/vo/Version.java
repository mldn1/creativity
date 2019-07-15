package com.yootk.dubbo.vo;

import java.io.Serializable;
import java.util.Date;

public class Version implements Serializable {
    private Long verid;

    private Long proid;

    private Long founder;

    private String version;

    private Date packagedate;

    private Date createdate;

    private String source;

    private String download;

    private String distribution;

    private String description;

    public Long getVerid() {
        return verid;
    }

    public void setVerid(Long verid) {
        this.verid = verid;
    }

    public Long getProid() {
        return proid;
    }

    public void setProid(Long proid) {
        this.proid = proid;
    }

    public Long getFounder() {
        return founder;
    }

    public void setFounder(Long founder) {
        this.founder = founder;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version == null ? null : version.trim();
    }

    public Date getPackagedate() {
        return packagedate;
    }

    public void setPackagedate(Date packagedate) {
        this.packagedate = packagedate;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    public String getDownload() {
        return download;
    }

    public void setDownload(String download) {
        this.download = download == null ? null : download.trim();
    }

    public String getDistribution() {
        return distribution;
    }

    public void setDistribution(String distribution) {
        this.distribution = distribution == null ? null : distribution.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", verid=").append(verid);
        sb.append(", proid=").append(proid);
        sb.append(", founder=").append(founder);
        sb.append(", version=").append(version);
        sb.append(", packagedate=").append(packagedate);
        sb.append(", createdate=").append(createdate);
        sb.append(", source=").append(source);
        sb.append(", download=").append(download);
        sb.append(", distribution=").append(distribution);
        sb.append(", description=").append(description);
        sb.append("]");
        return sb.toString();
    }
}