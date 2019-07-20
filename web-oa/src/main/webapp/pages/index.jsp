<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
</head>
<body class="sticky-header">
<%!
    public static final String SHOW_USER_URL = "pages/back/admin//user/show/" ;
%>
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
<jsp:include page="/pages/plugins/include_foot.jsp"/>
</body>
</html>
