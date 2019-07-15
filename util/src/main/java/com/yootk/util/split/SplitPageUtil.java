package com.yootk.util.split;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

public class SplitPageUtil {

    private Long currentPage ;
    private Integer lineSize ;
    private String keyword ;
    private String column ;
    private String columnData ;
    private String url ;
    public SplitPageUtil(String url) {
        this(url,null) ;
    }
    public SplitPageUtil(String url,String columnData) {
        this.url = url ;
        this.columnData = columnData ;
        this.splitHandle();
    }
    private void splitHandle() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();


        try {
            this.currentPage = Long.parseLong(request.getParameter("cp")) ;
        } catch (Exception e) {}
        try {
            this.lineSize = Integer.parseInt(request.getParameter("ls")) ;
        } catch (Exception e) {}
        this.column = request.getParameter("col") ;
        this.keyword = request.getParameter("kw") ;
        request.setAttribute("currentPage",this.currentPage);
        request.setAttribute("lineSize",this.lineSize);
        request.setAttribute("column",this.column);
        request.setAttribute("keyword",this.keyword);
        request.setAttribute("url",this.url);
        request.setAttribute("columnData",this.columnData);
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
            return 2 ;
        }
        return lineSize;
    }
}
