<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>

<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>

    <meta http-equiv="Pragma" content="no-cache">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
    <title>登录-3</title>
    <meta name="description" content="页面简述"/>
    <meta name="keywords" content="关键词"/>
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/mystyle.css" rel="stylesheet" type="text/css">
    <script src="js/jquery-1.11.0.min.js"></script>
    <script>
        function htmlFontSize() {
            var clientWidth = document.documentElement ? document.documentElement.clientWidth : document.body.clientWidth;

            if (clientWidth >= 768 && clientWidth < 1280) {
                clientWidth = 640;
            } else if (clientWidth >= 1280) {
                clientWidth = 640;
            }

            document.documentElement.style.fontSize = clientWidth * 1 / 16 + "px";
            return clientWidth * 1 / 16;
        }

        htmlFontSize()

        window.onresize = function () {
            htmlFontSize()

        }
        function submit() {
            $("#loginForm").submit();
        }
    </script>
</head>
<body>

<div class="GL_logo mar_Bottom">
    <img src="images/GL_icon_44.png">
</div>
<form action="login_pswd.action" method="post">
    <div class="login_Input none_Border">
        <ul>
            <li><input type="tel" name="username" id="username" value="" placeholder="输入手机号"></li>
            <li><input type="password" name="password" id="password" value="" placeholder="请输入密码"></li>
            <li><a href=""></a><a href="login.action">使用验证码登录</a></li>
        </ul>
    </div>
    <div class="L_Btn">
        <input type="button" value="登   录" class="login_Btn" onclick="submit()">
        <input type="button" value="快捷注册" class="register_Btn"
               onClick="window.location.href='../register/register-1.jsp'">
    </div>
</form>
<div class="login_Other">
    <div class="dropMore mar_Bottom">
        <div class="dropLeft"></div>
        <div class="dropload-refresh">其他登录方式</div>
        <div class="dropRight"></div>
    </div>
    <div class="other_Dl">
        <div class="other_Wx"><a href="#"><img src="images/GL_icon_49.png"></a></div>
        <div class="other_Qq"><a href="#"><img src="images/GL_icon_48.png"></a></div>
        <div class="other_Wx"><a href="#"><img src="images/GL_icon_47.png"></a></div>
    </div>
</div>
</body>
</html>