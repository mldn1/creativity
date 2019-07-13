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
	<form class="searchform" action="/project/task/{{.project.Id}}" method="get">
        <select name="status" class="form-control">
          <option value="">状态</option>
          <option value="1" selected>未开始</option>
          <option value="2" {{if eq "2" .condArr.status}}selected>进行中</option>
          <option value="3" {{if eq "3" .condArr.status}}selected>已完成</option>
          <option value="4" {{if eq "4" .condArr.status}}selected>已暂停</option>
          <option value="5" {{if eq "5" .condArr.status}}selected>已取消</option>
		<option value="6" {{if eq "6" .condArr.status}}selected>已关闭</option>
        </select>
        <select name="type" class="form-control">
          <option value="">类型</option>
          <option value="1" {{if eq "1" .condArr.type}}selected>设计</option>
          <option value="2" {{if eq "2" .condArr.type}}selected>开发</option>
          <option value="3" {{if eq "3" .condArr.type}}selected>测试</option>
          <option value="4" {{if eq "4" .condArr.type}}selected>研究</option>
          <option value="5" {{if eq "5" .condArr.type}}selected>讨论</option>
          <option value="6" {{if eq "6" .condArr.type}}selected>界面</option>
          <option value="7" {{if eq "7" .condArr.type}}selected>事务</option>
          <option value="8" {{if eq "8" .condArr.type}}selected>其他</option>
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
        <li> <a href="/user/show/{{.LoginUserid}}"></a></li>
        <li> <a href="pages/back/admin/projects/">项目管理</a></li>
         
        <li class="active"> 任务 </li>
      </ul>
      <div class="pull-right">
				<a href="pages/back/admin/projects/task.jsp" class="btn btn-default {{if eq .condArr.filter ""}}active">全部</a>

	<a href="pages/back/admin/projects/task.jsp?me" class="hidden-xs btn btn-default {{if eq .condArr.filter "accept"}}active" style="padding:6px;">指派给我</a>
			<a href="pages/back/admin/projects/task.jsp" class="hidden-xs btn btn-default {{if eq .condArr.filter "create"}}active" style="padding:6px;">由我创建</a>
			<a href="pages/back/admin/projects/task.jsp" class="hidden-xs btn btn-default {{if eq .condArr.filter "complete"}}active" style="padding:6px;">由我解决</a>	
			<a href="pages/back/admin/projects/task.jsp" class="hidden-xs btn btn-default {{if eq .condArr.filter "close"}}active" style="padding:6px;">由我关闭</a>	
			<a href="pages/back/admin/projects/task.jsp?" class="hidden-xs btn btn-default {{if eq .condArr.filter "cancel"}}active" style="padding:6px;">由我取消</a>			

	
	<a href="pages/back/admin/projects/task-add.jsp" class="btn btn-success">+新任务</a>
	<a href="pages/back/admin/projects/task-batch-form.jsp" class="btn btn-warning">+批量添加</a>	</div>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 任务 / 总数：</header>
            <div class="panel-body">
              <section id="unseen">
                <form id="project-form-list">
                  <table class="table table-bordered table-striped table-condensed" id="dynamic-table">
                    <thead>
                      <tr>
						<th>级别</th>
                        <th>名称</th>
                        <th>状态</th>
                        <th>截止日期</th>
                        <th>指派给</th>
                        <th class="hidden-xs">完成者</th>
                        <th>预工时</th>
                        <th>需求</th>
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                  
                    <tr>
					  <td><span class="label</span></td>
                      <td><a href="/task/show/"></a>1</td>
                      <td><a href="pages/back/admin/projects/task-detail.jsp">做海报</a></td>
                      <td>&nbsp;</td>
                      <td><a href="/user/show/{{$v.Acceptid}}"></a></td>
                      <td class="hidden-xs"><a href="/user/show/{{$v.Completeid}}"></a></td>
                      <td></td>  <td></td>
                      <td><a href="/need/show/{{$v.Needsid}}"></a></td>
                      <td><a href="#acceptModal" data-toggle="modal" data-id="" title="指派" class="btn btn-warning btn-xs"><i class="fa fa-hand-o-right"></i></a> <a href="javascript:;" data-id="" class="js-task-status btn btn-success btn-xs" data-status="2" title="开始"><i class="fa fa-chevron-circle-right"></i></a> <a href="javascript:;" data-id="" class="js-task-status btn btn-info btn-xs" data-status="3" title="完成"><i class="fa fa-check-square"></i></a> <a href="pages/back/admin/projects/task-form.jsp" title="编辑" class="btn btn-danger btn-xs"><i class="fa fa-pencil-square-o"></i></a> </td>
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
    <div aria-hidden="true" aria-labelledby="acceptModalLabel" role="dialog" tabindex="-1" id="acceptModal" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">任务指派给?</h4>
          </div>
          <div class="modal-body">
            <select id="acceptid" class="form-control">
              <option value="">请选择指派给</option>
              
				
					
              <option value=""></option></select>
            <p></p>
            <textarea id="note" placeholder="备注说明" style="height:90px;" class="form-control"></textarea>
          </div>
          <div class="modal-footer">
            <input type="hidden" id="taskid" />
            <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
            <button class="btn btn-primary js-dialog-taskaccept" type="button">提交</button>
          </div>
        </div>
      </div>
    </div>
    <!--footer section start-->    <jsp:include page="/pages/plugins/include_footinfo.jsp"/>
    <!--footer section end-->
  </div>
  <!-- main content end-->
</section>
<jsp:include page="/pages/plugins/include_foot.jsp"/>
<script type="text/javascript" src="static/js/advanced-datatable/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="static/js/data-tables/DT_bootstrap.js"></script>
<script src="static/js/dynamic_table_init.js"></script>
<script>
$(function(){
	$('#acceptModal').on('show.bs.modal', function (e) {
		$('#taskid').val($(e.relatedTarget).attr('data-id'))
	})
		
})
</script>
</body>
</html>
