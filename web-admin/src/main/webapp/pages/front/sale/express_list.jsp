<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
<title>物流管理列表</title>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">
<div style="width: 98%; margin-left: 1%;">
  <form name="form_simple" method="GET" action="manage.jsp">
    <input type="hidden" name="action" id="action" value="main">
    <input type="hidden" name="exec" id="exec" value="Marketing_logisticss">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索订单号：</label>
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
        <td width="6%">id</td>
        <td width="25%">订单ID</td>
        <td width="15%">单号</td>
        <td width="10%">服务商</td>
        <td width="5%">运费</td>
        <td width="8%">状态</td>
        <td width="20%">创建时间</td>
        <td width="11%">修改人员</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><b>1778</b></td>
        <td><a href="pages/front/sale/express_modify.jsp">2019031315595574153f49</a></td>
        <td>289389258478</td>
        <td>顺丰标快</td>
        <td>15</td>
        <td>已收货</td>
        <td>2019-03-13 15:59:55</td>
        <td>XXX</td>
      </tr>
            <tr>
        <td><b>1776</b></td>
        <td>201903080844579286d135</td>
        <td>289385803233</td>
        <td>顺丰标快</td>
        <td>15</td>
        <td>已收货</td>
        <td>2019-03-08 08:44:57</td>
        <td>XXX</td>
      </tr>
            <tr>
        <td><b>1772</b></td>
        <td>2019030607433126582321</td>
        <td>289385086322</td>
        <td>顺丰特惠</td>
        <td>18</td>
        <td>已收货</td>
        <td>2019-03-06 07:43:31</td>
        <td>XXX</td>
      </tr>
            <tr>
        <td><b>1770</b></td>
        <td>2019030521554043073833</td>
        <td>289385085267</td>
        <td>顺丰特惠</td>
        <td>18</td>
        <td>已收货</td>
        <td>2019-03-05 21:55:40</td>
        <td>XXX</td>
      </tr>
          </tbody>
    <tr>
      <td colspan="8" align="center" valign="middle"><a href="pages/front/sale/express_add.jsp" class="btn btn-primary">添加物流信息</a>&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td colspan="8" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="/manage.jsp?action=main&exec=Marketing_logisticss&page=2">2</a>]
[<a  href="/manage.jsp?action=main&exec=Marketing_logisticss&page=3">3</a>]
[<a  href="/manage.jsp?action=main&exec=Marketing_logisticss&page=4">4</a>]
<a  href="/manage.jsp?action=main&exec=Marketing_logisticss&page=2">下一页</a>&nbsp;<a  href="/manage.jsp?action=main&exec=Marketing_logisticss&page=21">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Marketing_logisticss&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option></select>&nbsp;页&nbsp;共21页&nbsp;407条</td>
    </tr>
  </table>
</form>
 

 

 

</div>
</div>
</body>
<script>
$(function(){
	$('#Marketing').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>