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
      <h3> 版本管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="/project/version/{{.project.Id}}"></a> </li>
        <li class="active"> 版本 </li>
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
                    <h1>版本描述</h1>
                    <div class="content"></div>
					<h1>源代码地址</h1>
                    <div class="content"> <a href="{{.versions.Sourceurl}}" target="_blank">查看链接</a> </div>
                    
					<h1>下载地址</h1>
                    <div class="content"> <a href="{{.versions.Downurl}}" target="_blank">查看链接</a> </div>
                    
                    <a class="btn p-follow-btn" href="/version/edit/{{.versions.Id}}"> <i class="fa fa-check"></i> 编辑</a>&nbsp; <a  href="javascript:;" class="btn p-follow-btn js-version-delete" data-id="{{.versions.Id}}"> <i class="fa fa-times"></i> 删除</a></div>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-body">
                  <div class="profile-desk">
                    <h1>发行包下载</h1>
                    <p><a href="{{.versions.Attachment}}" target="_blank">预览下载</a></p>
					
                    </div>
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
                  <div class="title">版本名称</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">打包日期</div>
                  <div class="desk"></div>
                </li>
                
                <li>
                  <div class="title">创建人</div>
                  <div class="desk"></div>
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
</body>
</html>
