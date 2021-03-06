
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>找回密码</title>
	<meta name="description" content="页面简述" />
	<meta name="keywords" content="关键词" />
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<link href="css/mystyle.css" rel="stylesheet" type="text/css">
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
<div class="register_pwd">
	<ul>
        <li><input type="text" name="" value="" placeholder="请输入手机号"></li>
        <li><input type="text" name="" value="" placeholder="请输入验证码"><input class="login_Code" type="button" id="btn" value="获取验证码" /></li>
        <li><input type="text" name="" value="" placeholder="请输入新密码"></li>
    </ul>
</div>
<div class="register_Choose">
	<input type="button" value="取消" class="Choose1" name="" onclick="javascript:history.back(-1);" >
    <input type="button" value="确定" class="Choose2" name="">
</div>
<script src="js/jquery-1.11.0.min.js"></script>
<script>
	var wait=60; 
	function time(o) { 
	if (wait == 0) { 
	o.removeAttribute("disabled"); 
	o.value="获取验证码"; 
	wait = 60; 
	} else { 
	o.setAttribute("disabled", true); 
	o.value="重新发送(" + wait + ")"; 
	wait--; 
	setTimeout(function() { 
	time(o) 
	}, 
	1000) 
	} 
	} 
	document.getElementById("btn").onclick=function(){time(this);} 
</script>
</body>
</html>