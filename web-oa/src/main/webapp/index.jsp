<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<html lang="en">
<head>
</head>
<body class="sticky-header">
<%!
    public static final String SHOW_USER_URL = "pages/back/admin/user/show/" ;
    private static final String INDEX_URL = "pages/index.action";
%>
<shiro:authenticated>
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
        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="jumbotron text-center" style="background-color:transparent;">
                    <h2>让项目管理与OA办公更加轻便！</h2>
                    <br/><br/>
                    <a style="font-size:38px;" href="<%=SHOW_USER_URL%>">开启之旅</a>
                    <br/><br/>
                </div>
            </div>
        </div>
        <!--body wrapper end-->
    </div>
    <!-- main content end-->
</section>
</shiro:authenticated>

<shiro:notAuthenticated>
    <link rel="stylesheet" type="text/css" href="static/css/dmaku2.css" />
    <header id="header">
        <a href="javascript:;" class="logo"></a>
    </header>
    <section id="main">
        <h1>未登录</h1>
        <form action="<%=INDEX_URL%>" accept-charset="utf-8" data-view="loginView">
            <div class="clearfix btn_login" data-propertyname="submit" data-controltype="Botton">
                <input type="submit" value="登录">
            </div>
            <input type="hidden" value = "" id = "isVisiable_request_form_verifyCode" />
        </form>
    </section>
</shiro:notAuthenticated>
<jsp:include page="/pages/plugins/include_foot.jsp"/>
</body>
</html>
