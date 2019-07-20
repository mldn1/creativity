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
      <form class="searchform" action="pages/back/admin/resumes/resume_list.action" method="get">
        <select name="status" class="form-control">
          <option value="">状态</option>
            <option value="1" <c:if test="${status==1}">selected</c:if>>入档</option>
          <option value="2" <c:if test="${status==2}">selected</c:if>>通知面试</option>
		<option value="3" <c:if test="${status==3}">selected</c:if>>违约</option>
		<option value="4" <c:if test="${status==4}">selected</c:if>>录用</option>
		<option value="5" <c:if test="${status==5}">selected</c:if>>不录用</option>
        </select>
        <input type="text" class="form-control" name="keywords" placeholder="请输入姓名" value="${keywords}"/>
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 简历管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="pages/back/admin/resumes/index.jsp">简历管理</a> </li>
        <li class="active"> 简历 </li>
      </ul>
      <div class="pull-right"><a href="pages/back/admin/resumes/form-add.jsp" class="btn btn-success">+添加新简历</a></div>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 简历管理 / 总数：<span class="tools pull-right"><a href="javascript:;" class="fa fa-chevron-down"></a>
              <!--a href="javascript:;" class="fa fa-times"></a-->
              </span> </header>
            <div class="panel-body">
              <section id="unseen">
                <form id="resume-form-list">
                  <table class="table table-bordered table-striped table-condensed">
                    <thead>
                      <tr>
                        <th>姓名</th>
                        <th>性别</th>
						<th>手机</th>
						<th>生日</th>
						<th>学历</th>
						<th>经验</th>
						<th>简历</th>
                        <th>状态</th>
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${allResumes}" var="resume">
                    <tr>
                        <td>${resume.name}</td>
                        <c:if test="${resume.sex==0}">
                            <td>男</td>
                        </c:if>
                        <c:if test="${resume.sex==1}">
                            <td>女</td>
                        </c:if>
                        <td>${resume.phone}</td>
                        <td>${resume.birthday}</td>
                        <td>
                            <c:forEach items="${allEducation}" var="education">
                                ${resume.eduid==education.eduid ? education.title :""}
                            </c:forEach>
                        </td>
                        <td>
                            <c:forEach items="${allWorkYears}" var="workYears">
                                ${workYears.wyid==resume.wyid ? workYears.title:""}
                            </c:forEach>
                        </td>
                        <td><a href="pages/back/admin/resumes/resume_editPre.action?resid=${resume.resid}" target="_blank">查看预览</a></td>
                        <td>
                            <c:forEach items="${allResumeState}" var="resumeState">
                                ${resume.state == resumeState.rsid ? resumeState.title :""}
                            </c:forEach>
                        </td>
                        <td><div class="btn-group">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 操作<span class="caret"></span> </button>
                            <ul class="dropdown-menu">
                                <li><a href="pages/back/admin/resumes/resume_editPre.action?resid=${resume.resid}">编辑</a></li>

                                <li role="separator" class="divider"></li>
                                <li><a href="pages/back/admin/resumes/resume_edit.action?resid=${resume.resid}&state=2" class="js-resumes-single" data-id="" data-status="2">通知面试</a></li>

                                <li role="separator" class="divider"></li>
                                <li><a href="pages/back/admin/resumes/resume_edit.action?resid=${resume.resid}&state=3" class="js-resumes-single" data-id="" data-status="3">违约</a></li>
                                <li><a href="pages/back/admin/resumes/resume_edit.action?resid=${resume.resid}&state=4" class="js-resumes-single" data-id="" data-status="4">录用</a></li>
                                <li><a href="pages/back/admin/resumes/resume_edit.action?resid=${resume.resid}&state=5" class="js-resumes-single" data-id="" data-status="5">不录用</a></li>

                                <li role="separator" class="divider"></li>
                                <li><a href="pages/back/admin/resumes/resume_delete.action?resid=${resume.resid}" class="js-resumes-delete" data-id="">删除</a></li>
                            </ul>
                        </div></td>
                    </tr>
                    </c:forEach>
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
