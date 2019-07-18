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
		<title>订单</title>
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
			htmlFontSize();
	window.onresize = function(){
	htmlFontSize();
	}
 
	</script>
</head>
<body>
<div class="order_List">
    <ul class="order_Tab">
        <li class="cur">全部</li>
        <li>待付款</li>
        <li>待发货</li>
        <li>待收货</li>
        <li>已完成</li>
    </ul>
</div>
<div class="order_Details on">
	<div class="order_Statu1">
    	<div class="order_StatuTit">
        	<span>订单编号：1984579875472</span>
            <span>取消订单</span>
        </div>
        <div class="order_StatuText">
        	<div class="order_Img"><img src="images/GL_img_14.jpg"></div>
            <div class="order_StatuFont">
            	<h2>缠枝莲（一杯四盖）<span>×99</span></h2>
                <p>红色</p>
            </div>
            <div class="order_Nowstatu">
            	<p>待付款</p>
            </div>
        </div>
        <div class="order_Pay">
        	<span>应付：1,388.23元</span>
            <input type="button" value="付款" name=""  onclick="javascrtpt:window.location.href='pages/front/order/order_details.jsp'">
        </div>
    </div>
    <div class="order_Statu1">
    	<div class="order_StatuTit">
        	<span>订单编号：1984579875472</span>
            <span>联系客服</span>
        </div>
        <div class="order_StatuText">
        	<div class="order_Img"><img src="images/GL_img_14.jpg"></div>
            <div class="order_StatuFont">
            	<h2>缠枝莲（一杯四盖）<span>×99</span></h2>
                <p>红色</p>
            </div>
            <div class="order_Nowstatu1">
            	<p>出库中</p>
            </div>
        </div>
        <div class="order_Pay1">
        	<span>应付：1,388.23元</span>
            <input type="button" value="取消订单" name="">
        </div>
    </div>
    <div class="order_Statu1">
    	<div class="order_StatuTit">
        	<span>订单编号：1984579875472</span>
            <span>联系客服</span>
        </div>
        <div class="order_StatuText">
        	<div class="order_Img"><img src="images/GL_img_14.jpg"></div>
            <div class="order_StatuFont">
            	<h2>缠枝莲（一杯四盖）<span>×99</span></h2>
                <p>红色</p>
            </div>
            <div class="order_Nowstatu1">
            	<p>待收货</p>
            </div>
        </div>
        <div class="order_Pay2">
        	<span>应付：1,388.23元</span>
            <input type="button" value="查看物流" name="">
        </div>
    </div>
    <div class="order_Statu1">
    	<div class="order_StatuTit">
        	<span>订单编号：1984579875472</span>
            <span class="order_Del">删除</span>
        </div>
        <div class="order_StatuText">
        	<div class="order_Img"><img src="images/GL_img_14.jpg"></div>
            <div class="order_StatuFont">
            	<h2>缠枝莲（一杯四盖）<span>×99</span></h2>
                <p>红色</p>
            </div>
            <div class="order_Nowstatu1">
            	<p class="font_ColorWc">已完成</p>
            </div>
        </div>
        <div class="order_Pay2">
        	<span>应付：1,388.23元</span>
        </div>
    </div>
    <div class="order_Statu1">
    	<div class="order_StatuTit">
        	<span>订单编号：1984579875472</span>
            <span class="order_Del">删除</span>
        </div>
        <div class="order_StatuText">
        	<div class="order_Img"><img src="images/GL_img_14.jpg"></div>
            <div class="order_StatuFont">
            	<h2>缠枝莲（一杯四盖）<span>×99</span></h2>
                <p>红色</p>
            </div>
            <div class="order_Nowstatu1">
            	<p class="font_ColorQx">已取消</p>
            </div>
        </div>
        <div class="order_Pay2">
        	<span>应付：1,388.23元</span>
        </div>
    </div>
</div>
<div class="order_Details">
	<div class="gouConterText">
					<img src="images/GL_icon_45.png">
                    <p>您还没有任何订单<br>去挑点儿什么吧！</p>
					<div class="gouBtn">新品推荐</div>
	</div>
	<div class="cainilike">
            	<div class="gouLike">
				<div class="dropMore mar_Bottom"><div class="dropLeft"></div><div class="dropload-refresh like_Cai">猜你喜欢</div><div class="dropRight"></div></div>
				<div class="gouLikeShop">
					  <div class="gouLikeShopText">
						<img src="images/GL_img_14.jpg">
						<div class="like_Text">
                                <p class="listName">文创出品,官方认证.....</p>
                                <p><i><span class="Daole">399</span><span>元/套</span></i></p>
                        </div>
						</div>
						<div class="gouLikeShopText">
							<img src="images/GL_img_14.jpg">
							<div class="like_Text">
                                <p class="listName">文创出品,官方认证.....</p>
                                <p><i><span class="Daole">399</span><span>元/套</span></i></p>
                            </div>
						</div>
						<div class="gouLikeShopText">
							<img src="images/GL_img_14.jpg">
							<div class="like_Text">
                                <p class="listName">文创出品,官方认证.....</p>
                                <p><i><span class="Daole">399</span><span>元/套</span></i></p>
                            </div>
						</div>
						<div class="gouLikeShopText">
							<img src="images/GL_img_14.jpg">
                            <div class="like_Text">
                                <p class="listName">文创出品,官方认证.....</p>
                                <p><i><span class="Daole">399</span><span>元/套</span></i></p>
                            </div>
						</div>
				</div>
			</div>
            </div>
