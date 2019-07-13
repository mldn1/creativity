
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    
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
<div class="shop_Address">
	<div class="shop_Addsicon"><img src="assets/images/GL_icon_11.png"></div>
  	<div class="shop_Addstext">
    	<h2><span></span><span>133****3333</span></h2>
        <p>北京市xxxxxxxxxxx </p>
    </div>
    <div class="shop_Addrevise"><a href="pages/front/address/address.jsp"><img src="assets/images/GL_icon_19.png"></a></div>
</div>
<!--未选择地址-->
<!--<div class="shop_Address">
  	<div class="shop_None">
    	<h2>您还没有添加或选择地址</h2>
    </div>
    <div class="shop_Addrevise1"><img src="assets/images/GL_icon_19.png"></div>
</div>-->
<div class="shop_Invoice">
	<div class="logistics">选择物流</div>
    <div class="mine_Check width_Choose">
       <div class="mine_Checked">
           <input class="orange" type="radio" name="group4" checked>顺丰快递
           <input class="orange" type="radio" name="group4">圆通快递
       </div>
    </div>                                                  
</div>
<div class="shop_Product">
	<div class="shop_Prolist">
    	<div class="shop_ProImg"><img src="assets/images/GL_img_02.jpg"></div>
        <div class="shop_Protext">
       	  <h2>缠枝莲缠枝莲缠枝莲缠枝莲缠枝莲缠</h2>
           	<p>红色</p>
            <span>1,380元/套</span>
        </div>
        <div class="shop_Pronum">
        	<p>×99</p>
        </div>
    </div>
    <div class="shop_Prolist">
    	<div class="shop_ProImg"><img src="assets/images/GL_img_02.jpg"></div>
        <div class="shop_Protext">
       	  <h2>缠枝莲缠枝莲缠枝莲缠枝莲缠枝莲缠</h2>
           	<p>红色</p>
            <span>1,380元/套</span>
        </div>
        <div class="shop_Pronum">
        	<p>×99</p>
        </div>
    </div>
</div>
<div class="shop_Invoice">
	<!--<span><b class="gary"><img src="assets/images/GL_icon_42.png"></b><i>我要开发票</i></span>-->
    <p class="gray"><img src="assets/images/GL_icon_42.png"><a href="pages/front/cart/shopping_cart_6.jsp"><i>开发票</i></a></p>
    <span class="shop_InvoiceR"><a href="pages/front/cart/shopping_cart_6.jsp"><img src="assets/images/GL_icon_19.png"></a></span>
</div>
<div class="shop_Details borderNone">
	<ul>
    	<li><span>商品总重量：</span>25.5kg</li>
        <li><span>商品合计：</span>2,451,12元</li>
        <li><span>运费：</span>15元</li>
        <li><span>总计：</span>2,451,27元</li>
        <li>
        	<span>优惠金额：</span>
            <ul class="quan_Colr">
            	<li>-10元（口红抵扣券）</li>
                <li>9.8折优惠券</li>
                <li>满198减10元</li>
            </ul>
        </li>
    </ul>
    <br class="clear">
</div>
<div class="shop_Agree">
    <p class="gray"><img src="assets/images/GL_icon_43.png"><span>我已同意<a href="#">《文化创意馆协议》</a></span></p>
</div>
<div class="shop_Pay">
	<span>应付：<i>2,451,27元</i></span>

    <input type="button" name="" value="下单" onClick="window.open('pages/front/cart/shopping_cart_2.jsp','_self');">
</div>
<script src="assets/js/jquery-1.11.0.min.js"></script>
<script>
	$('body').on('click','.gray img',function(){
		var hSrc = $(this).attr('src');
		if(hSrc == 'assets/images/GL_icon_42.png'){
			 $(this).attr('src','assets/images/GL_icon_43.png');
		}else{
			$(this).attr('src','assets/images/GL_icon_42.png');
		}
	})
</script>

</body>
</html>