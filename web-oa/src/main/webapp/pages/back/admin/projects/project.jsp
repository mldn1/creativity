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
      <form class="searchform" action="/project/manage" method="get">
        <select name="status" class="form-control">
          <option value="">项目状态</option>
          <option value="1" selected>挂起</option>
          <option value="2" {{if eq "2" .condArr.status}}selected>延期</option>
          <option value="3" {{if eq "3" .condArr.status}}selected>进行</option>
          <option value="4" {{if eq "4" .condArr.status}}selected>结束</option>
        </select>
        <input type="text" class="form-control" name="keywords" placeholder="请输入名称" value=""/>
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
       <div class="page-heading">
      <h3> 项目管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/1461312703628858832"></a> </li>
        <li> <a href="pages/back/admin/projects/">项目管理</a> </li>
        <li class="active"> 项目 </li>
      </ul>
      <div class="pull-right"><a href="pages/back/admin/projects/project-add.jsp" class="btn btn-success">+新项目</a></div>
    </div>
    
    
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 项目 / 总数：10<span class="tools pull-right"><a href="javascript:;" class="fa fa-chevron-down"></a>
              
              </span> </header>
            <div class="panel-body">
              <section id="unseen">
                <form id="project-form-list">
                  <table class="table table-bordered table-striped table-condensed">
                    <thead>
                      <tr>
                        <th width="38">名称</th>
                        <th width="44">别名</th>
						<th width="51">创建人</th>
                        <th width="57">负责人</th>
                        <th width="84">结束时间</th>
                        <th width="38">状态</th>
                        <th width="78">操作</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                    
                    <tr>
                      <td><a href="pages/back/admin/projects/project-detail.jsp">电商平台管理</a></td>
                      <td>文创</td>
					  <td><a href="pages/back/admin/users/profile.jsp">张三</a></td>
                      <td><a href="/user/show/0">李四</a></td>
                      <td>2019-05-29</td>
                      <td>挂起</td>
                      <td><div class="btn-group">
                          <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 操作<span class="caret"></span> </button>
                          <ul class="dropdown-menu">
                            <li><a href="pages/back/admin/projects/project-form.jsp">编辑</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="javascript:;" class="js-project-single" data-id="353611856952168448" data-status="1">挂起</a></li>
                            <li><a href="javascript:;" class="js-project-single" data-id="353611856952168448" data-status="2">延期</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="javascript:;" class="js-project-single" data-id="353611856952168448" data-status="3">进行</a></li>
                            <li><a href="javascript:;" class="js-project-single" data-id="353611856952168448" data-status="4">结束</a></li>
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
