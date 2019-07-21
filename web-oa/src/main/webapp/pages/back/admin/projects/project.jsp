<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>OA管理系统</title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
    <script type="text/javascript" src="static/js/jquery.min.js"></script>
    <script type="text/javascript" src="static/js/jquery-ui-1.10.3.min.js"></script>
    <link href="static/css/table-responsive.css" rel="stylesheet">
    <script>
        $(function () {
            $("button[id^=state-]").each(function () {
                $(this).on("click", function () {
                    state = this.id.split("-") [1];
                    console.log("我点击了按钮，状态为：" + state);
                    operate(state);
                });
            });
        })

        function operate(state) {
            console.log("【操作】操作编号：" + state);
            proid = $("#state-" + state).attr("proid");
            console.log("proid = " + proid);
            lastState = $("#state-" + state).attr("state");
            console.log("获取之前的状态为 " + lastState);
            $.get("pages/back/admin/projects/project_state.action", {
                "proid": proid,
                "state": state,
            }, function (data) {
                if (data.trim() == "succedd") {
                    $("#state-" + state).attr("disabled", "disabled");
                    $("#state-" + lastState).removeAttr("disabled");
                    $("button[id^=state-]").each(function () {
                        $(this).attr("state", state);
                    });
                    var stateName;
                    if(state == 1){
                        stateName = "挂起";
                    }else if( state == 2){
                        stateName = "延期";
                    }else if( state == 3){
                        stateName = "进行";
                    }else if( state == 4){
                        stateName = "结束";
                    }
                    $("#showState-" + proid).text(stateName);
                    operateAlert(true, "状态切换成功！", "");
                } else {
                    operateAlert(false, "", "状态切换失败！");
                }
            }, "text");
        }

        function operateAlert(flag, suctext, faltext) {
            if (flag) {
                $("#alertDiv").attr("class", "alert alert-success");
                $("#alertText").text(suctext);
            } else {
                $("#alertDiv").attr("class", "alert alert-danger");
                $("#alertText").text(faltext);
            }
            $("#alertDiv").fadeIn(1000, function () {
                $("#alertDiv").fadeOut(3000);
            });
        }
    </script>
</head>
<%!
    public static final String PROJECT_DETAIL = "pages/back/admin/projects/project_detail.action";
%>
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
            <form class="searchform" action="pages/back/admin/projects/project_search_list.action" method="get">
                <select name="state" class="form-control">
                    <option value="">项目状态</option>
                    <c:forEach items="${showState}" var="state">
                        <option value="${state.id}" ${state.id==stateid?"selected":""}>${state.title}</option>
                    </c:forEach>
                </select>
                <input type="text" class="form-control" name="title" placeholder="请输入名称" value="${titlename}"/>
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
                <li><a href=""></a></li>
                <li><a href="pages/back/admin/projects/project_list_pre.action">项目管理</a></li>
                <li class="active"> 项目</li>
            </ul>
            <shiro:hasPermission name="oaprogrammer: publish">
                <div class="pull-right"><a href="pages/back/admin/projects/project_add_pre.action"
                                           class="btn btn-success">+新项目</a></div>
            </shiro:hasPermission>
        </div>


        <div class="wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading"> 项目 / 总数：${allRecorders}<span class="tools pull-right"><a
                                href="javascript:;" class="fa fa-chevron-down"></a>
              
              </span></header>
                        <div class="panel-body">
                            <section id="unseen">
                                <form id="project-form-list">
                                    <table class="table table-bordered table-striped table-condensed">
                                        <thead>
                                        <tr>
                                            <th width="38">名称</th>
                                            <th width="44">别名</th>
                                            <th width="51">创建人</th>
                                            <th width="57">负责人</th>
                                            <th width="84">结束时间</th>
                                            <th width="38">状态</th>
                                            <th width="78">操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${allProjects}" var="project" varStatus="foot">
                                            <tr id="project-${project.proid}">
                                                <td>
                                                    <a href="<%=PROJECT_DETAIL%>?proid=${project.proid}">${project.title}</a>
                                                </td>
                                                <td>${project.alias}</td>
                                                <td>
                                                    <a href="pages/back/admin/users/profile.jsp">${allFounders[foot.index]}</a>
                                                </td>
                                                <td><a href="/user/show/0">${allHeads[foot.index]}</a></td>
                                                <td>${endDates[foot.index]}</td>
                                                <td id="showState-${project.proid}">${allStates[foot.index]}</td>
                                                <td>
                                                    <div class="btn-group">
                                                        <button type="button" class="btn btn-primary dropdown-toggle"
                                                                data-toggle="dropdown" aria-haspopup="true"
                                                                aria-expanded="false"> 操作<span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu">
                                                            <li>
                                                                <a href="pages/back/admin/projects/project_edit_pre.action?proid=${project.proid}">编辑</a>
                                                            </li>
                                                            <li role="separator" class="divider"></li>
                                                            <li>
                                                                <button id="state-1" class="js-project-single"
                                                                        type="button"
                                                                        state="${project.state}"
                                                                        data-id="353611856952168448"
                                                                        proid="${project.proid}"
                                                                        data-status="1" ${project.state==1?"disabled":""}>
                                                                    挂起
                                                                </button>
                                                            </li>
                                                            <li>
                                                                <button id="state-2" class="js-project-single"
                                                                        type="button"
                                                                        state="${project.state}"
                                                                        data-id="353611856952168448"
                                                                        proid="${project.proid}"
                                                                        data-status="2" ${project.state==2?"disabled":""}>
                                                                    延期
                                                                </button>
                                                            </li>
                                                            <li role="separator" class="divider"></li>
                                                            <li>
                                                                <button id="state-3" class="js-project-single"
                                                                        type="button"
                                                                        state="${project.state}"
                                                                        data-id="353611856952168448"
                                                                        proid="${project.proid}"
                                                                        data-status="3" ${project.state==3?"disabled":""}>
                                                                    进行
                                                                </button>
                                                            </li>
                                                            <li>
                                                                <button id="state-4" class="js-project-single"
                                                                        type="button"
                                                                        state="${project.state}"
                                                                        data-id="353611856952168448"
                                                                        proid="${project.proid}"
                                                                        data-status="4" ${project.state==4?"disabled":""}>
                                                                    结束
                                                                </button>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>

                                    </table>
                                </form>
                                <div class="panel-footer" style="height:100px;">
                                    <jsp:include page="/pages/plugins/alert.jsp"/>
                                </div>
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
</body>
</html>
