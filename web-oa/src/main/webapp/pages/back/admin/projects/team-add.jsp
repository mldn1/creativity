<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
    <script type="text/javascript" src="static/js/jquery.min.js"></script>
    <script type="text/javascript" src="static/js/jquery-ui-1.10.3.min.js"></script>
    <script type="text/javascript" src="static/js/projects/team_add.js"></script>
    <link href="static/css/jquery-ui-1.10.3.css" rel="stylesheet"/>
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
            <jsp:include page="/pages/plugins/include_userinfo.jsp"/>
        </div>
        <!-- header section end-->
        <!-- page heading start-->
        <div class="page-heading">
            <h3> 项目管理 </h3>
            <ul class="breadcrumb pull-left">
                <li><a href="#"></a></li>
                <li> <a href="http://127.0.0.1:8080/oa/pages/back/admin/projects/">项目管理</a></li>
                 
                <li class="active"> 团队成员</li>
            </ul>
        </div>
        <!-- page heading end-->
        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading"></header>
                        <div class="panel-body">
                            <form class="form-horizontal adminex-form" id="team-form"
                                  action="pages/back/admin/projects/team_add.action">
                                <div class="form-group" id="usernameDiv">
                                    <label class="col-sm-2 col-sm-2 control-label" for="username">姓名</label>
                                    <div class="col-sm-6">
                                        <input type="text" name="username" id="username"
                                               class="form-control js-search-username" placeholder="请输入姓名或用户名匹配">
                                    </div>
                                    <div class="col-md-4" id="usernameMsg"></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 col-sm-2 control-label"></label>
                                    <div class="col-lg-10">
                                        <input type="hidden" name="proid" id="proid" value="${param.proid}">
                                        <button type="submit" class="btn btn-primary">添加成员</button>
                                    </div>
                                </div>
                            </form>
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
<script src="static/js/jquery-ui-1.10.3.min.js"></script>
</body>
</html>
