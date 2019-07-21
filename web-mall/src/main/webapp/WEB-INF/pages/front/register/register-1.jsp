<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>

<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>

    <meta http-equiv="Pragma" content="no-cache">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
    <title>注册</title>
    <meta name="description" content="页面简述"/>
    <meta name="keywords" content="关键词"/>
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/mystyle.css" rel="stylesheet" type="text/css">
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/jquery.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $("#userphone").blur(function () {
                $("#userphone").css("color", "");
                phone = $("#userphone").val();
                $.getJSON("pages/front/register/getPhone.action", {"phone": phone}, function (data) {
                    if (data == false) {
                        console.log("false");
                        $("#loginForm").attr('disabled', true);
                        $("#userphone").css("color", "red");
                    } else {
                        console.log("true");
                        $("#loginForm").attr('disabled', false);
                        $("#userphone").css("color", "black");
                    }
                })
            });
        });

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

            function submit() {
                $("#loginForm").submit();
            }
        }
    </script>
</head>
<body>

<div class="GL_logo mar_Bottom">
    <img src="images/GL_icon_44.png">
</div>
<form action="pages/front/register/register_pre.action" method="post">
    <div class="login_Input">
        <ul>
            <li><input type="text" name="userphone" id="userphone" value="" placeholder="输入手机号"></li>
            <li><input type="password" name="userpassword" id="userpassword" value="" placeholder="请输入密码"></li>
        </ul>
    </div>
    <div class="L_Btn">
        <input type="button" value="注册" class="login_Btn" id="loginForm" onclick="submit()">
        <p class="gray"><img src="images/GL_icon_43.png">我同意<a href="#">《服务条款》</a>和<a href="#">《隐私政策》</a></p>
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

<script type="text/javascript">
    var wait = 60;

    function time(o) {
        if (wait == 0) {
            o.removeAttribute("disabled");
            o.value = "获取验证码";
            wait = 60;
        } else {
            o.setAttribute("disabled", true);
            o.value = "重新发送(" + wait + ")";
            wait--;
            setTimeout(function () {
                    time(o)
                },
                1000)
        }
    }

    document.getElementById("btn").onclick = function () {
        time(this);
    }
    //同意条款

    $('body').on('click', '.gray img', function () {
        var hSrc = $(this).attr('src')
        if (hSrc == 'assets/images/GL_icon_43.png') {
            $(this).attr('src', 'images/GL_icon_42.png')
        } else {
            $(this).attr('src', 'images/GL_icon_43.png')
        }
    })
</script>
</body>
</html>