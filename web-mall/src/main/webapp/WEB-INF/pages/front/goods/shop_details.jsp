<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>

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
		<title>详情</title>
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
<style>
.swiper-slide img{ width:100%; height:auto;} 
#swiper-container1{ height:auto; position:relative;}
</style>
</head>

<body>
<div class="swiper-container" id="swiper-container1">
	<div class="return"><a href="active_page.action"><img src="images/GL_icon_34.png" border="0"></a></div>
    <div class="detaila_Link"><img src="images/GL_icon_16.png"></div>
    <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="http://192.168.28.132/${pictures[0]}"></div>
        <div class="swiper-slide"><img src="http://192.168.28.132/${pictures[1]}"></div>
        <div class="swiper-slide"><img src="http://192.168.28.132/${pictures[2]}"></div>
  </div>
    <div class="swiper-pagination"></div>
</div>
<div class="details_Font">
    <h2>${goods.description}</h2>
    <h3>${goods.title}</h3>
    <p>￥${goods.saleprice}</p>
</div>
<%--
<div class="details_Font">
    <h2>缠枝莲茶具（一盖四杯）</h2>
    <h3>缠枝莲纹，生生不息；传统青花，怡情养性</h3>
    <p>￥1,688.12</p>
</div>
--%>
<div class="details_Img">
<img src="images/GL_img_03.jpg">
<img src="images/GL_img_04.jpg">
<img src="images/GL_img_05.jpg">
<img src="images/GL_img_06.jpg">
<img src="images/GL_img_07.jpg">
<img src="images/GL_img_08.jpg">
<img src="images/GL_img_09.jpg">
<img src="images/GL_img_10.jpg">
<img src="images/GL_img_11.jpg">
</div>
<div class="sp_Shop">
	<div class="sp_Service">
    	<ul>
        	<li><a href="index.action" class="sp_Service1"><img src="images/GL_icon_36.png" border="0"></a></li>
            <li><a href="/pages/front/cart/shopping_cart.action" class="sp_Service2" id="end"><img src="images/GL_icon_35.png"></a></li>
        </ul>
    </div>


    <!--<div class="sp_Buy"><a href="shopping_cart_1.action">立即购买</a></div> -->
    <div class="sp_Shopping cd-cart-container empty"><a href="#" class="add_Cart"  goodsId="${goods.gid}" data-price="29.5">加入购物车</a>
    	<span class="cd-cart-trigger add_CartNum">
            <ul class="count" style="display:none;">
              <li>0</li>
              <li>0</li>
            </ul>
      </span>
  </div>

</div>
<!--上架提醒状态-->
<!--<div class="details_Remind">
	<div class="details_Remind1">
    	<a href="#"><img src="assets/images/GL_icon_13.png"></a>
        <a href="#"><img src="assets/images/GL_icon_36.png"></a>
        <a href="#"><img src="assets/images/GL_icon_35.png"></a>
    </div>
    <div class="details_Remind2">
    	<a href="#">上架提醒</a>
    </div>
</div>-->
<div class="sh_Model_box">
    <div id="msg" style="display:none;">已成功加入购物车！</div>
</div>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/swiper.min.js"></script>
<script src="js/main.js"></script>
<script src="js/jquery.fly.min.js"></script>
<script language="javascript"> 
var mySwiper = new Swiper('#swiper-container1',{
pagination : '.swiper-pagination',
//pagination : '#swiper-pagination1',
})
 //
 //    $('.sp_Spec li').eq(0).click(function(){
 //    	$('.sh_Model_box').show()
 //    	//$('.sh_Model_Center').css('bottom','6.7%')
 //    })
    $('.sh_Model_box').click(function(event){
    	var _con = $('.sh_Model_Center');  // 设置目标区域
        if(!_con.is(event.target) && _con.has(event.target).length === 0){ // Mark 1
      // $('.sh_Model_Center').css('bottom','-30rem')
    		$('.sh_Model_box').hide()
     }
    })
// 规格加减
    $('body').on('click','.sp_jia',function(){
		spNum($(this),1)
	})
	//购物车减
	$('body').on('click','.sp_jian',function(){
		spNum($(this),-1)
	})
	function spNum(obj,numT){
		var numB = parseInt(obj.parent().find('.sp_num').html())
		 numB = numB+numT
		if(numB <=1){
			numB=1
		}
		obj.parent().find('.sp_num').html((numB))
	}
	// 选中
	$('body').on('click','.sp_model_col li span',function(){
		listCheck($(this))
	})
	$('body').on('click','.sp_model_size li span',function(){
		listCheck($(this))
	})
	function listCheck(obj){
		if(obj.attr('class')== ''||obj.attr('class')==undefined){
			obj.parent().parent().parent().find('span').removeClass('sp_model_colLi')
			obj.addClass('sp_model_colLi')
		}else{
			obj.removeClass('sp_model_colLi')
		}
	}
	//飞入购物车效果
	var offset = $("#end").offset();
	$(".sp_Shopping").click(function(event){
        goodsId= $('.add_Cart').attr("goodsId") ;
        $.ajaxSettings.async = false;
        $.post("/pages/front/cart/goodsAdd.action",{goodsId:goodsId},function(result){
            if(result){
                $('.sh_Model_box').show()
                $("#msg").show().fadeOut(4000);
            }
        });
        $.ajaxSettings.async = true;


        //$('.sh_Model_box').destory();
    	//$('.sh_Model_Center').css('bottom','80%')
    	if($('.sp_model_colLi').html()!=undefined&&$('.sp_model_col').find('.sp_model_colLi').html()!=undefined){
    		var addcar = $('.sp_Model_zoom');
			var img = addcar.find('img').attr('src');
			var flyer = $('<img class="u-flyer" src="'+img+'">');
			flyer.fly({
				start: {
					left: event.pageX,
					top: event.pageY
				},
				end: {
					left: offset.left+10,
					top: offset.top+10,
					width: 0,
					height: 0
				},
				onEnd: function(){
					$("#msg").show().fadeOut(4000);
					addcar.css("cursor","default").removeClass('orange').unbind('click');
					this.destory();
				}
			});
    	}	
	});
</script>
</body>
</html>
