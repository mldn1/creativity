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
      <form class="searchform" action="/permission/manage" method="get">
        <input type="text" class="form-control" name="keywords" placeholder="请输入名称" value=""/>
		<select name="parentid" class="form-control">
                      <option value="">请选择栏目</option>
					{{range .parentpermissions}}
                      <option value="" {{if eq .Id $.parentids}}selected></option>
					
                    </select>
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 组织管理     <jsp:include page="/pages/plugins/include_nav.jsp"/></h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="pages/back/admin/groups/permission.jsp">权限管理</a> </li>
        <li class="active"> 权限 </li>
      </ul>
      <div class="pull-right"> <a href="pages/back/admin/groups/permission-add.jsp" class="btn btn-success">+新增</a> </div>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 权限管理 / 总数：x</header>
            <div class="panel-body">
              <table class="table table-bordered table-striped table-condensed">
                <thead>
                  <tr>
					<th>栏目</th>
                    <th>名称</th>
                    <th class="hidden-phone hidden-xs">英文</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
                
                {{range $k,$v := .permissions}}
                <tr>
				  <td>&nbsp;</td>
                  <td>&nbsp; </td>
                  <td class="hidden-phone hidden-xs">&nbsp;</td>
                  <td><div class="btn-group">
                      <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 操作<span class="caret"></span> </button>
                      <ul class="dropdown-menu">                       
                        <li><a href="pages/back/admin/groups/permission-form.jsp">编辑</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="javascript:;" class="js-permission-delete" data-op="delete" data-id="">删除</a></li>
                      </ul>
                    </div></td>
                </tr>
                
                <tr>
                  <td colspan="7">你还没有添加权限</td>
                </tr>
                
                </tbody>
                
              </table>
               <jsp:include page="/pages/plugins/split_page_bar_plugin.jsp"/> </div>
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