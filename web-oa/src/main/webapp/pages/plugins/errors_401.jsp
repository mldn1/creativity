<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
    <%--
        页面功能：出现401错误时的显示路径
    --%>
</head>
<body>
<%!
    public static final String INDEX_URL = "index.jsp" ;
%>
<div class="container">
    <div class="row">
        <div class="container">
            <section class="error-wrapper text-center">
                <h1><img alt="" src="assets/images/500-error.png"></h1>
                <h2>无权限访问或操作受限</h2>
                <h3>你没有权限访问此页面或操作受限，请联系超级管理员！</h3>
                <a class="back-btn" href="<%=INDEX_URL%>"> 返回首页</a></section>
        </div>
    </div>
</div>
</body>
</html>