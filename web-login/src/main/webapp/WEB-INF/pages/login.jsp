<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
    <%--
        页面功能：统一单点登录模块，实现用户登录表单定义
    --%>
    <script src="assets/js/login.js"></script>
</head>
<body>
<%!
    public static final String LOGIN_URL = "login.action" ;
%>
<div class="top-content">
    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>文创电商统一管理平台</strong></h1>
                    <div class="description">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>系统登录</h3>
                            <p>&nbsp;</p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-key"></i>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form role="form" action="<%=LOGIN_URL%>" method="post" class="login-form">
                            <div class="form-group">
                                <label class="sr-only" for="form-username">用户名</label>
                                <input type="text" name="form-username" placeholder="请输入用户名"
                                       class="form-username form-control" id="form-username">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">密码</label>
                                <input type="password" name="form-password" placeholder="请输入密码"
                                       class="form-password form-control" id="form-password">
                            </div>
                            <input type="hidden" name="rememberme" id="rememberme" value="false">
                            <button type="submit" class="btn">登录</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row"></div>
        </div>
    </div>
</div>
</body>
</html>