</div>
<div class="order_Details">
	<div class="order_Statu1">
    	<div class="order_StatuTit">
        	<span>订单编号：1984579875472</span>
            <span>联系客服</span>
        </div>
        <div class="order_StatuText">
        	<div class="order_Img"><img src="images/GL_img_14.jpg"></div>
            <div class="order_StatuFont">
            	<h2>缠枝莲（一杯四盖）<span>×99</span></h2>
                <p>红色</p>
            </div>
            <div class="order_Nowstatu1">
            	<p>出库中</p>
            </div>
        </div>
        <div class="order_Pay1">
        	<span>应付：1,388.23元</span>
            <input type="button" value="取消订单" name="">
        </div>
    </div>
    <div class="order_Statu1">
    	<div class="order_StatuTit">
        	<span>订单编号：1984579875472</span>
            <span>联系客服</span>
        </div>
        <div class="order_StatuText">
        	<div class="order_Img"><img src="images/GL_img_14.jpg"></div>
            <div class="order_StatuFont">
            	<h2>缠枝莲（一杯四盖）<span>×99</span></h2>
                <p>红色</p>
            </div>
            <div class="order_Nowstatu1">
            	<p>出库中</p>
            </div>
        </div>
        <div class="order_Pay1">
        	<span>应付：1,388.23元</span>
            <input type="button" value="取消订单" name="">
        </div>
    </div>
</div>
<div class="order_Details">
	<div class="order_Statu1">
    	<div class="order_StatuTit">
        	<span>订单编号：1984579875472</span>
            <span>联系客服</span>
        </div>
        <div class="order_StatuText">
        	<div class="order_Img"><img src="images/GL_img_14.jpg"></div>
            <div class="order_StatuFont">
            	<h2>缠枝莲（一杯四盖）<span>×99</span></h2>
                <p>红色</p>
            </div>
            <div class="order_Nowstatu1">
            	<p>待收货</p>
            </div>
        </div>
        <div class="order_Pay2">
        	<span>应付：1,388.23元</span>
            <input type="button" value="查看物流" name="">
        </div>
    </div>
    <div class="order_Statu1">
    	<div class="order_StatuTit">
        	<span>订单编号：1984579875472</span>
            <span>联系客服</span>
        </div>
        <div class="order_StatuText">
        	<div class="order_Img"><img src="images/GL_img_14.jpg"></div>
            <div class="order_StatuFont">
            	<h2>缠枝莲（一杯四盖）<span>×99</span></h2>
                <p>红色</p>
            </div>
            <div class="order_Nowstatu1">
            	<p>待收货</p>
            </div>
        </div>
        <div class="order_Pay2">
        	<span>应付：1,388.23元</span>
            <input type="button" value="查看物流" name="">
        </div>
    </div>
</div>
<div class="order_Details">
	<div class="order_Statu1">
    	<div class="order_StatuTit">
        	<span>订单编号：1984579875472</span>
            <span class="order_Del">删除</span>
        </div>
        <div class="order_StatuText">
        	<div class="order_Img"><img src="images/GL_img_14.jpg"></div>
            <div class="order_StatuFont">
            	<h2>缠枝莲（一杯四盖）<span>×99</span></h2>
                <p>红色</p>
            </div>
            <div class="order_Nowstatu1">
            	<p class="font_ColorWc">已完成</p>
            </div>
        </div>
        <div class="order_Pay2">
        	<span>应付：1,388.23元</span>
        </div>
    </div>
    <div class="order_Statu1">
    	<div class="order_StatuTit">
        	<span>订单编号：1984579875472</span>
            <span class="order_Del">删除</span>
        </div>
        <div class="order_StatuText">
        	<div class="order_Img"><img src="images/GL_img_14.jpg"></div>
            <div class="order_StatuFont">
            	<h2>缠枝莲（一杯四盖）<span>×99</span></h2>
                <p>红色</p>
            </div>
            <div class="order_Nowstatu1">
            	<p class="font_ColorWc">已完成</p>
            </div>
        </div>
        <div class="order_Pay2">
        	<span>应付：1,388.23元</span>
        </div>
    </div>
</div>
<div class="clearModelBox">
		<div class="clearBCont">
			<div class="clearBContText">
				你确定删除该订单吗？
			</div>
			<div class="clearBContsh">
				<ul class="clearfix">
					<li><a href="javascript:;" class="cancel_Btn" data-type="0">取消</a></li>
					<li><a href="javascript:;" class="confirm_Btn" data-type="1">确定</a></li>
				</ul>
			</div>
		</div>
	</div>
<script src="js/jquery-1.11.0.min.js"></script>
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
<jsp:include page="/WEB-INF/pages/plugins/include_foot.jsp"/>
</body>
</html>
