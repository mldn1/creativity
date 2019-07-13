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
<section>
  <jsp:include page="/pages/plugins/include_menuitem.jsp"/>
  <!-- main content start-->
  <div class="main-content" >
    <!-- header section start-->
    <div class="header-section">
      <!--toggle button start-->
      <a class="toggle-btn"><i class="fa fa-bars"></i></a>
      <!--toggle button end-->
      <!--search start-->
      <form class="searchform" action="/resume/manage" method="get">
        <select name="status" class="form-control">
          <option value="">状态</option>
          <option value="1" selected>入档</option>
          <option value="2" {{if eq "2" .condArr.status}}selected>通知面试</option>
		<option value="3" {{if eq "3" .condArr.status}}selected>违约</option>
		<option value="4" {{if eq "4" .condArr.status}}selected>录用</option>
		<option value="5" {{if eq "5" .condArr.status}}selected>不录用</option>
        </select>
        <input type="text" class="form-control" name="keywords" placeholder="请输入姓名" value=""/>
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 简历管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="pages/back/admin/resumes/index.jsp">简历管理</a> </li>
        <li class="active"> 简历 </li>
      </ul>
      <div class="pull-right"><a href="pages/back/admin/resumes/form-add.jsp" class="btn btn-success">+添加新简历</a></div>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 简历管理 / 总数：<span class="tools pull-right"><a href="javascript:;" class="fa fa-chevron-down"></a>
              <!--a href="javascript:;" class="fa fa-times"></a-->
              </span> </header>
            <div class="panel-body">
              <section id="unseen">
                <form id="resume-form-list">
                  <table class="table table-bordered table-striped table-condensed">
                    <thead>
                      <tr>
                        <th>姓名</th>
                        <th>性别</th>
						<th>手机</th>
						<th>生日</th>
						<th>学历</th>
						<th>经验</th>
						<th>简历</th>
                        <th>状态</th>
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                    
                    <tr>
                      <td></td>
					  <td>男女</td>
                      <td>&nbsp;</td>
					  <td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td><a href="pages/back/admin/resumes/form.jsp" target="_blank">查看预览</a></td>
                      <td>&nbsp;</td>
                      <td><div class="btn-group">
                          <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 操作<span class="caret"></span> </button>
                          <ul class="dropdown-menu">
                            <li><a href="pages/back/admin/resumes/form.jsp">编辑</a></li>                           
                         
							 <li role="separator" class="divider"></li>
                            <li><a href="javascript:;" class="js-resumes-single" data-id="" data-status="2">通知面试</a></li>
                       
							 <li role="separator" class="divider"></li>
                            <li><a href="javascript:;" class="js-resumes-single" data-id="" data-status="3">违约</a></li>
							<li><a href="javascript:;" class="js-resumes-single" data-id="" data-status="4">录用</a></li>                           
							<li><a href="javascript:;" class="js-resumes-single" data-id="" data-status="5">不录用</a></li>                            
                            
							<li role="separator" class="divider"></li>
                            <li><a href="javascript:;" class="js-resumes-delete" data-id="">删除</a></li>
                          </ul>
                        </div></td>
                    </tr>
                  </table>
                </form>
                 <jsp:include page="/pages/plugins/split_page_bar_plugin.jsp"/>
			  </section>
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
</body>
</html>
