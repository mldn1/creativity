<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<title>购物车</title>
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
<body>
<div class="gouBox">
			<header class="login_Head">
            <div class="sp_Return"><a href="pages/front/main/index.jsp"><img src="assets/images/GL_icon_18.png" border="0"></a></div>
            <div class="gw_Shop"><span>购物车</span></div>
            <div style="margin-right:4%;"><a href="javascript:;" class="gw_ShopB">编辑</a></div>
        </header>
			<div class="gouConter">
				<!-- 购物车无内容时 显示 -->				
				<div class="gouConterText" style="display: none;">
					<img src="assets/images/images/GL_icon_45.png">
                    <p>您的购物袋还是空的呢...<br>去挑点儿什么吧！</p>
					<div class="gouBtn">新品推荐</div>
				</div>
				<!-- 购物车内容列表 -->
				<div class="gouLisBox">
					<div class="gouListFor clearfix">
						<div class="gouListLeft">
							<div class="el-checkbox">
								<a href="javascript:;" class="checkbox"><img src="assets/images/GL_icon_42.png"></a>
							</div>
						</div>
						<div class="gouListcon"><img src="assets/images/GL_img_14.jpg"></div>
						<div class="gouListRight">
							<h3>秋硕飘香茶盘</h3>
							<p>红色</p>
							<div class="gouJian">
								<ul class="clearfix">
									<li><span class="gouNum" data-num="1380">1380</span><span>元</span></li>
									<li class="flex_End"><span class="goujianh">-</span><span class="gounub">1</span><span class="goujiah">+</span></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="gouListFor clearfix">
						<div class="gouListLeft">
							<div class="el-checkbox">
								<a href="javascript:;" class="checkbox"><img src="assets/images/GL_icon_42.png"></a>
							</div>
						</div>
						<div class="gouListcon"><img src="assets/images/GL_img_14.jpg"></div>
						<div class="gouListRight">
							<h3>秋硕飘香茶盘</h3>
							<p>红色</p>
							<div class="gouJian">
								<ul class="clearfix">
									<li><span class="gouNum" data-num="1380">1380</span><span>元</span></li>
									<li class="flex_End"><span class="goujianh">-</span><span class="gounub">1</span><span class="goujiah">+</span></li>
								</ul>
							</div>
						</div>
					</div>
			<div class="lose_Efficacy" id="delDiv">
                <div class="lose_Head">
                    <span>已失效</span>
                    <a href="#" onClick="ShowDiv('MyDiv3','fade')">全部清除</a>
                </div>
                <div class="lose_Text">
                    <ul>
                        <li>
                            <div class="lose_Img"><img src="assets/images/GL_img_14.jpg"></div>
                            <div class="lose_h2">
                                <h2>缠枝莲缠枝莲缠枝莲缠枝莲缠枝莲缠莲缠</h2>
                                <p>红色</p>
                                <p>1,380.00 元</p>
                            </div>
                        </li>
                        <li>
                            <div class="lose_Img"><img src="assets/images/GL_img_14.jpg"></div>
                            <div class="lose_h2">
                                <h2>缠枝莲缠枝莲缠枝莲缠枝莲缠枝莲缠莲缠</h2>
                                <p>红色</p>
                                <p>1,380.00 元</p>
                            </div>
                        </li>
                    </ul>
                </div>
        </div>
        <!--猜你喜欢-->
        <div class="cainilike">
            	<div class="gouLike">
				<div class="dropMore mar_Bottom"><div class="dropLeft"></div><div class="dropload-refresh like_Cai">猜你喜欢</div><div class="dropRight"></div></div>
				<div class="gouLikeShop">
					  <div class="gouLikeShopText">
						<img src="assets/images/GL_img_14.jpg">
						<div class="like_Text">
                                <p class="listName">文创出品,官方认证.....</p>
                                <p><i><span class="Daole">399</span><span>元/套</span></i></p>
                        </div>
						</div>
						<div class="gouLikeShopText">
							<img src="assets/images/GL_img_14.jpg">
							<div class="like_Text">
                                <p class="listName">文创出品,官方认证.....</p>
                                <p><i><span class="Daole">399</span><span>元/套</span></i></p>
                            </div>
						</div>
						<div class="gouLikeShopText">
							<img src="assets/images/GL_img_14.jpg">
							<div class="like_Text">
                                <p class="listName">文创出品,官方认证.....</p>
                                <p><i><span class="Daole">399</span><span>元/套</span></i></p>
                            </div>
						</div>
						<div class="gouLikeShopText">
							<img src="assets/images/GL_img_14.jpg">
                            <div class="like_Text">
                                <p class="listName">文创出品,官方认证.....</p>
                                <p><i><span class="Daole">399</span><span>元/套</span></i></p>
                            </div>
						</div>
				</div>
			</div>
            </div>
		</div>
			</div>
			<div class="fiexBootm">
				<div class="fiexBox">
					<ul class="clearfix1 choose">
						<li><a href="javascript:;" class="quanxuan"><img src="assets/images/GL_icon_42.png"/><b>全部选择</b></a></li>
						<li class="gl_Del"><span class="hejiNum">总计:0</span><a class="jiesuan" href="pages/front/cart/shopping_cart_1.jsp">下单</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clearModelBox">
			<div class="clearBCont">
            	<h2>提示</h2>
				<div class="clearBContText">
					你确定删除该商品吗？
				</div>
				<div class="clearBContsh">
					<ul class="clearfix">
						<li><a class="cancel_Btn" href="javascript:;" data-type="0">取消</a></li>
						<li><a class="confirm_Btn" href="javascript:;" data-type="1">确定</a></li>
					</ul>
				</div>
			</div>
		</div>
        <div id="fade" class="black_overlay"></div>
        <div id="MyDiv3" class="white_content">
            <h2>提示</h2>
            <p>您确定清空失效宝贝吗？</p>
            <div class="my_Button2">
                <input class="cancel_Btn" type="button" value="取消" name="" onClick="CloseDiv('MyDiv3','fade')">
                <input class="confirm_Btn" type="button" value="继续" name="" onClick="delDiv('MyDiv3','fade')">
            </div>
        </div>
		<script src="assets/js/jquery-1.11.0.min.js"></script>
		<script src="assets/js/gouwuche.js"></script>
        <script type="text/javascript">
		/弹出隐藏层
		function ShowDiv(show_div,bg_div){
		document.getElementById(show_div).style.display='block';
		document.getElementById(bg_div).style.display='block' ;
		var bgdiv = document.getElementById(bg_div);
		bgdiv.style.width = document.body.scrollWidth;
		/bgdiv.style.height = $(document).height();
		$("#"+bg_div).height($(document).height());
		}
		/关闭弹出层
		function CloseDiv(show_div,bg_div)
		{
		document.getElementById(show_div).style.display='none';
		document.getElementById(bg_div).style.display='none';
		}
		function delDiv(show_div,bg_div){
			document.getElementById('delDiv').remove();
			document.getElementById(show_div).style.display='none';
			document.getElementById(bg_div).style.display='none';
			}
		</script>
		<jsp:include page="/WEB-INF/pages/plugins/include_foot.jsp"/>
	</body>
</html>