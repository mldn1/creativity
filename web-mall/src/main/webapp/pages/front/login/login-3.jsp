
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>登录-3</title>
	<meta name="description" content="页面简述" />
	<meta name="keywords" content="关键词" />
	<link href="assets/css/style.css" rel="stylesheet" type="text/css">
	<link href="assets/css/mystyle.css" rel="stylesheet" type="text/css">
    <script>
function htmlFontSize(){
    var clientWidth = document.documentElement ? document.documentElement.clientWidth : document.body.clientWidth;

    if(clientWidth >= 768 && clientWidth < 1280){
    	clientWidth = 640;
    }else if(clientWidth >= 1280){
    	clientWidth = 640; 
    }

    document.documentElement.style.fontSize = clientWidth * 1/16+"px";
  	return clientWidth * 1/16;
}
htmlFontSize()

window.onresize = function(){
	htmlFontSize()
	}
</script>
</head>
<body>

<div class="GL_logo mar_Bottom">
	<img src="assets/images/GL_icon_44.png">
</div>
<div class="login_Input none_Border">
	<ul>
    	<li><input type="tel" name="" value="" placeholder="输入手机号"></li>
        <li><input type="password" name="" value="" placeholder="请输入密码"></li>
        <li><a href="#"></a><a href="#">使用验证码登录</a></li>
    </ul>
</div>
<div class="L_Btn">
	<input type="button" value="手机登录" class="login_Btn" onClick="window.location.href='pages/front/login/login-2.jsp'">
	<input type="button" value="快捷注册" class="register_Btn" onClick="window.location.href='pages/front/register/register-1.jsp'">
</div>
<div class="login_Other">
	<div class="dropMore mar_Bottom"><div class="dropLeft"></div><div class="dropload-refresh">其他登录方式</div><div class="dropRight"></div></div>
  <div class="other_Dl">
    	<div class="other_Wx"><a href="#"><img src="assets/images/GL_icon_49.png"></a></div>
    	<div class="other_Qq"><a href="#"><img src="assets/images/GL_icon_48.png"></a></div>
        <div class="other_Wx"><a href="#"><img src="assets/images/GL_icon_47.png"></a></div>
  </div>
</div>
</body>
</html>