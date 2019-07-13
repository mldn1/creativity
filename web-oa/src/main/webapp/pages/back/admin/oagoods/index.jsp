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
      <form class="searchform" action="#" method="get">
        <select name="status" class="form-control">
          <option value="">状态</option>
          <option value="1" selected>草稿</option>
          <option value="2" {{if eq "2" .condArr.status}}selected>正常</option>
        </select>
        <select name="result" class="form-control">
          <option value="">结果</option>
          <option value="1" {{if eq "1" .condArr.result}}selected>同意</option>
          <option value="2" {{if eq "2" .condArr.result}}selected>拒绝</option>
        </select>
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 审批管理<jsp:include page="/pages/plugins/include_checkwork-nav.jsp"/></h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/"></a> </li>
        <li> <a href="pages/back/admin/leaves/approval-index.jsp">审批管理</a> </li>
        <li class="active"> 领用 </li>
      </ul>
      <div class="pull-right"> <a href="pages/back/admin/oagoods/approval.jsp" class="hidden-xs btn btn-default">全部</a> 
	  <a href="pages/back/admin/oagoods/approval.jsp" class="btn btn-warning" style="padding:4px;">待审批</a>
	   <a href="pages/back/admin/oagoods/oagoods-add.jsp" class="btn btn-success">+我要领用</a> </div>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 领用 / 总数：</header>
            <div class="panel-body">
              <table class="table table-hover general-table">
                <thead>
                  <tr>
				 	<th>用途</th>
                    <th class="hidden-phone hidden-xs">领用日期</th>
                    <th>状态</th>
                    <th>结果</th>
                    <th>进度</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
                
                
                <tr>
				  <td></td>
                  <td class="hidden-phone hidden-xs">&nbsp;</td>
                  <td>  <span class="label label-warning label-mini">草稿</span>  <span class="label label-success label-mini">正常</span>  </td>
                  <td><span class="label label-success label-mini">同意</span><span class="label label-danger label-mini">拒绝</span><span class="label label-warning label-mini">等待中</span>  </td>
                  <td><div class="js-selectuserbox"></div></td>
                  <td> 
                    <div class="btn-group">
                      <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 操作<span class="caret"></span> </button>
                      <ul class="dropdown-menu">
                        <li><a href="pages/back/admin/oagoods/form.jsp">编辑</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="javascript:;" class="js-oagood-delete" data-op="delete" data-id="">删除</a></li>
                        
                        <li role="separator" class="divider"></li>
                        <li><a href="javascript:;" class="js-oagood-status" data-op="status" data-id="">正常</a></li>
                        
                      </ul>
                    </div>
                     <a href="pages/back/admin/oagoods/detail.jsp"> 查看 </a>  </td>
                </tr>
                
                <tr>
                  <td colspan="8">你还没有申请过领用单</td>
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
