
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
 
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>新建地址</title>
	<meta name="description" content="页面简述" />
	<meta name="keywords" content="关键词" />
    <link rel="stylesheet" href="assets/css/ydui.css?rev=@@hash"/>
    <link rel="stylesheet" href="assets/css/demo.css"/>
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
	<div class="new_Adds">
    	<ul>
        	<li><input name="" type="text" placeholder="姓名"></li>
            <li><input name="" type="tel" placeholder="手机号"></li>
            <li class="g-scrollview">
            	<div class="m-cell">
                    <div class="cell-item">
                        <div class="cell-right cell-arrow">
                            <input type="text" class="cell-input" readonly id="J_Address" placeholder="请选择收货地址">
                        </div>
                    </div>
                </div>
            </li>
            <li><input name="" type="text" placeholder="详细地址"></li>
        </ul>
         <div class="order_Agree">
			<span class="gray new_gray"><img src="assets/images/GL_icon_42.png"></span>
            <span>设为默认地址</span>
        </div>
    </div>
<div class="invoice_Confirm">
	<input type="button" value="取消" name=""  onclick="javascript:history.back(-1);"  />
    <input class="return_Pay" type="button" value="确定" name=""  onClick="window.open('pages/front/address/address.jsp','_self');"/>
</div>
    <script type="text/javascript" src="assets/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="assets/js/ydui.citys.js"></script>
<script type="text/javascript" src="assets/js/ydui.js"></script>
<script type="text/javascript">
$('body').on('click','.gray img',function(){
		var hSrc = $(this).attr('src')
		if(hSrc == 'assets/images/GL_icon_42.png'){
			 $(this).attr('src','assets/images/GL_icon_43.png')
		}else{
			$(this).attr('src','assets/images/GL_icon_42.png')
		}
	})
!function () {
	var $target = $('#J_Address');

	$target.citySelect();

	$target.on('click', function (event) {
		event.stopPropagation();
		$target.citySelect('open');
	});

	$target.on('done.ydui.cityselect', function (ret) {
		$(this).val(ret.provance + ' ' + ret.city + ' ' + ret.area);
	});
}();
</script> 

</body>
</html>