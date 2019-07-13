<%@ page pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>博物馆电商</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="assets/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css">

<script language="javascript" type="text/javascript" src="assets/js/jquery-1.11.2.min.js"></script>
<script language="javascript" type="text/javascript" src="assets/js/jquery-ui.min.js"></script>
<script language="javascript" type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script language="javascript" type="text/javascript" src="assets/js/bootstrap-datetimepicker.min.js"></script>
<script language="javascript" type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
<script language="javascript" type="text/javascript" src="assets/js/additional-methods.min.js"></script>

<style type="text/css">
#mainDiv {
	width: 100%;
	margin-top: 15%;
}

@media screen and (min-width: 480px) {
#mainDiv {
	margin-top: 5%;
}
}
td {
	max-width: 300px;
	overflow: hidden;
}
</style></head>
<body role="document">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">文创管理</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="#">文创管理</a> </div>
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
                <li id="Marketing" class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">销售管理<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a href="pages/front/sale/order_list.jsp">订单管理</a></li>
            <li><a href="pages/front/sale/Return_list.jsp">退换管理</a></li>
            <li><a href="pages/front/sale/express_list.jsp">物流管理</a></li>
            <li><a href="pages/front/sale/chat_list.jsp">客服问题记录</a></li>
            <li><a href="pages/front/sale/FAQ_list.jsp">FAQ</a></li>
          </ul>
        </li>
        <li id="Users" class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">用户管理<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a href="pages/front/user/user_list.jsp">用户管理</a></li>
            <li><a href="pages/front/user/coupon_list.jsp">卡卷管理</a></li>
            <li><a href="pages/front/user/ms_list.jsp">消息管理</a></li>
          </ul>
        </li>
        <li id="Commodity" class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">产品管理<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a href="pages/front/product/class_list.jsp">分类管理</a></li>
            <li><a href="pages/front/product/pic_list.jsp">产品图库管理</a></li>
            <li><a href="pages/front/product/group_list.jsp">产品组管理</a></li>
            <li><a href="pages/front/product/product_list.jsp">产品管理</a></li>
            <li><a href="pages/front/product/stock_list.jsp">产品渠道库存管理</a></li>
          </ul>
        </li>
        <li id="Contents" class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">运营管理<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a href="pages/front/operate/article_list.jsp">文章管理</a></li>
            <li><a href="pages/front/operate/activities_list.jsp">活动管理</a></li>
            <li><a href="pages/front/operate/ad_list.jsp">广告管理</a></li>
            <li><a href="pages/front/operate/comment_list.jsp">评论管理</a></li>
            <li><a href="pages/front/operate/freight_list.jsp">运费管理</a></li>
            <li><a href="pages/front/operate/coupon_list.jsp">卡卷管理</a></li>
            <li><a href="pages/front/operate/invite_list.jsp">邀约管理</a></li>
            <li><a href="pages/front/channel/cleansession.jsp">清除缓存</a></li>
          </ul>
        </li>
        <li id="Channels" class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">渠道管理<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a href="pages/front/channel/channel_list.jsp">渠道动态库存管理</a></li>
          </ul>
        </li>
        <li id="Promotion" class="dropdown"><a href="https://manage.spiritlife.cn/manage.jsp?action=main#" class="dropdown-toggle" data-toggle="dropdown">推广管理<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a href="pages/front/ad/extend_list.jsp">推广管理</a></li>
            <li><a href="pages/front/ad/channel_list.jsp">渠道管理</a></li>
          </ul>
        </li>
        
        <li id="Finance" class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">财务管理<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a href="pages/front/cash/pay_list.jsp">支付信息</a></li>
            <li><a href="pages/front/cash/bill_list.jsp">发票管理</a></li>
          </ul>
        </li>

                        <li id="BuyersSupplier" class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">采购供应管理<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a href="pages/front/business/suppliers_list.jsp">供应商信息</a></li>
            <li><a href="pages/front/business/suppliers_product_list.jsp">商品信息</a></li>
            <li><a href="pages/front/business/suppliers_order_list.jsp">采购单</a></li>
            <li><a href="pages/front/business/suppliers_qa_list.jsp">问题信息</a></li>
          </ul>
        </li>
                        <li id="adminuser"><a href="pages/front/manage/manage_list.jsp">管理员管理</a></li>
                <li id="EditPwd"><a href="pages/front/manage/password.jsp">密码修改</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/logout.shiro">登出</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="pages/front/manage/quit.jsp">登录</a></li>
      </ul>
    </div>
  </div>
</nav>


<script>
$(function(){
	$('#').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</body></html>
