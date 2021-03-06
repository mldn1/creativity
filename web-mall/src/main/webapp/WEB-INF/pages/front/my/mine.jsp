<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<head>
	<jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
	<meta charset="utf-8">
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>个人中心</title>
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
<body class="sTop1">
	<div class="head_Portrait">
    	<div class="head_Center">
        	<div class="head_Icon"><img src="images/GL_img_20.jpg"></div>
            <span>Aary</span>
        </div>
    </div>
        <div class="my_Order">
    	  <a href="pages/front/order/order_status.action">
            	<div class="Order_pic1"><img src="images/GL_icon_21.png"></div>
            	<p>我的订单</p>
            </a>
            <a href="pages/front/order/order_coupon.action">
            	<div class="Order_pic2"><img src="images/GL_icon_61.png"></div>
            	<p>我的优惠券</p>
          </a>
</div>
        <div class="mine_List">
        	<ul>
            	<li><a href="address.action"><img src="images/GL_icon_11.png">
           	  <p>地址管理</p></a></li>
                <li><a href="#"><img src="images/GL_icon_13.png"><p>联系客服</p></a></li>
                <li><a href="help_center.action"><img src="images/GL_icon_23.png">
              <p>帮助中心</p></a></li>
                <li><a href="mineset.action"><img src="images/GL_icon_25.png">
              <p>账号设置</p></a></li>
            </ul>
        </div>
	<shiro:notAuthenticated>
	    <div class="mine_Btn">
		    <input type="button" value="登   录" name="" onclick="window.location.href='login.action'"/>
	    </div>
	</shiro:notAuthenticated>
    <shiro:authenticated>
        <div class="mine_Btn">
        	<input type="button" value="退出登录" name="" onclick="window.location.href='/logout.shiro'"/>
        </div>
    </shiro:authenticated>
<jsp:include page="/WEB-INF/pages/plugins/include_foot.jsp"/>
</body>
</html>