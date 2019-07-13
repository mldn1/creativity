
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>地址管理</title>
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
	<!--未添加收货地址-->
	<!--<div class="adds_None">
    	<p>您还未添加收货地址</p>
    </div>-->
	<div class="mine_Address AddsBtn_1">
    	<div class="mine_Name">
        	<div class="shop_Addsicon2"><img src="assets/images/GL_icon_11.png"></div>
            <span>默认</span>
        </div>
        <div class="address_Choose">
       	  <h2> 138****8888</h2>
          <p>北京市xxx</p>
        </div>
        <div class="adds_Revise"><a href="pages/front/address/edit-address.jsp"><img src="assets/images/GL_icon_27.png" border="0"></a></div>
        <div class="adds_Del"><img src="assets/images/GL_icon_29.png" border="0"></a></div>
	</div>
    <div class="mine_Address">
    	<div class="mine_Name">
        	<div class="shop_Addsicon2"><img src="assets/images/GL_icon_11.png"></div>
        </div>
        <div class="address_Choose">
       	  <h2><span>李四 </span>133****3333</h2>
          <p>北京市xxx</p>
        </div>
        <div class="adds_Revise"><a href="pages/front/address/edit-address.jsp"><img src="assets/images/GL_icon_27.png" border="0"></a></div>
        <div class="adds_Del"><a href="#"><img src="assets/images/GL_icon_29.png"></a></div>
	</div>
    <div class="mine_Address">
    	<div class="mine_Name">
        	<div class="shop_Addsicon2"><img src="assets/images/GL_icon_11.png"></div>
        </div>
        <div class="address_Choose">
       	  <h2><span>王五 </span>135****5555</h2>
          <p>北京市xxx</p>
        </div>
        <div class="adds_Revise"><a href="pages/front/address/edit-address.jsp"><img src="assets/images/GL_icon_27.png" border="0"></a></div>
        <div class="adds_Del"><a href="#"><img src="assets/images/GL_icon_29.png"></a></div>
	</div>
    <div class="new_Address">
    	<a href="pages/front/address/add-address.jsp">
    		<img src="assets/images/GL_icon_40.png">
        	<span>新增地址</span>        </a>    </div>
    <div class="clearModelBox">
		<div class="clearBCont">
			<div class="clearBContText">
				你确定删除该地址吗？
			</div>
			<div class="clearBContsh">
				<ul class="clearfix">
					<li><a href="javascript:;" class="cancel_Btn" data-type="0">取消</a></li>
					<li><a href="javascript:;" class="confirm_Btn" data-type="1">确定</a></li>
				</ul>
			</div>
		</div>
	</div>
      <script src="assets/js/jquery-1.11.0.min.js"></script>
<script>
    	// 确认删除
	var $this  //获取被删除的元素
	var	all=false;
	$('body').on('click','.clearBContsh li a',function(){
		var clearType=$(this).attr('data-type');
		if(clearType=='1'){
			if(all){
				$('.mine_Address').remove();
			}else{
				$('.clearModelBox').css('display','none')
				$this.parents('.mine_Address').remove();
			}
			$('.clearModelBox').css('display','none')
		}else{
			$('.clearModelBox').css('display','none')
			return
		}
	})
	//删除商品
	$('body').on('click','.adds_Del a',function(){
		$('.clearModelBox').css('display','flex');
		$this =$(this)
	})
	//选择收货地址
	$(function(){
	$('.mine_Address').click(function(){
		$('.mine_Address').removeClass('AddsBtn_1');
		$(this).addClass('AddsBtn_1');
	});
});	
    </script>

</body>

</html>