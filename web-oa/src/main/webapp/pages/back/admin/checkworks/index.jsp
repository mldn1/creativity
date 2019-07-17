<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <form class="searchform" action="/pages/back/admin/checkworks/checkork_list.action" method="get">
        <select name="type" class="form-control">
          <option value="">打卡状态</option>
          <option value="1" {{if eq "1" .condArr.type}}selected>正常</option>
          <option value="2" {{if eq "2" .condArr.type}}selected>迟到</option>
          <option value="3" {{if eq "3" .condArr.type}}selected>早退</option>
          <option value="4" {{if eq "4" .condArr.type}}selected>加班</option>
        </select>
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 考勤 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="/checkwork/manage">考勤管理</a> </li>
        <li class="active"> 考勤 </li>
      </ul>
      <shiro:hasPermission name="oaattendance:all">
      <div class="pull-right"><a href="pages/back/admin/checkworks/checkork_list.action?eid=null" class="btn btn-success">全部员工考勤</a></div>
      </shiro:hasPermission>
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
                <header class="panel-heading"> 考勤 <span class="tools pull-right">
                  <button onClick="myPrint(document.getElementById('print'))" class="btn btn-warning" style="margin-top: -4px;">打 印</button>
                  <select class="form-control" id="ym" style="width: 124px;display: inline;">
                  </select>
                  </span> </header>
                <div class="panel-body" style="min-height:186px;" id="print">
                  <table class="table table-bordered table-striped table-condensed" border="1">
                    <thead>
                      <tr>
                        <th>打卡日期</th>
                        <th>状态</th>
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
                      <td>${checkork.datetime}</td>
                      <c:if test="${checkork.state==1}">
                        <td>正常</td>
                      </c:if>
                      <c:if test="${checkork.state==2}">
                        <td>迟到</td>
                      </c:if>
                      <c:if test="${checkork.state==3}">
                        <td>早退</td>
                      </c:if>
                      <c:if test="${checkork.state==4}">
                        <td>加班</td>
                      </c:if>
                      <td>${checkork.ip}</td>
                    </tr>
                    </c:forEach>



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
                <div class="text-center"> <a href="pages/back/admin/checkworks/checkork_add.action" id="js-clock" class="btn btn-info">打卡<br/>
                  <span></span></a> </div>
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
                  <li>出勤天数:3 天</li>
                  <li>请假: 1小时</li>
                  <li>外出:5  小时</li>
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
<script>
$(function(){
	//年月统计
	var html = '';
	for(var i={{.month}};i>0; i--) {
		html += '<option value="{{.year}}-'+addZero(i)+'">{{.year}}年'+addZero(i)+'月</option>';
	}
	$('#ym').html(html);

	$('#ym').on('change', function(){
		window.location.href='/checkwork/manage?date='+$(this).val();
	});
	$('#ym option').each(function(i){
		if ({{.condArr.date}} == $(this).attr('value')) {
			$(this).attr('selected', true);
		}
	});

	//考勤
	$.ajax({
   		success:function(result, status, xhr){
	        var originalDate = new Date(xhr.getResponseHeader("Date"));
	        var date = originalDate;// + (3600000 * 8);
			callbackTime(date)
    	}
	});
	var srv_nowtime;
	function callbackTime(req){
	    srv_nowtime = new Date(req).getTime();
	    showTime();
	    window.setInterval(showTime, 1000);
	}
	function showTime(){
	    srv_nowtime += 1000;
	    var nowtime = new Date(srv_nowtime);
	    $('#js-clock span').text(addZero(nowtime.getHours())+":"+addZero(nowtime.getMinutes())+":"+addZero(nowtime.getSeconds()));
	}

	$('#js-clock').on('click', function(){
		var that = $(this);
		var time = that.find('span').text();
		$.post('pages/back/admin/checkworks/checkork_add.action', { clock: time },function(data){
			dialogInfo(data.message);
			setTimeout(function(){ $('#dialogInfo').modal('hide'); }, 2000);
		},'text');
	});

})
</script>
</body>
</html>
