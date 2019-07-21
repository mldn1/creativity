<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>OA管理系统</title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
    <script type="text/javascript" src="static/js/jquery.min.js"></script>
    <script type="text/javascript" src="static/js/jquery-ui-1.10.3.min.js"></script>
    <script type="text/javascript" src="static/js/opms.js"></script>
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
            proid = $("#state-" + state).attr("data-id");
            console.log("proid = " + proid);
            lastState = $("#state-" + state).attr("state");
            console.log("获取之前的状态为 " + lastState);
            $.get("pages/back/admin/projects/project_state.action", {
                "proid": proid,
                "state": state,
            }, function (data) {
                if (data.trim() == "succedd") {
                    $("#state-" + state).removeAttr("class");
                    $("#state-" + state).attr("class", "btn p-follow-btn js-project-single active");
                    $("#state-" + lastState).removeAttr("class");
                    $("#state-" + lastState).attr("class", "btn p-follow-btn js-project-single");
                    $("#state-" + state).attr("disabled", "disabled");
                    $("#state-" + lastState).removeAttr("disabled");
                    $("button[id^=state-]").each(function () {
                        $(this).attr("state", state);
                    });
                    var stateName;
                    if (state == 1) {
                        stateName = "挂起";
                    } else if (state == 2) {
                        stateName = "延期";
                    } else if (state == 3) {
                        stateName = "进行";
                    } else if (state == 4) {
                        stateName = "结束";
                    }
                    $("#showState-" + proid).text(stateName);
                }
            }, "text");
        }

    </script>
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
            <!--search end-->
            <jsp:include page="/pages/plugins/include_userinfo.jsp"/>
        </div>
        <!-- header section end-->
        <!-- page heading start-->
        <div class="page-heading">
            <h3> 项目管理 </h3>
            <ul class="breadcrumb pull-left">
                <li><a href="/user/show/{{.LoginUserid}}"></a></li>
                <li><a href="pages/back/admin/projects/project_list_pre.action">项目管理</a></li>
                <li class="active"> 项目</li>
            </ul>
            <div class="pull-right">
                <jsp:include page="/pages/plugins/include_projects_nav.jsp"/>
            </div>
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
                                <div class="panel-body">
                                    <div class="profile-desk">
                                        <h1>项目介绍</h1>
                                        <div class="content">${project.description}</div>
                                        <a class="btn p-follow-btn"
                                           href="pages/back/admin/projects/project_edit_pre.action?proid=${project.proid}">
                                            <i class="fa fa-check"></i> 编辑</a>&nbsp;
                                        <button type="button" id="state-1"
                                                state="${project.state}"
                                        ${project.state==1?"disabled":""}
                                                class="btn p-follow-btn js-project-single ${project.state==1 ? 'active' : ''}"
                                                data-id="${project.proid}" data-status="1">挂起
                                        </button>
                                        <button type="button" id="state-2"
                                                state="${project.state}"
                                        ${project.state==2?"disabled":""}
                                                class="btn p-follow-btn js-project-single ${project.state==2 ? 'active' : ''}"
                                                data-id="${project.proid}" data-status="2">延期
                                        </button>
                                        <button type="button" id="state-3"
                                                state="${project.state}"
                                        ${project.state==3?"disabled":""}
                                                class="btn p-follow-btn js-project-single ${project.state==3 ? 'active' : ''}"
                                                data-id="${project.proid}" data-status="3">进行
                                        </button>
                                        <button type="button" id="state-4"
                                                state="${project.state}"
                                        ${project.state==4?"disabled":""}
                                                class="btn p-follow-btn js-project-single ${project.state==4 ? 'active' : ''}"
                                                data-id="${project.proid}" data-status="4">结束
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel">
                        <div class="panel-body">
                            <ul class="p-info">
                                <li>
                                    <div class="title">项目名称</div>
                                    <div class="desk">${project.title}</div>
                                </li>
                                <li>
                                    <div class="title">代号</div>
                                    <div class="desk">${project.alias}</div>
                                </li>
                                <li>
                                    <div class="title">起止时间</div>
                                    <div class="desk">${startDate}至${endDate}</div>
                                </li>
                                <li>
                                    <div class="title">可用工作日</div>
                                    <div id="testworkday" class="desk js-workday">${workDays} 天</div>
                                </li>
                                <li>
                                    <div class="title">项目负责人</div>
                                    <div class="desk">${head}</div>
                                </li>
                                <li>
                                    <div class="title">产品负责人</div>
                                    <div class="desk">${pl}</div>
                                </li>
                                <li>
                                    <div class="title">测试负责人</div>
                                    <div class="desk">${tl}</div>
                                </li>
                                <li>
                                    <div class="title">发布负责人</div>
                                    <div class="desk">${emp.name}</div>
                                </li>
                                <li>
                                    <div class="title">项目状态</div>
                                    <div class="desk">${state}</div>
                                </li>
                            </ul>
                        </div>
                    </div>
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
<script>
    // $(function () {
    //     var workday = workDay();
    //     $('.js-workday').text(workday + '天');
    // });
</script>
</body>
</html>
