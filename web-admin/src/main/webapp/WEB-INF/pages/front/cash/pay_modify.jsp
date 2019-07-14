<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="#" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">平台支付详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="1902"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>购买用户</td>
        <td><div class="col-sm-5"><input name="uid" type="text" id="uid" size="10" value="1930"  class="form-control"  readonly />
</div>15502772865</td>
      </tr>
            <tr>
        <td>支付订单号</td>
        <td><div class="col-sm-5"><input name="order_id" type="text" id="order_id" size="50" value="2019032012061058472092"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>订单号</td>
        <td><div class="col-sm-5"><input name="order_id" type="text" id="order_id" size="50" value="201903201206047104b21e"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>商品总金额</td>
        <td><div class="col-sm-5"><input name="sums" type="text" id="sums" size="50" value="265.00"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>运费</td>
        <td><div class="col-sm-5"><input name="freight" type="text" id="freight" size="50" value="18.00"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>实付金额</td>
        <td><div class="col-sm-5"><input name="should_pay" type="text" id="should_pay" size="50" value="283.00"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>折扣金额</td>
        <td><div class="col-sm-5"><input name="discount" type="text" id="discount" size="50" value="0.00"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>支付渠道</td>
        <td><div id="sources_div" class="col-sm-3"><select name="sources" id="sources" class="form-control" disabled>
<option value="">请选择</option>
<option value="1" selected>微信</option>
<option value="2">支付宝</option>
<option value="3">银行卡</option>
<option value="9">模拟测试</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>支付方式</td>
        <td><div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" disabled>
<option value="">请选择</option>
<option value="1" selected>在线</option>
<option value="2">汇款</option>
<option value="3">转账</option>
<option value="4">到付</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>备注</td>
        <td><div class="col-sm-5"><textarea name="remarks" id="remarks" cols="30" rows="10"  class="form-control"   ></textarea>
</div></td>
      </tr>
            <tr>
        <td>操作类型</td>
        <td><div id="act_type_div" class="col-sm-3"><select name="act_type" id="act_type" class="form-control" disabled>
<option value="">请选择</option>
<option value="1">仅换货</option>
<option value="2">退货退款</option>
<option value="3">仅退款</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="-9">已退款</option>
<option value="-2">退款中</option>
<option value="-1">申请退款</option>
<option value="0" selected><font color="#A00000">未支付</font></option>
<option value="1"><font color="#2E9200">已支付</font></option>
<option value="2">赠品</option>
<option value="3">免费</option>
<option value="9">已对账确认</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>操作员</td>
        <td></td>
      </tr>
            <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="返回" onClick="javascript:history.back();" class="btn btn-default" /></td>
      </tr>
    </tbody>
  </table>
</form>
</div>
</div>
</body>
<script>
$(function(){
	$('#Finance').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>