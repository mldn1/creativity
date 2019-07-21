
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
	<title>搜索（首页头）</title>
	<meta name="description" content="页面简述" />
	<meta name="keywords" content="关键词" />
    <link href="css/zhan_search.css" rel="stylesheet" type="text/css">
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
        <div class="search bar6">
            <div class="form" id="myform">
            <form action="search_end.action">
                <input type="text" name="keyWord" id="keyWord" placeholder="请输入您要搜索的内容...">
                <button type="submit"></button>
            </form>
             </div>
        </div>
        <div class="search_Hot">
    	<h2>热门搜索</h2>

        <c:forEach items="${allRank}" var="rank">
        <a href="search_end.action?keyWord=${rank}" class="text_Red">${rank}</a>
        </c:forEach>

    </div>
    <div class="search_History">
    	<h2><span>历史搜索</span><a class="add_Del clearList" href="javascript:;"><img src="images/GL_icon_29.png"></a></h2>

        <c:forEach items="${allCookies}" var="Cookie">
        <a href="search_end.action?keyWord=${Cookie}">${Cookie}</a>
        </c:forEach>

    </div>
    <div class="clearModelBox">
		<div class="clearBCont">
			<div class="clearBContText">
				你确定删除该商品吗？
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
	// 阻止表单提交
	$(function() {
		$("form").submit(function(){
			if ($("#keyWord").val() == null || $("#keyWord").val() == "") {
				return false;
			} else {
				return true;
			}
		});
	})


    	// 确认删除
	var $this  //获取被删除的元素
	var	all=false;
	$('body').on('click','.clearBContsh li a',function(){
		var clearType=$(this).attr('data-type');
		if(clearType=='1'){
			if(all){
				$('.search_History').remove()
			}else{
				$('.clearModelBox').css('display','none')
				$this.parents('.search_History').remove();
			}
			$('.clearModelBox').css('display','none')
		}else{
			$('.clearModelBox').css('display','none')
			return
		}
	})
	//删除商品
	$('body').on('click','.clearList',function(){
		$('.clearModelBox').css('display','flex');
		$this =$(this)
	})
    </script>
		 <jsp:include page="/WEB-INF/pages/plugins/include_foot.jsp"/>

</body>
</html>