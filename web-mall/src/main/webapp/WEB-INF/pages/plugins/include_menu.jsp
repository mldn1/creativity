<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<meta charset="utf-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<!-- --><title>header</title>
	<meta name="description" content="页面简述" />
	<meta name="keywords" content="关键词" />
    <link href="css/swiper.min.css" rel="stylesheet" type="text/css">
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
<div id="topNav" >
  <div class="swiper-wrapper" >
    <div class="swiper-slide swiper-slide-active active" date-id><span>全部</span></div>

    <c:forEach items="${allCategory}" var="category">
    <div class="swiper-slide" date-id='${category.cid} + 1'><span><a  href="active_page.action?cid=${category.cid}">${category.title}</a></span></div>
    </c:forEach>

  </div>
</div>  
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/swiper.min.js"></script>
<script type="text/javascript"> 
$(function(){
	$('.swiper-slide').on('click', function(){
		var id = $(this).attr('data-id');
		window.parent.viewClass(id);
	});
	$('body').css('background-color','#f7f5f0');
});
var mySwiper = new Swiper('#topNav', { 
    freeMode: true, 
    freeModeMomentumRatio: 0.5, 
    slidesPerView: 'auto', 
 
}); 
 
swiperWidth = mySwiper.container[0].clientWidth; 
maxTranslate = mySwiper.maxTranslate(); 
maxWidth = -maxTranslate + swiperWidth / 2; 
 
$(".swiper-container").on('touchstart', function(e) { 
    e.preventDefault(); 
}) 
 
mySwiper.on('tap', function(swiper, e) { 
 
    slide = swiper.slides[swiper.clickedIndex]; 
    slideLeft = slide.offsetLeft; 
    slideWidth = slide.clientWidth;
    slideCenter = slideLeft + slideWidth / 2;
    // 被点击slide的中心点 
 
    mySwiper.setWrapperTransition(300);
 
    if (slideCenter < swiperWidth / 2) { 
         
        mySwiper.setWrapperTranslate(0);
 
    } else if (slideCenter > maxWidth) { 
         
        mySwiper.setWrapperTranslate(maxTranslate);
 
    } else { 
 
        nowTlanslate = slideCenter - swiperWidth / 2;
 
        mySwiper.setWrapperTranslate(-nowTlanslate);
 
    } 
    $("#topNav  .active").removeClass('active');
    $("#topNav .swiper-slide").eq(swiper.clickedIndex).addClass('active');
 
})
</script>
</body>
</html>