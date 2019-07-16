
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>个人信息</title>
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
<body class="sTop1">
	<div class="my_Information">
    	<div class="my_Icon">
        	<span>头像</span>
            <div class="head_Icon"><img src="assets/images/GL_img_20.jpg"></div>
        </div>
        <div class="my_Datum">
        	<ul>
                <li>
                    <span>用户ID</span>
                    <i>128389745748894</i>
                </li>
                <li>
                    <span>昵称</span>
                    <div class="mine_Check mar_Right">
                        <input type="text" value="XXX" />
                    <div>
                </li>
                <li>
                    <span>性别</span>
                    <div class="mine_Check">
                        <div class="mine_Checked">
                            <input class="orange" type="radio" name="group4" checked>男
                            <input class="orange" type="radio" name="group4">女
                        </div>
                        <a href="#"><img src="assets/images/GL_icon_19.png"></a>
                    </div>
                </li>
                <li>
                    <span>出生日期</span>
                    <div class="mine_Check">
                    	<input type="date" name="" placeholder="/年/月/日">
                    </div>
                </li>
                <li>
                    <span>修改密码</span>
                    <div class="mine_Check">
                        <a href="#"><img src="assets/images/GL_icon_19.png"></a>
                    </div>
                </li>
                <li>
                    <span>绑定手机</span>
                    <div class="mine_Check">
                        <b>133****5555</b>
                        <a href="pages/front/my/minephone.jsp"><img src="assets/images/GL_icon_19.png" border="0"></a>                    </div>
                </li>
        	</ul>
        </div>
    </div>
<div class="invoice_Confirm">
	<input type="button" value="取消" name="" />
    <input class="return_Pay" type="button" value="确定" name="" />
</div>
<jsp:include page="/WEB-INF/pages/plugins/include_foot.jsp"/>
</body>
</html>