<%@ page pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
</head>
<body>
<%!
    private static final String INDEX_URL = "pages/login.action";
%>
<shiro:authenticated>
    <jsp:forward page="<%=INDEX_URL%>"/>
</shiro:authenticated>
<shiro:notAuthenticated>
    <link rel="stylesheet" type="text/css" href="assets/css/dmaku2.css"/>
    <header id="header">
        <a href="javascript:;" class="logo"></a>
    </header>
    <section id="main">
        <h1>未登录</h1>
        <form action="<%=INDEX_URL%>" accept-charset="utf-8" data-view="loginView">
            <div class="clearfix btn_login" data-propertyname="submit" data-controltype="Botton">
                <input type="submit" value="登录">
            </div>
            <input type="hidden" value="" id="isVisiable_request_form_verifyCode"/>
        </form>
    </section>
</shiro:notAuthenticated>
</body>
</html>
