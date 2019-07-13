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
      <h3> 项目管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="pages/back/admin/projects/">项目管理</a> </li>
        <li class="active"> 项目 </li>
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
                    <h1>项目介绍</h1>
                    <div class="content"></div>
					<a class="btn p-follow-btn" href="pages/back/admin/projects/project-form.jsp"> <i class="fa fa-check"></i> 编辑</a>&nbsp; <a href="javascript:;" class="btn p-follow-btn js-project-single {{if eq .project.Status 1}}active" data-id="{{.project.Id}}" data-status="1">挂起</a> <a href="javascript:;" class="btn p-follow-btn js-project-single {{if eq .project.Status 2}}active" data-id="{{.project.Id}}" data-status="2">延期</a> <a href="javascript:;" class="btn p-follow-btn js-project-single {{if eq .project.Status 3}}active" data-id="{{.project.Id}}" data-status="3">进行</a> <a href="javascript:;" class="btn p-follow-btn js-project-single {{if eq .project.Status 4}}active" data-id="{{.project.Id}}" data-status="4">结束</a>				  </div>
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
                  <div class="title">项目名称</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">代号</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">起止时间</div>
                  <div class="desk">至</div>
                </li>
                <li>
                  <div class="title">可用工作日</div>
                  <div class="desk js-workday"></div>
                </li>
                <li>
                  <div class="title">项目负责人</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">产品负责人</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">测试负责人</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">发布负责人</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">项目状态</div>
                  <div class="desk">挂起 延期 进行 结束</div>
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
