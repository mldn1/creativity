
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    	 <jsp:include page="/pages/plugins/include_menu.jsp"/>
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>搜索（首页头）</title>
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
	<!--商品未上架-->
    <div class="search_None" style="display:none;">
    	<p>您寻找的商品还未上架...</p>
    </div>
    <div class="gouLike">
		<div class="gouLikeShop">
			<div class="gouLikeShopText">
				<a href="pages/front/goods/shop_details.jsp"><img src="assets/images/GL_img_14.jpg"></a>
				<div class="like_Text">
                    <p class="listName">文创出品,官方认证.....</p>
                    <p><i><span class="Daole">399</span><span>元/套</span></i></p>
                 </div>
			</div>
			<div class="gouLikeShopText">
			<a href="pages/front/goods/shop_details.jsp">	<img src="assets/images/GL_img_14.jpg"></a>
				<div class="like_Text">
                    <p class="listName">文创出品,官方认证.....</p>
                    <p><i><span class="Daole">399</span><span>元/套</span></i></p>
                </div>
			</div>
		</div>
	</div>
    <div class="search_Result">
    	<p>"青龙偃月刀"的结果较少</p>
        <p>试试<a href="pages/front/search/search_end.jsp">蚕丝宝甲</a></p>
    </div>
	 <jsp:include page="/pages/plugins/include_foot.jsp"/>

</body>
</html>