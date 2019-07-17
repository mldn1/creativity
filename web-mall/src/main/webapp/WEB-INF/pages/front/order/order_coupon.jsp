<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html> 
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
	<title>优惠券</title>
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
			htmlFontSize();
	window.onresize = function(){
	htmlFontSize();
	}
 
	</script>
	</head>
	<body class="sTop5">
<div class="order_List coupon_Colr">
      <ul class="order_Tab coupon_Tab">
    <li class="cur">未使用</li>
    <li>已失效</li>
  </ul>
    </div>
<div class="order_Details on">
      <div class="coupon_On">
    <div class="coupon_Price">
          <h2><span>￥</span>30</h2>
          <p>满199可用</p>
        </div>
    <div class="coupon_Name">
          <h3>口红30元抵扣券，下单直接抵扣</h3>
          <p>有效期：2018.11.11-2018.11.12</p>
        </div>
    <div class="coupon_Rule">
          <p>美人仙灵一章，金口红可用，不可抵扣运费</p>
        </div>
    <div class="cover_On">剩余<br>
          9天</div>
    <br class="clear">
  </div>
      <div class="coupon_On">
    <div class="coupon_Price">
          <h2><span>￥</span>30</h2>
          <p>满199可用</p>
        </div>
    <div class="coupon_Name">
          <h3>口红30元抵扣券，下单直接抵扣</h3>
          <p>有效期：2018.11.11-2018.11.12</p>
        </div>
    <div class="coupon_Rule">
          <p>美人仙灵一章，金口红可用，不可抵扣运费</p>
        </div>
    <div class="cover_On">剩余<br>
          11天</div>
    <br class="clear">
  </div>
    </div>
<div class="order_Details">
      <div class="coupon_Off">
    <div class="coupon_Price">
          <h2><span>￥</span>30</h2>
          <p>满199可用</p>
        </div>
    <div class="coupon_Name">
          <h3>口红30元抵扣券，下单直接抵扣</h3>
          <p>有效期：2018.11.11-2018.11.12</p>
        </div>
    <div class="coupon_Rule">
          <p>美人仙灵一章，金口红可用，不可抵扣运费</p>
        </div>
    <div class="cover_Off">已过期</div>
    <br class="clear">
  </div>
      <div class="coupon_Off">
    <div class="coupon_Price">
          <h2><span>￥</span>30</h2>
          <p>满199可用</p>
        </div>
    <div class="coupon_Name">
          <h3>口红30元抵扣券，下单直接抵扣</h3>
          <p>有效期：2018.11.11-2018.11.12</p>
        </div>
    <div class="coupon_Rule">
          <p>美人仙灵一章，金口红可用，不可抵扣运费</p>
        </div>
    <div class="cover_Off">已过期</div>
    <br class="clear">
  </div>
    </div>
<script src="assets/js/jquery-1.11.0.min.js"></script> 
<script>
	 $(document).ready(function() {
     $(".order_Tab li").click(function() {
         $(".order_Tab li").eq($(this).index()).addClass("cur").siblings().removeClass('cur');
         $(".order_Details").hide().eq($(this).index()).show();
     });
 });
 	// 确认删除
	var $this  //获取被删除的元素
	var	all=false;
	$('body').on('click','.clearBContsh li a',function(){
		var clearType=$(this).attr('data-type');
		if(clearType=='1'){
			if(all){
				$('.order_Statu1').remove();
			}else{
				$('.clearModelBox').css('display','none')
				$this.parents('.order_Statu1').remove();
			}
			$('.clearModelBox').css('display','none')
		}else{
			$('.clearModelBox').css('display','none')
			return
		}
	})
	//删除商品
	$('body').on('click','.order_Del',function(){
		$('.clearModelBox').css('display','flex');
		$this =$(this)
	});
</script>

</body>
</html>
