<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html> 

<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>专题</title>
	<meta name="description" content="页面简述" />
	<meta name="keywords" content="关键词" />
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
<link href="assets/css/style.css" rel="stylesheet" type="text/css">
<link href="assets/css/swiper.min.css" rel="stylesheet" type="text/css">
<link href="assets/css/mystyle.css" rel="stylesheet" type="text/css">
<style>
	.swiper-container{ height:auto;}
</style>
<script src="assets/js/jquery-1.11.0.min.js"></script>
</head>

<body>
<div class="GL_title">
	<img src="assets/images/GL_img_30.jpg">
</div>
<div class="special_put">
	<input type="text" placeholder="搜索" name="" value="" />
</div>
<div class="swiper-container">
  <div class="swiper-wrapper">
    <div class="swiper-slide"><img src="assets/images/GL_img_31.jpg"></div>
    <div class="swiper-slide"><img src="assets/images/GL_img_31.jpg"></div>
    <div class="swiper-slide"><img src="assets/images/GL_img_31.jpg"></div>
  </div>
  <div class="swiper-pagination"></div>
</div>
<script src="assets/js/swiper.min.js"></script>
<script>
 var mySwiper = new Swiper('.swiper-container',{
    loop : true,
	autoplay:2000,
	pagination : '.swiper-pagination',
  })
</script>
</body>
</html>
