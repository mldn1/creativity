<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<title>订单详情</title>
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
<body class="sTop1" onLoad="init();">
<div class="pay_Status">
    <!--<span>待付款</span>-->
    <span class="font_Color">出库中</span>
    <!--<span class="font_Color">待收货</span>-->
    <!--<span class="font_ColorQx">已取消</span>-->
    <!--<span class="font_ColorWc">已完成</span>-->
</div>
<div class="details_Adds">
	<div class="shop_Addsicon1"><img src="images/GL_icon_11.png"></div>
  	<div class="shop_Addstext1">
    	<h2><span></span><span>133****2222</span></h2>
        <p>北京市xxxxxxxxxxxxxxxxxxx</p>
    </div>
</div>
<div class="shop_Product">
    <c:forEach items="${allOrderGood}" var="goods" >
        <div class="shop_Prolist">
            <div class="shop_ProImg"><img src="images/GL_img_02.jpg"></div>
            <div class="shop_Protext">
              <h2>${goods.goodsname}</h2>
                <span>${goods.price}元/套</span>
            </div>
            <div class="shop_Pronum">
                <p>×${goods.count}</p>
            </div>
        </div>
    </c:forEach>
</div>
<div class="shop_Details">
	<ul>
    	<li><span>订单编号：</span>${order.oid}</li>
        <li><span>下单时间：</span><fmt:formatDate value="${order.createdate}" pattern="yyyy-MM-dd"/> </li>
    </ul>
</div>
<div class="shop_Details">
	<ul>
    	<li><span>支付方式：</span>${order.payment=="1"?"微信":"支付宝"}</li>
    </ul>
</div>
<div class="shop_Details">
	<ul>
        <li><span>商品合计：</span>${order.allprice}元</li>
        <li><span>运费：</span>${order.fare}元</li>
        <li class="font_Color"><span>总计：</span>${order.endprice}元</li>
    </ul>
</div>
<!--待付款
<div class="order_Qx">
	<div class="order_Service"><a class=""><img src="images/GL_icon_13.png"></a></div>
    <div class="order_Cancel"><a href="#">取消订单</a></div>
    <div class="order_Payment" id="order_Payment"><a href="pages/front/cart/shopping_cart_2.action"><span id="showDiv"></span></a></div>
</div>
<div class="order_Qx">
	<div class="order_Service1"><a class="#"><img src="images/GL_icon_13.png"></a></div>
    <div class="order_CancelAll"><a href="#">取消订单</a></div>
</div>
-->
<!--待收货-->
<div class="order_Qx">
	<div class="order_Service1"><a class="#"><img src="images/GL_icon_13.png"></a></div>
    <div class="order_PaymentAll"><a href="#">查看物流</a></div>
</div>
<!--已取消-->
<!--<div class="order_Qx">
	<div class="order_Service2"><a class="#"><img src="images/GL_icon_13.png"></a></div>
</div>-->
<!--已完成
<div class="order_Qx">
	<div class="order_Service1"><a class="#"><img src="images/GL_icon_13.png"></a></div>
    <div class="order_CancelAll"><a href="#">申请退货</a></div>
</div>-->
<script src="js/jquery-1.11.0.min.js"></script>
<script>
  var time;      
            var showDiv=document.getElementById("showDiv");  
            var btn=document.getElementById("order_Payment");  
            var h=23;  
            var m=59;  
            var s=59;
		 //没有点击开始按钮的时候"showDiv"显示24:00:00,并且btn显示“开始”  
            function init(){  
                showDiv.innerHTML="付款:&nbsp;&nbsp;"+"24:00:00";
				time=setInterval("run()",1000);  
            } 
            //进行倒计时显示  
            function run(){  
                --s;  
                if(s<0){  
                    --m;  
                    s=59;  
                }  
                if(m<0){  
                    --h;  
                    m=59  
                }  
                if(h<0){  
                    s=0;  
                    m=0;  
                }  
                showDiv.innerHTML="付款:&nbsp;&nbsp;"+h+":"+m+":"+s;  
            } 
</script>

</body>
</html>
