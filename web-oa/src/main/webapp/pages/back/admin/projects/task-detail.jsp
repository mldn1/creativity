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
      <h3> 任务管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="/project/task/{{.project.Id}}"></a> </li>
        <li class="active"> 任务 </li>
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
                    <h1>任务描述</h1>
                    <div class="content"></div>
                    <h1>任务备注</h1>
                    <div class="content"></div>
                    <h1>关联需求</h1>
                    <div class="content"></div>
                    <h1>关联项目</h1>
                    <div class="content"></div>
                    <a class="btn p-follow-btn" href="pages/back/admin/projects/task-form.jsp"> <i class="fa fa-check"></i> 编辑</a>&nbsp; <a  href="javascript:;" class="btn p-follow-btn js-task-delete" data-id="{{.task.Id}}"> <i class="fa fa-times"></i> 删除</a>&nbsp; <a href="javascript:;" class="btn p-follow-btn js-task-single {{if eq .task.Status 1}}active" data-id="{{.task.Id}}" data-status="1">未开始</a> <a href="javascript:;" class="btn p-follow-btn js-task-status {{if eq .task.Status 2}}active" data-id="{{.task.Id}}" data-status="2">进行中</a> <a href="javascript:;" class="btn p-follow-btn js-task-status {{if eq .task.Status 3}}active" data-id="{{.task.Id}}" data-status="3">已完成</a> <a href="javascript:;" class="btn p-follow-btn js-task-status {{if eq .task.Status 4}}active" data-id="{{.task.Id}}" data-status="4">已暂停</a> <a href="javascript:;" class="btn p-follow-btn js-task-status {{if eq .task.Status 5}}active" data-id="{{.task.Id}}" data-status="5">已取消</a> <a href="javascript:;" class="btn p-follow-btn js-task-status {{if eq .task.Status 6}}active" data-id="{{.task.Id}}" data-status="6">已关闭</a> <a href="/task/clone/{{.task.Id}}" class="btn btn-warning"><i class="fa fa-files-o"></i> 克隆</a> </div>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-body">
                  <div class="profile-desk">
                    <h1>附件下载</h1>
                    <p><a href="{{.task.Attachment}}" target="_blank">预览下载</a></p>
					
                    <h1>历史记录</h1>
                    <ul>
                      <li></li>
                    </ul>
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
                  <div class="title">任务名称</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">任务类型</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">优先级</div>
                  <div class="desk">级</div>
                </li>
                <li>
                  <div class="title">预计工时</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">起止日期</div>
                  <div class="desk">至</div>
                </li>
                <li>
                  <div class="title">状态</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">创建人</div>
                  <div class="desk"></div>
                </li>
                <li>
                  <div class="title">指派人</div>
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
