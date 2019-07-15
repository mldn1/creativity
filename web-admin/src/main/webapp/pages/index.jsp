<%@ page pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <shiro:authenticated>
        <shiro:hasRole name="malladmin">
            <shiro:authenticated>
                <jsp:include page="/pages/plugins/include_basepath.jsp"/>
                <jsp:include page="/pages/plugins/include_head.jsp"/>
            </shiro:authenticated>
        </shiro:hasRole>
    </shiro:authenticated>
</head>
<body>
<shiro:lacksRole name="malladmin">
    <h1>您当前没有进入商场后台管理的权限!</h1>
</shiro:lacksRole>
<shiro:notAuthenticated>
    <h1>还未登录！请先登录</h1>
</shiro:notAuthenticated>
</body>
</html>
