
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>购物车（支付方式）</title>
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
<div class="payment">
	<h2>请选择支付方式</h2>
    <ul>
        <li>
          <span class="gou_Btn gouBtn_1"></span>
          <span><img src="images/GL_icon_41.png">支付宝支付</span>
        </li>
        <li>
           <span class="gou_Btn"></span>
           <span><img src="images/GL_icon_50.png">微信支付</span>
        </li>                   	   	
     </ul>
</div>
<div class="pay_Way">
	<input type="button" value="付款" name="" onClick="window.open('pages/front/cart/shopping_cart_3.action','_self');">
</div>
<script src="js/jquery-1.11.0.min.js"></script>
 <script>
$(function(){
	$('.payment li').click(function(){
		$('.payment li span').removeClass('gouBtn_1');
		$(this).children(".gou_Btn").addClass('gouBtn_1');
	});
});	
</script>

</body>
</html>