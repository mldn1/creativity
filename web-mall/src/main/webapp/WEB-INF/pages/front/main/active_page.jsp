
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
	 <jsp:include page="/WEB-INF/pages/plugins/include_menu.jsp"/>

	<meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="screen-orientation" content="portrait">
    <meta name="x5-orientation" content="portrait">
	<title>活动页</title>
	<meta name="description" content="页面简述" />
	<meta name="keywords" content="关键词" />
	<link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/swiper.min.css" rel="stylesheet" type="text/css">
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

<style>
.swiper-slide img{ width:100%; height:auto;} 
#swiper-container1{ height:auto; position:relative; width:100%;}
</style>
</head>
<body>
<div class="activ_page">-&nbsp;&nbsp;茶具组&nbsp;&nbsp;-</div>
<div class="khfxWarp">
  <div class="khfxPane classification_List list_group">

    <c:forEach items="${allCategoryGoods}" var="categoryGoods">
	<div class="list_Child">
    	<a href="shop_details.action?gid=${categoryGoods.gid}"><img src="http://49.234.26.219/${categoryGoods.focuspicture}"></a>
        <h2>${categoryGoods.title}</h2>
        <p>￥${categoryGoods.saleprice}</p>
    </div>
    </c:forEach>

    <%--<div class="list_Child">--%>
    	<%--<img src="images/GL_img_15.jpg">--%>
        <%--<h2>功夫鸡祥套餐</h2>--%>
        <%--<p>￥258.00</p>--%>
    <%--</div>--%>
    <%--<div class="list_Child">--%>
    	<%--<img src="images/GL_img_16.jpg">--%>
        <%--<h2>功夫鸡祥套装</h2>--%>
        <%--<p>￥258.00</p>--%>
    <%--</div>--%>
    <%--<div class="list_Child">--%>
    	<%--<img src="images/GL_img_17.jpg">--%>
        <%--<h2></h2>--%>
        <%--<p></p>--%>
    <%--</div>--%>
    <%--<div class="list_Child">--%>
    	<%--<img src="images/GL_img_18.jpg">--%>
        <%--<h2>功夫鸡祥套装</h2>--%>
        <%--<p>￥258.00</p>--%>
    <%--</div>--%>
    <%--<div class="list_Child">--%>
    	<%--<img src="images/GL_img_19.jpg">--%>
        <%--<h2>XXXX</h2>--%>
        <%--<p>￥258.00</p>--%>
    <%--</div>--%>
  </div>
</div>

<script src="js/swiper.min.js"></script>
<script type="text/javascript" src="ajs/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/dropload.js"></script>
<script type="text/javascript" src="js/jquery.flexText.js"></script>
<script language="javascript"> 
var mySwiper = new Swiper('#swiper-container1',{
pagination : '.swiper-pagination',
//pagination : '#swiper-pagination1',
})
</script>
<!--下拉自动加载-->
<script>
$(function () {
    var itemIndex = 0;
    var tabLoadEndArray = [false, false, false];
    var tabLenghtArray = [28, 15, 47];
    var tabScroolTopArray = [0, 0, 0];
    
    // dropload
    var dropload = $('.khfxWarp').dropload({
        scrollArea: window,
        domDown: {
            domClass: 'dropload-down',
            domRefresh: '<div class="dropMore"><div class="dropLeft"></div><div class="dropload-refresh">上拉加载更多</div><div class="dropRight"></div></div>',
            domLoad: '<div class="dropMore"><div class="dropLeft"></div><div class="dropload-load"><span class="loading"></span>加载中...</div><div class="dropRight"></div></div>',
            domNoData: '<div class="dropMore"><div class="dropLeft"></div><div class="dropload-noData">没有更多了</div><div class="dropRight"></div>'
        },
        loadDownFn: function (me) {
            setTimeout(function () {
                if (tabLoadEndArray[itemIndex]) {
                    me.resetload();
                    me.lock();
                    me.noData();
                    me.resetload();
                    return;
                }
                var result = '';
                for (var index = 0; index < 6; index++) {
                    if (tabLenghtArray[itemIndex] > 0) {
                        tabLenghtArray[itemIndex]--;
                    } else {
                        tabLoadEndArray[itemIndex] = true;
                        break;
                    }
                    if (itemIndex == 0) {
                        result
                        += ''
						+ '	<div class="list_Child">' 
						+ ' 	<img src="images/GL_img_18.jpg">'
						+ '		<h2>功夫鸡祥套装</h2>' 
						+ '		<p>￥258.00</p>' 
						+ '	</div>' ; 	
                    }
                }
                $('.khfxPane').eq(itemIndex).append(result);
                me.resetload();
            }, 500);
        }
    });
});
</script>
<script>
function orient() {
        if (window.orientation == 0 || window.orientation == 180) {
            $("body").attr("class", "portrait");  //当竖屏的时候为body增加一个class
            orientation = 'portrait';
            return false;
        }
        else if (window.orientation == 90 || window.orientation == -90) {
            $("body").attr("class", "landscape"); //当横屏的时候为body移除这个class
            orientation = 'landscape';
            return false;
        }
    }
    $(function(){
        orient();
    });
	$(window).bind( 'orientationchange', function(e){
        orient();
    });
</script>
 <jsp:include page="/WEB-INF/pages/plugins/include_foot.jsp"/>
</body>
</html>