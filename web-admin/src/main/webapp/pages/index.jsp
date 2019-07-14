<%@ page pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <shiro:hasRole name="malladmin">
        <shiro:authenticated>
            <jsp:include page="/pages/plugins/include_basepath.jsp"/>
            <jsp:include page="/pages/plugins/include_head.jsp"/>
        </shiro:authenticated>
    </shiro:hasRole>
</head>
<body>
<shiro:lacksRole name="malladmin">
    <h1>您当前没有进入商场后台管理的权限!</h1>
</shiro:lacksRole>
</body>
</html>
