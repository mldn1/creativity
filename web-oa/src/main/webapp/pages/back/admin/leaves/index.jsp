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
      <form class="searchform" action="leave/manage" method="get">
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
        <select name="type" class="form-control">
          <option value="">类型</option>
          <option value="1" {{if eq "1" .condArr.type}}selected>事假</option>
          <option value="2" {{if eq "2" .condArr.type}}selected>病假</option>
          <option value="3" {{if eq "3" .condArr.type}}selected>年假</option>
          <option value="4" {{if eq "4" .condArr.type}}selected>调休</option>
          <option value="5" {{if eq "5" .condArr.type}}selected>婚假</option>
          <option value="6" {{if eq "6" .condArr.type}}selected>产假</option>
          <option value="7" {{if eq "7" .condArr.type}}selected>陪产假</option>
          <option value="8" {{if eq "8" .condArr.type}}selected>路途假</option>
          <option value="9" {{if eq "9" .condArr.type}}selected>其他</option>
        </select>
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 审批管理<jsp:include page="/pages/plugins/include_checkwork-nav.jsp"/></h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="user/show/"></a> </li>
        <li> <a href="pages/back/admin/leaves/approval-index.jsp">审批管理</a> </li>
        <li class="active"> 请假 </li>
      </ul>
      <div class="pull-right"> <a href="#" class="btn btn-default hidden-xs">全部</a> <a href="pages/back/admin/leaves/approval.jsp" class="btn btn-warning" style="padding:4px;">待审批</a> <a href="pages/back/admin/leaves/form.jsp" class="btn btn-success">+我要请假</a> </div>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 请假 / 总数： </header>
            <div class="panel-body">
              <table class="table table-hover general-table">
                <thead>
                  <tr>
                    <th> 类型</th>
                    <th class="hidden-phone hidden-xs">请假日期</th>
                    <th>天数</th>
                    <th>状态</th>
                    <th>结果</th>
                    <th>进度</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
                
                
                <tr>
                  <td>&nbsp;</td>
                  <td class="hidden-phone hidden-xs">至</td>
                  <td>天 </td>
                  <td>  <span class="label label-warning label-mini">草稿</span>  <span class="label label-success label-mini">正常</span>  </td>
                  <td>  <span class="label label-success label-mini">同意</span><span class="label label-danger label-mini">拒绝</span><span class="label label-warning label-mini">等待中</span>  </td>
                  <td>&nbsp;</td>
                  <td> 
                    <div class="btn-group">
                      <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 操作<span class="caret"></span> </button>
                      <ul class="dropdown-menu">
                        <li><a href="pages/back/admin/leaves/form.jsp">编辑</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="javascript:;" class="js-leave-delete" data-op="delete" data-id="">删除</a></li>
                        
                        <li role="separator" class="divider"></li>
                        <li><a href="javascript:;" class="js-leave-status" data-op="status" data-id="">正常</a></li>
                      </ul>
                    </div>
                     <a href="pages/back/admin/leaves/detail.jsp"> 查看 </a>  </td>
                </tr>
                
                <tr>
                  <td colspan="7">你还没有申请过请假单</td>
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
