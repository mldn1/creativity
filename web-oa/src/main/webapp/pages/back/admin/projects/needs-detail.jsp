<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
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
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 需求管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a></li>
        <li> <a href="pages/back/admin/projects/">项目管理</a></li>
         
        <li class="active"> 需求 </li>
      </ul>
      <div class="pull-right"><jsp:include page="/pages/plugins/include_projects_nav.jsp"/></div>
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
                <div class="panel-body">
                  <div class="profile-desk">				   
                    <h1>需求介绍</h1>
                    <div class="content"></div>
                    <h1>验收标准</h1>
                    <div class="content"></div>
                    <h1>关联项目</h1>
                    <div class="content"></div>
					<h1>附件下载</h1>					
					<div class="content">
                    <a href="{{.needs.Attachment}}" target="_blank">预览下载</a>					
					</div>
					
                    <a class="btn p-follow-btn" href="pages/back/admin/projects/needs-form.jsp"> <i class="fa fa-check"></i> 编辑</a>&nbsp; <a href="javascript:;" class="btn p-follow-btn js-needs-single {{if eq .needs.Status 1}}active" data-id="{{.needs.Id}}" data-status="1">草稿</a> <a href="javascript:;" class="btn p-follow-btn js-needs-single {{if eq .needs.Status 2}}active" data-id="{{.needs.Id}}" data-status="2">激活</a> <a href="javascript:;" class="btn p-follow-btn js-needs-single {{if eq .needs.Status 3}}active" data-id="{{.needs.Id}}" data-status="3">已变更</a> <a href="javascript:;" class="btn p-follow-btn js-needs-single {{if eq .needs.Status 4}}active" data-id="{{.needs.Id}}" data-status="4">待关闭</a> <a href="javascript:;" class="btn p-follow-btn js-needs-single {{if eq .needs.Status 5}}active" data-id="{{.needs.Id}}" data-status="5">已关闭</a> </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="panel">
            <div class="panel-body">
              <ul class="p-info">
                <li>
                  <div class="title">需求名称</div>
                  <div class="desk">出个广告设计图</div>
                </li>
                <li>
                  <div class="title">来源</div>
                  <div class="desk">设计组</div>
                </li>
                <li>
                  <div class="title">优先级</div>
                  <div class="desk">1级</div>
                </li>
                <li>
                  <div class="title">阶段</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">状态</div>
                  <div class="desk">待确认</div>
                </li>
                <li>
                  <div class="title">创建人</div>
                  <div class="desk">张三</div>
                </li>
                <li>
                  <div class="title">指派人</div>
                  <div class="desk">李四</div>
                </li>
              </ul>
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
<script>
$(function(){
	var workday = workDay({{getDate .project.Started}},{{getDate .project.Ended}});
	$('.js-workday').text(workday+'天');
});
</script>
</body>
</html>
