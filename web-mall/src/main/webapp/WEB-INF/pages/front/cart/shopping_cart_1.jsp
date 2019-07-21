<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no,minimum-scale=1.0user-scalable=no,"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="screen-orientation" content="portrait">
    <meta name="x5-orientation" content="portrait">
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>购物车（下单）</title>
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
<div class="shop_Address">
	<div class="shop_Addsicon"><img src="images/GL_icon_11.png"></div>
  	<div class="shop_Addstext">
    	<h2><span></span><span>133****3333</span></h2>
        <p>北京市xxxxxxxxxxx </p>
    </div>
    <div class="shop_Addrevise"><a href="pages/front/address/address.jsp"><img src="images/GL_icon_19.png"></a></div>
</div>
<!--未选择地址-->
<!--<div class="shop_Address">
  	<div class="shop_None">
    	<h2>您还没有添加或选择地址</h2>
    </div>
    <div class="shop_Addrevise1"><img src="images/GL_icon_19.png"></div>
</div>-->
<div class="shop_Invoice">
	<div class="logistics">选择物流</div>
    <div class="mine_Check width_Choose">
       <div class="mine_Checked">
           <input class="orange" type="radio" name="group4" data-value="20"  checked>顺丰快递
           <input class="orange" type="radio" name="group4" data-value="10"  >圆通快递
       </div>
    </div>                                                  
</div>
<div class="shop_Product">
    <c:forEach items="${allGoods}" var="goods" >
        <div class="shop_Prolist">
            <div class="shop_ProImg"><img src="http://49.234.26.219/${goods.goodsUrl}"></div>
            <div class="shop_Protext">
              <h2>${goods.goodsName}</h2>
                <span>${goods.price}元/套</span>
            </div>
            <div class="shop_Pronum">
                <p>×${goods.count}</p>
            </div>
        </div>
    </c:forEach>
</div>
<div class="shop_Invoice" style="display: none">
	<!--<span><b class="gary"><img src="images/GL_icon_42.png"></b><i>我要开发票</i></span>-->
    <p class="gray"><img src="images/GL_icon_42.png"><a href="pages/front/cart/shopping_cart_6.jsp"><i>开发票</i></a></p>
    <span class="shop_InvoiceR"><a href="pages/front/cart/shopping_cart_6.jsp"><img src="images/GL_icon_19.png"></a></span>
</div>
<div class="shop_Details borderNone">
	<ul>
        <li><span>商品合计：</span><span id="goodsTotal">${goodsMoneyTotal}</span>元</li>
        <li><span>运费：</span><span id="fareTotal">20</span>元</li>
        <li><span>总计：</span><span id="moneyTotal">${moneyTotal}</span>元</li>
    </ul>
    <br class="clear">
</div>
<div class="shop_Agree">
    <p class="gray"><img src="images/GL_icon_43.png"><span>我已同意<a href="#">《文化创意馆协议》</a></span></p>
</div>
<div class="shop_Pay">
	<span>应付：<i><span id="payMoney">${moneyTotal}</span>元</i></span>

    <input type="button" name="" value="下单" onClick="order();">
</div>
<script src="js/jquery-1.11.0.min.js"></script>
<script>
	$('body').on('click','.gray img',function(){
		var hSrc = $(this).attr('src');
		if(hSrc == 'images/GL_icon_42.png'){
			 $(this).attr('src','images/GL_icon_43.png');
		}else{
			$(this).attr('src','images/GL_icon_42.png');
		}
	})

    $('body').on('click','.orange',function(){
        var price = $(this).attr('data-value');
        result =  parseInt($("#goodsTotal").html())  + parseInt(price);
        $("#fareTotal").html(price) ;
        $("#moneyTotal").html(result) ;
        $("#payMoney").html(result) ;
    })
function order() {
    fareTotal = $("#fareTotal").html();
    payMoney = $("#payMoney").html();
    goodsTotal = $("#goodsTotal").html();
    addressId = '1' ;
    logistics = payMoney=="20"?"101":"102";
    window.open('pages/front/cart/shopping_cart_2.action?fareTotal='+fareTotal+"&payMoney="+payMoney+"&goodsTotal="+goodsTotal+"&goodsIds=${goodsIds}"+"&logistics="+logistics+"&addressId="+addressId,'_self');
}
</script>

</body>
</html>