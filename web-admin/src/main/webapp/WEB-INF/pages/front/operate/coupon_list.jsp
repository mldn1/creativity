<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">
<div style="width: 98%; margin-left: 1%;">
  <form name="form_simple" method="GET" action="manage.jsp">
    <input type="hidden" name="action" id="action" value="main">
    <input type="hidden" name="exec" id="exec" value="Contents_couponss">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索关键词：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="key" name="key" value=""
					placeholder="搜索关键词">
              </div>
            </div></td>
        </tr>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">个/页：</label>
              <div class="col-md-2">
                <input type="number" class="form-control" id="size" name="size" value="20" min="20" max="100" step="20">
              </div>
            </div></td>
        </tr>
            <tr>
        <td colspan="2" align="center" valign="middle"><input
				type="submit" name="Submit" id="Submit" value="查询" class="btn btn-success" /></td>
      </tr>
        </tbody>
      
    </table>
  </form>
</div>
<form name="form_list" id="form_list" method="POST" action=""
	onsubmit="javascript:return confirm('你确定执行该操作吗!!!');">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr style="font-weight:bold;">
        <td>id</td>
        <td>卡卷名称</td>
        <td>卡卷说明</td>
        <td>品类</td>
        <td>优惠金额/折扣</td>
        <td>使用限制金额</td>
        <td>使用期限</td>
        <td>用户有效期(天)</td>
        <td>使用商品</td>
        <td>状态</td>
        <td>操作人员</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><b><a href="pages/front/operate/coupon_modify.jsp">4</a></b></td>
        <td><a href="pages/front/operate/coupon_modify.jsp">口红后</a></td>
        <td>备注</td>
        <td>满减卷</td>
        <td>10.00</td>
        <td>199.00</td>
        <td>2018-11-27至2018-12-12</td>
        <td>0</td>
        <td>测试单品单品（颜色：胭脂；&nbsp;&nbsp;&nbsp;规格：瓷）&nbsp;/&nbsp;1.00<br/></td>
        <td>关闭</td>
        <td>test</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_couponss&fun=viewEdit&id=3">3</a></b></td>
        <td><a href="?action=main&exec=Contents_couponss&fun=viewEdit&id=3">满1000-8折</a></td>
        <td>满1000-8折</td>
        <td>折扣卷</td>
        <td>8.00</td>
        <td>1000.00</td>
        <td>2018-03-01至2018-05-31</td>
        <td>0</td>
        <td></td>
        <td>打开</td>
        <td>用户1</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_couponss&fun=viewEdit&id=2">2</a></b></td>
        <td><a href="?action=main&exec=Contents_couponss&fun=viewEdit&id=2">满1000-200</a></td>
        <td>满1000-200</td>
        <td>满减卷</td>
        <td>200.00</td>
        <td>1000.00</td>
        <td>2018-02-26至2018-05-31</td>
        <td>0</td>
        <td></td>
        <td>打开</td>
        <td>用户1</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_couponss&fun=viewEdit&id=1">1</a></b></td>
        <td><a href="?action=main&exec=Contents_couponss&fun=viewEdit&id=1">满100-20</a></td>
        <td>满100-20</td>
        <td>满减卷</td>
        <td>20.00</td>
        <td>100.00</td>
        <td>2018-02-24至2018-04-30</td>
        <td>0</td>
        <td>荷意年年丝巾（颜色：黄色；&nbsp;&nbsp;&nbsp;规格：真丝）&nbsp;/&nbsp;1380.00<br/>荷意年年丝巾（颜色：青花瓷；&nbsp;&nbsp;&nbsp;规格：真丝）&nbsp;/&nbsp;1380.00<br/></td>
        <td>打开</td>
        <td>小李</td>
      </tr>
          </tbody>
    <tr>
      <td colspan="11" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
<span class="">下一页</span>&nbsp;<span class="">尾页</span>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Contents_couponss&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option></select>&nbsp;页&nbsp;共1页&nbsp;4条&nbsp;&nbsp;&nbsp;<a href="pages/front/operate/coupon_add.jsp"class="btn btn-primary">添加卡卷</a></td>
    </tr>
  </table>
</form>
 

</div>
</div>
</body>
<script>
$(function(){
	$('#Contents').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>