<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_menu.jsp"/>
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
    <title>国礼首页</title>
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
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/swiper.min.css" rel="stylesheet" type="text/css">
    <link href="css/mystyle.css" rel="stylesheet" type="text/css">
    <script src="js/jquery-1.11.0.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
</head>

<body>
<div class="head_Logo">
    <div class="head_Link"><a href="#"><img src="images/GL_icon_16.png"></a></div>
</div>

<script src="js/swiper.min.js"></script>
<div class="swiper-container">
    <div class="swiper-wrapper">

        <c:forEach items="${showGoods}" var="goods">
            <section class="swiper-slide swiper-slide1"><a href="shop_details.action?gid=${goods.gid}"><img data-src="http://49.234.26.219/${goods.showpicture}" class="swiper-lazy"></a><div class="swiper-lazy-preloader"></div></section>
        </c:forEach>

    </div>
    <div class="swiper-button-next"></div>
</div>
<script src="js/main.js"></script>
<div class="cart_shop">
    <a href="#" class="cd-add-to-cart" data-price="29.5"></a>
</div>


<script type="text/javascript">
    $(function(){
        $('.nav_link_ul li a').click(function(){
            $(this).addClass('active');
            $('.nav_link_ul li a').not(this).removeClass('active');
        });
    });
    scaleW=window.innerWidth/320;
    scaleH=window.innerHeight/480;
    var resizes = document.querySelectorAll('.resize');
    for (var j=0; j<resizes.length; j++) {
        resizes[j].style.width=parseInt(resizes[j].style.width)*scaleW+'px';
        resizes[j].style.height=parseInt(resizes[j].style.height)*scaleH+'px';
        resizes[j].style.top=parseInt(resizes[j].style.top)*scaleH+'px';
        resizes[j].style.left=parseInt(resizes[j].style.left)*scaleW+'px';
    }

    var mySwiper = new Swiper ('.swiper-container', {
        direction : 'vertical',
        nextButton:'.swiper-button-next',
        mousewheelControl : true,
        lazyLoading : true,
        onInit: function(swiper){
            //swiperAnimateCache(swiper);
            // swiperAnimate(swiper);
        },
        onSlideChangeEnd: function(swiper){
            //swiperAnimate(swiper);
        },
        onTransitionEnd: function(swiper){
            //swiperAnimate(swiper);
        },


        watchSlidesProgress: true,

        onProgress: function(swiper){
            for (var i = 0; i < swiper.slides.length; i++){
                var slide = swiper.slides[i];
                var progress = slide.progress;
                var translate = progress*swiper.height/4;
                scale = 1 - Math.min(Math.abs(progress * 0.5), 1);
                var opacity = 1 - Math.min(Math.abs(progress/2),0.5);
                slide.style.opacity = opacity;
                es = slide.style;
                es.webkitTransform = es.MsTransform = es.msTransform = es.MozTransform = es.OTransform = es.transform = 'translate3d(0,'+translate+'px,-'+translate+'px) scaleY(' + scale + ')';

            }
        },
        onSetTransition: function(swiper, speed) {
            for (var i = 0; i < swiper.slides.length; i++){
                es = swiper.slides[i].style;
                es.webkitTransitionDuration = es.MsTransitionDuration = es.msTransitionDuration = es.MozTransitionDuration = es.OTransitionDuration = es.transitionDuration = speed + 'ms';

            }
        },
    })
</script>
<jsp:include page="/WEB-INF/pages/plugins/include_foot.jsp"/>
</body>
</html>
