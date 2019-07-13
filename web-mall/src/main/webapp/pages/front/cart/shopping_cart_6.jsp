
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>发票信息</title>
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
	<div class="order_Card">
	<ul>
    	<li class="none_Border"><span class="Card_l gray">发票类型:<i class="in_Mar">电子普通发票</i></span></li>
        <li class="gray in_Line">电子发票是税务局认可的有效凭证，其法律效力、基本用途及使用规定同纸质发票</li>
    </ul>
</div>
<div class="order_Card">
	<div class="order_Nav">
    	<span class="in_Start gray">*发票抬头</span>
    	<ul class="tabs">
        	<li class="in_TypeN"><a href="#tab1">个人</a></li>
            <li><a href="#tab2">单位</a></li>
        </ul>
    </div>
    <div class="tab_container">
    	<div id="tab1" class="tab_content" style="display:none;"> 
            <ul class="in_Li">
               <li class="in_Hint"><span class="gray"><input class="in_Input in_Mar0" name="" placeholder="请输入个人或姓名" type="text"></span><span style="color:#c01010;">*内容不能为空</span></li>
                <li><span class="Card_l gray">发票内容<i class="in_Mar">明细</i></span></li>
                <li><span class="Card_l gray">发票金额<i class="in_Mar">￥188.00</i></span></li> 
            </ul>
        </div>
        <div id="tab2" class="tab_content in_Li" style="display:none;"> 
            <ul class="in_Li">
                <li><span class="gray"><input class="in_Input in_Mar0" name="" placeholder="请输入单位名称" type="text"></span><span style="color:#c01010;">*内容不能为空</span></li>
        <li><span class="gray"><input class="in_Input in_Mar0" name="" placeholder="*纳税人识别号" type="number"></span><span style="color:#c01010;">*内容不能为空</span></li>
                <li><span class="Card_l gray">发票内容<i class="in_Mar">明细</i></span></li>
                <li><span class="Card_l gray">发票金额<i class="in_Mar">￥188.00</i></span></li>
            </ul>
        </div>
    </div>
</div>
<div class="order_Card">
	<ul>
    	<li><span class="gray in_Width">*收票人手机<input class="in_Input" name="" placeholder="开好发票通知您" type="tel"></span></li>
        <li><span class="gray in_Width">收票人邮箱<input class="in_Input" name="" placeholder="用于接收电子发票" type="email"></span></li>
    </ul>
</div>
<div class="in_Text">
    <ul>
    	<li>更多发票类型</li>
        <li>发票须知：</li>
        <li>1.依照税局最新开票法规，纸质普通发票和电子普通发票，开具内容均为明细</li>
        <li>2.开票金额为用户实际支付的金额（不含礼品卡与不支持发票
类型的商品实付金额）</li>
		<li>3.电子发票可在确认收货后，在“订单详情页”或“售后服务”-我的发票“下载”</li>
    </ul>
</div>
<div class="invoice_Confirm">
	<input type="button" value="取消" name="" onClick="window.open('pages/front/cart/shopping_cart_1.jsp','_self');"/>
    <input class="return_Pay" type="button" value="确定" name="" onClick="window.open('pages/front/cart/shopping_cart_1.jsp','_self');"/>
</div>
<script src="assets/js/jquery-1.11.0.min.js"></script>
<script>
	$('body').on('click','.gray img',function(){
		var hSrc = $(this).attr('src')
		if(hSrc == 'assets/images/quanxuan_1.png'){
			 $(this).attr('src','assets/images/quanxuan_2.png')
		}else{
			$(this).attr('src','assets/images/quanxuan_1.png')
		}
	})
	/*单位个人发票切换*/
	$(function(){
		$(".tab_content").hide(); //Hide all content  
		$("ul.tabs li:first").addClass("in_TypeN").show(); //Activate first tab  
		$(".tab_content:first").show(); //Show first tab content  
		  
		//On Click Event  
		$("ul.tabs li").click(function() {  
			$("ul.tabs li").removeClass("in_TypeN"); //Remove any "active" class  
			$(this).addClass("in_TypeN"); //Add "active" class to selected tab  
			$(".tab_content").hide(); //Hide all tab content  
			var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content  
			$(activeTab).fadeIn(); //Fade in the active content  
			return false;  
		});  
});
</script>
	

</body>
</html>