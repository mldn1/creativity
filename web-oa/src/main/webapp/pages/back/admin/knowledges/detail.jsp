<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
</head>
<body class="sticky-header">
<section> <jsp:include page="/pages/plugins/include_menuitem.jsp"/>
  <!-- main content start-->
  <div class="main-content" >
    <!-- header section start-->
    <div class="header-section">
      <!--toggle button start-->
      <a class="toggle-btn"><i class="fa fa-bars"></i></a>
      <!--toggle button end-->
      <!--search start-->
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
    </div>
    <div class="clearfix"></div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="row">
          <div class="blog">
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-body">
                  <div class="single-blog">
                    <h1 class="text-center mtop35"><a>{{.knowledge.Title}}</a></h1>
                    <p class="text-center auth-row"> By <a href="/user/show/{{.knowledge.Userid}}">{{getRealname .knowledge.Userid}}</a> |   {{getDate .knowledge.Created}} </p>
                    <div> {{str2html .knowledge.Content}} </div>
                    <br/>
                    {{if .knowledge.Url}} <a class="btn p-follow-btn js-knowledge-laud" href="{{.knowledge.Url}}" target="_blank">源地址</a> <a class="btn p-follow-btn js-knowledge-laud" href="javascript:;" data-id="{{.knowledge.Id}}"> <i class="fa fa-heart"></i> {{.knowledge.Laudnum}}</a>&nbsp; <a class="btn p-follow-btn" href="#commenta"> <i class="fa fa-envelope-o"></i> {{.knowledge.Comtnum}}</a>&nbsp; <a class="btn p-follow-btn" href="javascript:;"> <i class="fa fa-eye"></i> {{.knowledge.Viewnum}}</a>
                    <ul class="p-social-link pull-right bdsharebuttonbox">
                      <li><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a></li>
                      <li><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a></li>
                      <li><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="panel">
              <header class="panel-heading"> 精彩点评 <span class="tools pull-right"> <a class="fa fa-chevron-down" href="javascript:;"></a> </span> </header>
              <div class="panel-body">
                <ul class="activity-list">
                  {{range $k,$v := .comments}}
                  <li>
                    <div class="avatar"> <a href="/user/show/{{$v.Userid}}"><img src="static/img/avatar-mini.jpg" width="50" height="50" border="0"></a> </div>
                    <div class="activity-desk">
                      <h5><a href="/user/show/{{$v.Userid}}"></a> <span>{{$v.Content}}</span></h5>
                      <p class="text-muted">{{getDateMH $v.Created}}</p>
                    </div>
                  </li>
                  
                </ul>
                <form class="form-horizontal" id="knowledge-comment-form" action="/knowledge/comment/add">
                  <a name="commenta"></a>
                  <div class="form-group">
                    <div class="col-sm-12">
                      <textarea name="comment" rows="6" class="form-control" placeholder="精彩评论不断……"></textarea>
                      <br/>
                      <input type="hidden" name="knowid" value="{{.knowledge.Id}}">
                      <button type="submit" class="btn btn-primary pull-right">我来点评</button>
                    </div>
                  </div>
                </form>
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
