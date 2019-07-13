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
      <form class="searchform" action="/user/manage" method="get">
        <select name="status" class="form-control">
          <option value="">用户状态</option>
          <option value="1" selected>正常</option>
          <option value="2" {{if eq "2" .condArr.status}}selected>屏蔽</option>
        </select>
        <input type="text" class="form-control" name="keywords" placeholder="请输入用户名、姓名" value=""/>
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 组织管理     <jsp:include page="/pages/plugins/include_nav.jsp"/></h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="pages/back/admin/users/user-index.jsp">员工管理</a> </li>
        <li class="active"> 员工 </li>
      </ul>
      <div class="pull-right"><a href="pages/back/admin/users/user-add.jsp" class="btn btn-success">+添加新员工</a></div>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 员工管理 / 总数</header>
            <div class="panel-body">
              <section id="unseen">
                <form id="user-form-list">
                  <table class="table table-bordered table-striped table-condensed">
                    <thead>
                      <tr>
                        <th>用户名</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>手机号</th>
                        <th>紧急电话</th>
                        <th>上次登录</th>
                        <th>状态</th>
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                    
                    <tr>
                      <td>&nbsp;</td>
                      <td><a href="/user/show/"></a></td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>正常屏蔽</td>
                      <td><div class="btn-group">
                          <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 操作<span class="caret"></span> </button>
                          <ul class="dropdown-menu">
                            <li><a href="pages/back/admin/users/user-form.jsp">编辑</a></li>
                            <!--li role="separator" class="divider"></li>
							<li><a href="/user/permission/">权限</a></li-->
                            <li role="separator" class="divider"></li>
            
							<li role="separator" class="divider"></li>
							<li><a href="pages/back/admin/checkworks/all.jsp">考勤</a></li>
                          </ul>
                        </div></td>
                    </tr>
                    
                    </tbody>
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
