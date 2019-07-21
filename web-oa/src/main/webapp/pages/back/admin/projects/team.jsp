<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="static/css/table-responsive.css" rel="stylesheet">
    <script>
        $(function () {
            $("button[id^=remove-]").each(function () {
                $(this).on("click", function () {
                    tid = this.id.split("-") [1];
                    console.log("tid = " + tid);
                    deleteDetails(tid);
                });
            });
        })

        function deleteDetails(tid) {
            console.log("【删除】详情编号：" + tid);
            //proid = $("table[id^=alanproid-]").id.split("-") [1];
            // ajax移除信息，而后删除表格；
            console.log("testtesttest");
            $.get("pages/back/admin/projects/team_delete.action", {
                "tid": tid,
            }, function (data) {
                console.log("data = " + data);
                if (data.trim() == "succeed") {
                    operateAlert(true, "成员删除成功！", "");
                    $("#eachT-" + tid).remove();
                } else {
                    operateAlert(false, "", "成员删除失败！");
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
                <li class="active"> 团队成员</li>
            </ul>
            <div class="pull-right"><a href="pages/back/admin/projects/team-add.jsp?proid=${proid}"
                                       class="btn btn-success">+新成员</a>
            </div>
        </div>
        <!-- page heading end-->
        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading"> 团队 / 成员总数：${allRecorders} 人<span class="tools pull-right"><a
                                href="javascript:;" class="fa fa-chevron-down"></a>
                            <!--a href="javascript:;" class="fa fa-times"></a-->
              </span></header>
                        <div class="panel-body">
                            <section id="unseen">
                                <form id="project-form-list">
                                    <table id="alanproid-${proid}"
                                           class="table table-bordered table-striped table-condensed">
                                        <thead>
                                        <tr>
                                            <th>成员</th>
                                            <th>职称</th>
                                            <th>加入时间</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${teams}" var="team" varStatus="foot">
                                            <tr id="eachT-${team.tid}">
                                                <td>
                                                    <a href="pages/back/admin/users/profile.jsp?eid=${emps[foot.index].eid}">${emps[foot.index].name}</a>
                                                </td>
                                                <td>${emps[foot.index].job}</td>
                                                <td>${joindates[foot.index]}</td>
                                                    <%--                                                <td><a href="javascript:;" class="js-team-single btn btn-danger btn-xs"--%>
                                                    <%--                                                       data-id="" title="删除"><i class="fa fa-trash-o"></i> 删除</a></td>--%>
                                                <td>
                                                    <button id="remove-${team.tid}" type="button"
                                                            class="js-team-single btn btn-danger btn-xs">
                                                        <i class="fa fa-trash-o"></i>&nbsp;删除
                                                    </button>
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
