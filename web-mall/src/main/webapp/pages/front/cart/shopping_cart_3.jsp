
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>下单成功（没有头只有脚）</title>
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
<div class="pay_Success">
	<h2>下单成功</h2>
    <p>感谢您光临文创文创馆</p>
    <div class="success_Btn">
    	<input type="button" value="查看我的订单" name="" onClick="window.open('pages/front/order/order_details.jsp','_self');">
        <input type="button" value="继续逛逛" name="" onClick="window.open('pages/front/main/index.jsp','_self');">
    </div>
</div>
<div class="pay_Details">
	<div class="customer">
    	<h2><span>张三</span>133****8888</h2>
        <p>北京市xxxxxxxxxxxxxx</p>
    </div>
    <div class="pay_Price">
    	<h2><span>支付方式：</span>微信支付</h2>
        <h2><span>金额：</span>2,541.12元</h2>
    </div>
</div>

</body>
</html>