<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Marketing_orderss&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">订单详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="1913"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>购买用户</td>
        <td><div class="col-sm-5"><input name="uid" type="text" id="uid" size="10" value="1913"  class="form-control"  readonly />
</div>18610145086</td>
      </tr>
            <tr>
        <td>支付订单号</td>
        <td><div class="col-sm-5"><input name="order_id" type="text" id="order_id" size="50" value="201903131559584532ee00"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>订单号</td>
        <td><div class="col-sm-5"><input name="order_id" type="text" id="order_id" size="50" value="2019031315595574153f49"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>订单类型</td>
        <td><div id="order_cls_div" class="col-sm-3"><select name="order_cls" id="order_cls" class="form-control" disabled>
<option value="">请选择</option>
<option value="0" selected>普通</option>
<option value="1">促销</option>
<option value="2">团购</option>
<option value="3">拼团</option>
<option value="4">秒杀</option>
<option value="5">拍卖</option>
<option value="11">换货</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>商品信息</td>
        <td>商品：海水江崖织锦加皮护照包 &nbsp;|&nbsp;数量：1&nbsp;|&nbsp;单价：468.00&nbsp;|&nbsp;颜色：金色&nbsp;|&nbsp;规格：织锦加皮<br /></td>
      </tr>
            <tr>
        <td>用户备注</td>
        <td><div class="col-sm-5"><input name="user_remarks" type="text" id="user_remarks" size="100" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>订单状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="-9">用户删除</option>
<option value="-1">关闭/退换</option>
<option value="0"><font color="#A00000">未发货</font></option>
<option value="1">确认</option>
<option value="2">已发货</option>
<option value="3">已收货</option>
<option value="4">退货</option>
<option value="5">换货</option>
<option value="9" selected>确认收货</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>支付渠道</td>
        <td><div id="pay_source_div" class="col-sm-3"><select name="pay_source" id="pay_source" class="form-control" >
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
        <td><div id="pay_type_div" class="col-sm-3"><select name="pay_type" id="pay_type" class="form-control" >
<option value="">请选择</option>
<option value="1" selected>在线</option>
<option value="2">汇款</option>
<option value="3">转账</option>
<option value="4">到付</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>支付状态</td>
        <td><div id="pay_state_div" class="col-sm-3"><select name="pay_state" id="pay_state" class="form-control" >
<option value="">请选择</option>
<option value="-9">已退款</option>
<option value="-2">退款中</option>
<option value="-1">申请退款</option>
<option value="0"><font color="#A00000">未支付</font></option>
<option value="1" selected><font color="#2E9200">已支付</font></option>
<option value="2">赠品</option>
<option value="3">免费</option>
<option value="9">已对账确认</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>送货信息</td>
        <td><div class="col-sm-5"><input name="addr_name" type="text" id="addr_name" size="50" value="收货人：韩越"  class="form-control"   />
</div><div class="col-sm-5"><input name="addr_tel" type="text" id="addr_tel" size="50" value="收货电话：18610145086"  class="form-control"   />
</div><div class="col-sm-5"><input name="addr_addr" type="text" id="addr_addr" size="50" value="收货地址：北京 海淀区 三环到四环之间 万柳光大花园5号楼"  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>物流信息</td>
        <td>单号：289389258478&nbsp;|&nbsp;服务商：申通快递&nbsp;|&nbsp;方式：普通快递&nbsp;|&nbsp;运费：15&nbsp;|&nbsp;状态：已收货<br/></td>
      </tr>
            <tr>
        <td>优惠信息</td>
        <td></td>
      </tr>
            <tr>
        <td>支付信息</td>
        <td>商品总金额：468.00&nbsp;|&nbsp;应付金额：483.00&nbsp;|&nbsp;优惠金额：0.00&nbsp;|&nbsp;支付渠道：微信&nbsp;|&nbsp;支付方式：在线&nbsp;|&nbsp;实际支付金额：483.00&nbsp;|&nbsp;付款状态：已对账确认</td>
      </tr>
            <tr>
        <td>发票信息</td>
        <td>抬头：&nbsp;|&nbsp;内容：&nbsp;|&nbsp;金额：&nbsp;|&nbsp;税号：&nbsp;|&nbsp;状态：<div id="_div" class="col-sm-3"><select name="" id="" class="form-control" >
<option value="">请选择</option>
<option value="0">未开</option>
<option value="1">已开</option>
<option value="2">换票</option>
<option value="4">退票</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>订单备注</td>
        <td><div class="col-sm-5"><textarea name="remarks" id="remarks" cols="15" rows="5"  class="form-control"   ></textarea>
</div></td>
      </tr>
            <tr>
        <td>创建时间</td>
        <td>2019-03-13 15:59:55</td>
      </tr>
            <tr>
        <td>修改时间</td>
        <td>2019-03-17 10:54:20</td>
      </tr>
            <tr>
        <td>操作员</td>
        <td>小张</td>
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
	$('#Marketing').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>