<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<head>
<jsp:include page="/pages/plugins/include_basepath.jsp"/>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="description" content="" />
        <meta name="format-detection" content="telephone=no, email=no" />
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
        <meta content="yes" name="apple-mobile-web-app-capable"> 
        <meta content="yes" name="apple-touch-fullscreen">    
        <meta content ="black" name="apple-mobile-web-app-status-bar-style">
        <meta name="App-Config" content="fullscreen=yes,useHistoryState=yes,transition=yes">
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="robots" content="all" />
		<title>帮助中心</title>
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
<body class="hTop">
	<div class="help_Center">
    	<ul>
        	<li><a href="pages/front/help/help_center_1.jsp">常见问题</a></li>
            <li><a href="pages/front/help/help_center_1.jsp">售后服务</a></li>
            <li><a href="pages/front/help/help_center_1.jsp">配送与验收</a></li>
            <li><a href="pages/front/help/help_center_1.jsp">隐私政策</a></li>
            <li><a href="pages/front/help/help_center_1.jsp">商务合作</a></li>
        </ul>
    </div
<jsp:include page="/pages/plugins/include_foot.jsp"/>
</body>
</html>