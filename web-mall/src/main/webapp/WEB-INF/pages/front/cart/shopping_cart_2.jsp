
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>购物车（支付方式）</title>
	<meta name="description" content="页面简述" />
	<meta name="keywords" content="关键词" />
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
<body class="sTop1">
<div class="payment">
	<h2>请选择支付方式</h2>
    <ul>
        <li>
            <span class="gou_Btn" paymethod="alipay"></span>
            <span><img src="images/GL_icon_41.png">支付宝支付</span>
        </li>
        <li>
            <span class="gou_Btn" paymethod="wepay"></span>
            <span><img src="images/GL_icon_50.png">微信支付</span>
        </li>                   	   	
     </ul>
</div>
<div class="pay_Way">
	<input type="button" value="付款" name="pay" onClick="gotoNext();">
</div>
<div class="sh_Model_box">
    <div id="msg" style="display:none;">已成功使用<span id="payway" style="color: red;font-weight: bolder;"></span>支付<span style="color: red;font-weight: bolder;">${payMoney}</span>元，即将进入下一页面！</div>
</div>
<script src="js/jquery-1.11.0.min.js"></script>
 <script>
$(function(){
	$('.payment li').click(function(){
		$('.payment li span').removeClass('gouBtn_1');
		$(this).children(".gou_Btn").addClass('gouBtn_1');
	});
});
function gotoNext() {
    $('.sh_Model_box').show()
    $("#msg").show().fadeOut(4000);
    payway = $('.gouBtn_1').attr("paymethod") ;
    if(payway=='alipay'){
        $("#payway").html("支付宝");
    }else{
        $("#payway").html("微信支付");
    }
    fareTotal = $.getUrlParam('fareTotal');
    payMoney = $.getUrlParam('payMoney');
    goodsTotal = $.getUrlParam('goodsTotal');
    goodsIds = $.getUrlParam('goodsIds');
    logistics = $.getUrlParam('logistics');
    addressId = $.getUrlParam('addressId');
    setTimeout(function () {
        window.open('pages/front/cart/shopping_cart_3.action?fareTotal='+fareTotal+"&payMoney="+payMoney+"&goodsTotal="+goodsTotal+"&goodsIds="+goodsIds+"&logistics="+logistics+"&addressId="+addressId+"&payway="+payway,'_self');
    },"2500");
}

(function ($) {
    $.getUrlParam = function (name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
    }
})(jQuery);
</script>

</body>
</html>