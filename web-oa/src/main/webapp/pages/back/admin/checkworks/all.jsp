<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
<link href="static/css/table-responsive.css" rel="stylesheet">
<link href="static/css/jquery-ui-1.10.3.css"  rel="stylesheet" />
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
      <form class="searchform" action="pages/back/admin/checkworks/checkork_listall.action" method="get">
        <input type="text" id="team-username" name="name" class="form-control js-search-username" placeholder="请输入姓名匹配">
        <input type="hidden" name="column" id="column" value="eid">
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 考勤 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="pages/back/admin/checkworks/checkork_list.action">考勤管理</a> </li>
        <li class="active"> 考勤 </li>
      </ul>
      <div class="pull-right"><a href="pages/back/admin/checkworks/checkork_list.action" class="btn btn-success">我的考勤</a></div>
    </div>
    <div class="clearfix"></div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-md-8">
          <div class="row">
            <div class="col-md-12">
              <div class="panel">
                <header class="panel-heading"> 考勤 <span class="label label-warning">搜索姓名查询考勤记录</span><span class="tools pull-right">
                  <button onClick="myPrint(document.getElementById('print'))" class="btn btn-warning" style="margin-top: -4px;">打 印</button>
                  <select class="form-control" id="ym" style="width: 124px;display: inline;">
                  </select>
                  </span> </header>
                <div class="panel-body" style="min-height:186px;" id="print">
                  <table class="table table-bordered table-striped table-condensed" border="1">
                    <thead>
                      <tr>
                        <th>姓名</th>
                        <th>打卡时间</th>
                        <th>IP</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:if test="${allCheckorks==null}">
                      <tr>
                        <td colspan="4">无记录可看</td>
                      </tr>
                    </c:if>
                    <c:forEach items="${allCheckorks}" var="checkork">
                      <tr>
                        <td>
                          <c:forEach items="${allEmp}" var="emp">
                            ${emp.eid==checkork.eid ? emp.name :""}
                          </c:forEach>
                        </td>
                        <td>${checkork.datetime}</td>
                        <td>${checkork.ip}</td>
                      </tr>
                    </c:forEach>
                    
              
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    </tbody>
                  </table>
                   <jsp:include page="/pages/plugins/split_page_bar_plugin.jsp"/> </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="panel">
            <div class="panel-body">
              <div class="blog-post">
                <h3>当月小计</h3>
                <ul>
                  <li>出勤天数: x天</li>
                  <li>请假:  小时</li>
                  <li>外出: 小时</li>
                </ul>
              </div>
            </div>
          </div>
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
<script src="static/js/jquery-ui-1.10.3.min.js"></script>
<script>
$(function(){
	//年月统计
	var html = '';
	//addZero
	for(var i={{.month}};i>0; i--) {
		html += '<option value="{{.year}}-'+addZero(i)+'">{{.year}}年'+addZero(i)+'月</option>';
	}
	$('#ym').html(html);
	
	$('#ym').on('change', function(){
		//alert(window.location.href)
		window.location.href='/checkwork/all?userid='+$('#userid').val()+'&date='+$(this).val();
	});
	$('#ym option').each(function(i){	  
		if ({{.condArr.date}} == $(this).attr('value')) {
			$(this).attr('selected', true);
		}
	 });	
})
</script>
</body>
</html>
