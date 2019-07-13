<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
<link href="static/css/table-responsive.css" rel="stylesheet">
<link href="static/js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
<link href="static/js/data-tables/DT_bootstrap.css" rel="stylesheet" />
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
      <form class="searchform" action="/project/need/{{.project.Id}}" method="get">
        <select name="status" class="form-control">
          <option value="">状态</option>
          <option value="1" selected>草稿</option>
          <option value="2" {{if eq "2" .condArr.status}}selected>激活</option>
          <option value="3" {{if eq "3" .condArr.status}}selected>已变更</option>
          <option value="4" {{if eq "4" .condArr.status}}selected>待关闭</option>
          <option value="5" {{if eq "5" .condArr.status}}selected>已关闭</option>
        </select>
        <select name="stage" class="form-control">
          <option value="">阶段</option>
          <option value="1" {{if eq "1" .condArr.stage}}selected>未开始</option>
          <option value="2" {{if eq "2" .condArr.stage}}selected>已计划</option>
          <option value="3" {{if eq "3" .condArr.stage}}selected>已立项</option>
          <option value="4" {{if eq "4" .condArr.stage}}selected>研发中</option>
          <option value="5" {{if eq "5" .condArr.stage}}selected>研发完毕</option>
          <option value="6" {{if eq "6" .condArr.stage}}selected>测试中</option>
          <option value="7" {{if eq "7" .condArr.stage}}selected>测试完毕</option>
          <option value="8" {{if eq "8" .condArr.stage}}selected>已验收</option>
          <option value="9" {{if eq "9" .condArr.stage}}selected>已发布</option>
        </select>
        <select name="acceptid" class="form-control">
          <option value="">指派给</option>
		  
		  <option value="" {{if eq .Userid $.acceptid}}selected></option></select>
        <input type="text" class="form-control" name="keywords" placeholder="请输入名称" value=""/>
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 项目管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="/project/{{.project.Id}}"></a> </li>
        <li class="active"> 需求 </li>
      </ul>
      <div class="pull-right"><a href="pages/back/admin/projects/needs-add.jsp" class="btn btn-success">+新需求</a></div>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 需求 / 总数：<span class="tools pull-right"><a href="javascript:;" class="fa fa-chevron-down"></a>
              <!--a href="javascript:;" class="fa fa-times"></a-->
              </span> </header>
            <div class="panel-body">
              <section id="unseen">
                <form id="project-form-list">
                  <table class="table table-bordered table-striped table-condensed" id="dynamic-table">
                    <thead>
                      <tr>
						<th>级别</th>
                        <th>名称</th>
                        <th>创建人</th>
                        <th>指派人</th>
                        <th>预工时</th>
                        <th class="hidden-xs">创建日期</th>
                        <th>状态</th>
                        <th>阶段</th>
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                    {{range $k,$v := .needs}}
                    <tr>
					  <td>1级</td>
                      <td><a href="pages/back/admin/projects/needs-detail.jsp">xx</a></td>
                      <td><a href="pages/back/admin/users/profile.jsp">xxx</a></td>
                      <td><a href="pages/back/admin/users/profile.jsp">ccc</a></td>
                      <td>1</td>
                      <td class="hidden-xs">2020</td>
                      <td>xxx</td>
                      <td>xxx</td>
                      <td><a href="pages/back/admin/projects/task-add.jsp" title="任务" class="btn btn-success btn-xs"><i class="fa fa-tasks"></i></a> <a href="pages/back/admin/projects/needs-form.jsp" title="编辑" class="btn btn-danger btn-xs"><i class="fa fa-pencil-square-o"></i></a> </td>
                    </tr>
                    
                    </tbody>
                    
                  </table>
                </form>
                 <jsp:include page="/pages/plugins/split_page_bar_plugin.jsp"/> </section>
            </div>
          </section>
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
<script type="text/javascript" src="static/js/advanced-datatable/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="static/js/data-tables/DT_bootstrap.js"></script>
<script src="static/js/dynamic_table_init.js"></script>
</body>
</html>
