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
                        <th>完成者</th>
                        <th>预工时</th>
                        <th>需求</th>
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                    
                    <tr>
					  <td>级</td>
                      <td><a href="/task/show/"></a></td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td><a href="/user/show/{{$v.Completeid}}"></a></td>
                      <td>&nbsp;</td>
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
