package com.yootk.admin.util;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

public class PageUtil {
    private Long currentPage ;
    private Integer lineSize = 2;
    private String keyword ;
    private String column ;
    private String columnData ;
    private String url ;
    public PageUtil(String url) {
        this(url,null) ;
    }
    public PageUtil(String url, String columnData) {
        this.url = url ;
        this.columnData = columnData ;
        this.splitHandle();
    }
    private void splitHandle() {
        try {
            this.currentPage = Long.parseLong(this.getRequest().getParameter("cp")) ;
        } catch (Exception e) {}
        try {
            this.lineSize = Integer.parseInt(this.getRequest().getParameter("ls")) ;
        } catch (Exception e) {}
        this.column = this.getRequest().getParameter("col") ;
        System.err.println("=============================="+ this.column+"------------------------------");
        this.keyword = this.getRequest().getParameter("kw") ;
        this.getRequest().setAttribute("currentPage",this.currentPage);
        this.getRequest().setAttribute("lineSize",this.lineSize);
        this.getRequest().setAttribute("column",this.column);
        this.getRequest().setAttribute("keyword",this.keyword);
        this.getRequest().setAttribute("url",this.url);
        this.getRequest().setAttribute("columnData",this.columnData);
    }

    public Long getCurrentPage() {
        if (this.currentPage == null) {
            return 1L ;
        }
        return currentPage;
    }

    public String getColumn() {
        return column;
    }

    public String getKeyword() {
        return keyword;
    }

    public Integer getLineSize() {
        if (this.lineSize == null) {
            return 10 ;
        }
        return lineSize;
    }
    public HttpServletRequest getRequest() {
        return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest() ;
    }
}
