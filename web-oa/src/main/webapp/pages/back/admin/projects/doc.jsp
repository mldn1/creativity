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
      <form class="searchform" action="/project/doc/{{.project.Id}}" method="get">
        <select name="type" class="form-control">
          <option value="">类型</option>
          <option value="1" {{if eq "1" .condArr.sort}}selected>正文</option>
          <option value="2" {{if eq "2" .condArr.sort}}selected>链接</option>
        </select>        
        <input type="text" class="form-control" name="keywords" placeholder="请输入名称" value=" "/>
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 文档管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="/project/{{.project.Id}}"></a> </li>
        <li class="active"> 文档 </li>
      </ul>
      <div class="pull-right"><a href="pages/back/admin/projects/doc-add.jsp" class="btn btn-success">+新文档</a></div>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 文档 / 总数： </header>
            <div class="panel-body">
              <section id="unseen">
                <form id="project-form-list">
                  <table class="table table-bordered table-striped table-condensed">
                    <thead>
                      <tr>
                        <th>名称</th>
						<th>类型</th>
                        <th>创建人</th>
                        <th>创建日期</th>                        
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                    {{range $k,$v := .docs}}
                    <tr>
                      <td><p><a href="pages/back/admin/projects/doc-detail.jsp">xxxfdfsa</a></p>
                      </td>
					  <td>正文链接</td>
                      <td><a href="pages/back/admin/projects/doc-detail.jsp"></a></td>                    
                      <td>&nbsp;</td>                     
                      <td><a href="pages/back/admin/projects/doc-form.jsp" title="编辑" class="btn btn-danger btn-xs"><i class="fa fa-pencil-square-o"></i></a> <a href="pages/back/admin/projects/doc-detail.jsp" title="查看" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a> </td>
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
</body>
</html>
