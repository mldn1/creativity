<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
<link href="static/css/table-responsive.css" rel="stylesheet">
</head><body class="sticky-header">
<section> <jsp:include page="/pages/plugins/include_menuitem.jsp"/>
  <!-- main content start-->
  <div class="main-content" >
    <!-- header section start-->
    <div class="header-section">
      <!--toggle button start-->
      <a class="toggle-btn"><i class="fa fa-bars"></i></a>
      <!--toggle button end-->
      <!--search start-->
      <form class="searchform" action="/knowledge/manage" method="get">
        <!--select name="status" class="form-control">
          <option value="">状态</option>
          <option value="1" selected>正常</option>
		  <option value="2" {{if eq "2" .condArr.status}}selected>屏蔽</option>
        </select-->
        <input type="text" class="form-control" name="keywords" placeholder="请输入标题、标签" value=""/>
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 知识分享 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="pages/back/admin/knowledges/index.jsp">知识分享</a> </li>
        <li class="active"> 知识 </li>
      </ul>
      <div class="pull-right"><a href="pages/back/admin/knowledges/index.jsp" class="btn btn-warning">我的知识</a> <a href="pages/back/admin/knowledges/index.jsp" class="btn btn-success">全部知识</a> <a href="pages/back/admin/knowledges/index.jsp" class="btn btn-success">+分享知识</a> </div>
    </div>
    <div class="clearfix"></div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-md-8">
          <div class="row">
            <div class="col-md-12">
              <div class="panel">
                <header class="panel-heading"> 精彩分享 <span class="tools pull-right"> <a class="fa fa-chevron-down" href="javascript:;"></a> </span> </header>
                <div class="panel-body">
                  <ul class="activity-list">
                    <li><a href="pages/back/admin/knowledges/detail.jsp">分享文件名字.exe
                      </a>
                      <div class="avatar"> <img src="static/img/avatar-mini.jpg" width="50" height="50" border="0"> </div>
                      <div class="activity-desk">
                        <h5><a href="/user/show/{{$v.Userid}}"></a> <span><a href="/knowledge/" style="color:#2a323f"></a></span></h5>
                        <p class="text-muted">&nbsp;</p>
                        <p class="pull-right text-muted"> <a href="pages/back/admin/knowledges/form.jsp" title="修改"><i class="fa fa-edit"></i></a></p>
                      </div>
                    </li>
                    
                    <h2>我要当第一个发知识分享的达人。<br/>
                      <a href="pages/back/admin/knowledges/form.jsp">+分享知识</a></h2>
                                                   
                  </ul>
                   <jsp:include page="/pages/plugins/split_page_bar_plugin.jsp"/> </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="panel">
            <div class="panel-body">
              <div class="blog-post">
                <h3>分类</h3>
                <ul>
                  {{range .sorts}}
                  <li> <a href="/knowledge/manage?sortid="></a> </li>
                  
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--body wrapper end-->
    <!--footer section start-->    <jsp:include page="/pages/plugins/include_footinfo.jsp"/>
    <!--footer section end-->
  </div>
  <!-- main content end-->
</section>
<jsp:include page="/pages/plugins/include_foot.jsp"/>
</body>
</html>
