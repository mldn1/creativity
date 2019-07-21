<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
    <link href="static/css/table-responsive.css" rel="stylesheet">
    <link href="static/js/advanced-datatable/css/demo_table.css" rel="stylesheet"/>
    <link href="static/js/data-tables/DT_bootstrap.css" rel="stylesheet"/>
</head>
<body class="sticky-header">
<section>
    <jsp:include page="/pages/plugins/include_menuitem.jsp"/>
    <!-- main content start-->
    <div class="main-content">
        <!-- header section start-->
        <div class="header-section">
            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <!--toggle button end-->
            <!--search start-->
            <form class="searchform" action="pages/back/admin/projects/needs_search_list.action" method="get">
                <select name="state" class="form-control">
                    <option value="">状态</option>
                    <c:forEach items="${allStates}" var="state">
                        <option value="${state.id}" ${state.id==stateid?"selected":""}>${state.title}</option>
                    </c:forEach>
                </select>
                <select name="period" class="form-control">
                    <option value="">阶段</option>
                    <c:forEach items="${allPeriods}" var="period">
                        <option value="${period.id}" ${period.id==periodid?"selected":""}>${period.title}</option>
                    </c:forEach>
                </select>
                <select name="assigned" class="form-control">
                    <option value="">指派给</option>
                    <c:forEach items="${allEmps}" var="emp">
                        <option value="${emp.eid}" ${emp.eid==assignedid?"selected":""}>${emp.name}</option>
                    </c:forEach>
                </select>
                <input type="text" class="form-control" name="title" placeholder="请输入名称" value="${titlename}"/>
                <input type="text" class="hidden" name="proid" value="${proid}">
                <button type="submit" class="btn btn-primary">搜索</button>
            </form>
            <!--search end-->
            <jsp:include page="/pages/plugins/include_userinfo.jsp"/>
        </div>
        <!-- header section end-->
        <!-- page heading start-->
        <div class="page-heading">
            <h3> 项目管理 </h3>
            <ul class="breadcrumb pull-left">
                <li><a href="/user/show/{{.LoginUserid}}"></a></li>
                <li><a href="pages/back/admin/projects/project_detail.action?proid=${proid}"></a></li>
                <li class="active"> 需求</li>
            </ul>
            <div class="pull-right"><a href="pages/back/admin/projects/needs-add.jsp" class="btn btn-success">+新需求</a>
            </div>
        </div>
        <!-- page heading end-->
        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading"> 需求 / 总数： ${allRecorders}<span class="tools pull-right"><a
                                href="javascript:;"
                                class="fa fa-chevron-down"></a>
                            <!--a href="javascript:;" class="fa fa-times"></a-->
              </span></header>
                        <div class="panel-body">
                            <section id="unseen">
                                <form id="project-form-list">
                                    <table class="table table-bordered table-striped table-condensed"
                                           id="dynamic-table">
                                        <thead>
                                        <tr>
                                            <th>级别</th>
                                            <th>名称</th>
                                            <th>创建人</th>
                                            <th>指派人</th>
                                            <th>预工时</th>
                                            <th class="hidden-xs">创建日期</th>
                                            <th>状态</th>
                                            <th>阶段</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${allNeeds}" var="need" varStatus="foot">
                                            <tr>
                                                <td>${need.grade}级</td>
                                                <td>
                                                    <a href="pages/back/admin/projects/needs-detail.jsp">${need.title}</a>
                                                </td>
                                                <td>
                                                    <a href="pages/back/admin/users/profile.jsp">${founders[foot.index]}</a>
                                                </td>
                                                <td>
                                                    <a href="pages/back/admin/users/profile.jsp">${assigneds[foot.index]}</a>
                                                </td>
                                                <td>${need.workhours}</td>
                                                <td class="hidden-xs">${createdate[foot.index]}</td>
                                                <td>${states[foot.index]}</td>
                                                <td>${periods[foot.index]}</td>
                                                <td><a href="pages/back/admin/projects/task-add.jsp" title="任务"
                                                       class="btn btn-success btn-xs"><i class="fa fa-tasks"></i></a> <a
                                                        href="pages/back/admin/projects/needs-form.jsp" title="编辑"
                                                        class="btn btn-danger btn-xs"><i
                                                        class="fa fa-pencil-square-o"></i></a>
                                                </td>
                                            </tr>
                                        </c:forEach>
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
        <!--footer section start-->
        <jsp:include page="/pages/plugins/include_footinfo.jsp"/>
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
