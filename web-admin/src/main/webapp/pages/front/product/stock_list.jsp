<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">
<div style="width: 98%; margin-left: 1%;">
  <form name="form_simple" method="GET" action="manage.jsp">
    <input type="hidden" name="action" id="action" value="main">
    <input type="hidden" name="exec" id="exec" value="Commodity_commoditys_inventory">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索关键词：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="key" name="key" value=""
					placeholder="请输入查询关键词">
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
        <td>商品名称</td>
        <td>渠道库存</td>
        <td>修改人员</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><a href="产品渠道管理详情.html">荷意年年丝巾（颜色：青花瓷；规格：真丝）</a></td>
        <td><p>官方H5：0</p></td>
        <td>小张</td>
      </tr>
            <tr>
        <td><a href="产品渠道管理详情.html">荷意年年丝巾（颜色：黄色；规格：真丝）</a></td>
        <td><p>官方H5：0</p></td>
        <td>小张</td>
      </tr>
            <tr>
        <td><a href="产品渠道管理详情.html">荷意年年丝巾（颜色：灰粉色；规格：真丝）</a></td>
        <td><p>官方H5：0</p></td>
        <td>小张</td>
      </tr>
          </tbody>
    <tr>
      <td colspan="4" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="/manage.jsp?action=main&exec=Commodity_commoditys_inventory&page=2">2</a>]
[<a  href="/manage.jsp?action=main&exec=Commodity_commoditys_inventory&page=3">3</a>]
[<a  href="/manage.jsp?action=main&exec=Commodity_commoditys_inventory&page=4">4</a>]
<a  href="/manage.jsp?action=main&exec=Commodity_commoditys_inventory&page=2">下一页</a>&nbsp;<a  href="/manage.jsp?action=main&exec=Commodity_commoditys_inventory&page=5">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Commodity_commoditys_inventory&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select>&nbsp;页&nbsp;共5页&nbsp;149条</td>
    </tr>
  </table>
</form>
 

</div>
</div>
</body>
<script>
$(function(){
	$('#Commodity').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>