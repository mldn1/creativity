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
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 审批管理<jsp:include page="/pages/plugins/include_checkwork-nav.jsp"/></h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="/oagood/approval">审批管理</a> </li>
        <li class="active"> 领用审批 </li>
      </ul>
      <div class="pull-right"> <a href="/oagood/manage" class="btn btn-success" style="padding:4px;">领用</a> <a href="/oagood/approval?filter=wait" class="btn btn-default {{if eq .condArr.filter "wait"}}active" style="padding:4px;">待审批</a> <a href="/oagood/approval?filter=over" class="hidden-xs btn btn-default active" style="padding:4px;">已审核</a> </div>
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
                    <th> 领用人</th>
                    <th class="hidden-phone">领用日期</th>
                    <th>用途</th>
                    <th>结果</th>
                    <th>进度</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
                
                
                <tr>
                  <td><a href="/user/show/{{$v.Userid}}" style="color:#65CEA7"></a> </td>
                  <td class="hidden-phone">&nbsp; </td>
                  <td>&nbsp;</td>
                  <td>  <span class="label label-success label-mini">同意</span>  <span class="label label-danger label-mini">拒绝</span><span class="label label-warning label-mini">等待中</span>  </td>
                  <td><div class="js-selectuserbox"></div></td>
                  <td><a href="detail.jsp"> 审批 </a> </td>
                </tr>
                
                <tr>
                  <td colspan="7">数据暂时为空</td>
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
