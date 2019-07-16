
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>帮助中心</title>
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
<body class="hTop">
	<div class="help_Detalis">
    	<h2>1.文化创意馆的商品都是正品吗？</h2>
        <p>文化创意馆秉承一贯的严谨态度，对商品的产地、工艺、原材料都严格把关，力求帮消费者甄选到最优质的商品，您可以放心选购。</p>
    </div>
    <div class="help_Detalis">
    	<h2>2.文化创意馆的订单如何配送？</h2>
        <p>文化创意馆会根据商品所在地、顾客所在地和商品的尺寸重量选择顺丰快递配送，确保优质用户体验。目前暂不支持自选快递，具体物流信息可在下单成功后“我的订单-追踪物流”中查看。</p>
    </div>
	<jsp:include page="/pages/plugins/include_foot.jsp"/>
</body>
</html>