

<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
	<meta charset="utf-8">
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>错误页面</title>
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
<div class="pay_Fail">
	<img src="assets/images/GL_icon_55.png">
	<h2>加载失败</h2>
    <p>您的网络有点儿问题，请稍后重试</p>
    <div class="success_Btn">
    	<input type="button" value="返回" name="">
        <input type="button" value="刷新" name="">
    </div>
</div>
<jsp:include page="/pages/plugins/include_foot.jsp"/>
</body>
</html>