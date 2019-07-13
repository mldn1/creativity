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
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start--> <jsp:include page="/pages/plugins/include_my-nav.jsp"/>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 需求 / 总数：</header>
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
                        <th>工时</th>
                        <th class="hidden-xs">日期</th>
                        <th>状态</th>
                        <th>阶段</th>
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                    {{range $k,$v := .needs}}
                    <tr>
					  <td><span class="label {{if eq 1 $v.Level}}label-danger{{else if eq 2 $v.Level}}label-warning{{else if eq 3 $v.Level}}label-primary{{else if eq 4 $v.Level}}label-default">{{$v.Level}}级</span></td>
                      <td><a href="/need/show/"></a></td>
                      <td><a href="/user/show/{{$v.Userid}}"></a></td>
                      <td><a href="/user/show/{{$v.Acceptid}}"></a></td>
                      <td>&nbsp;</td>
                      <td class="hidden-xs"></td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td><a href="/task/add/{{$v.Projectid}}?needsid=" title="任务" class="btn btn-success btn-xs"><i class="fa fa-tasks"></i></a> <a href="/need/edit/" title="编辑" class="btn btn-danger btn-xs"><i class="fa fa-pencil-square-o"></i></a> </td>
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
<script type="text/javascript" src="static/js/advanced-datatable/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="static/js/data-tables/DT_bootstrap.js"></script>
<script src="static/js/dynamic_table_init.js"></script>
</body>
</html>
