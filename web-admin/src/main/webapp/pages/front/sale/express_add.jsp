<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Marketing_logisticss&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">物流详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value=""  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>购买用户</td>
        <td><div class="col-sm-5"><input name="uname" type="text" id="uname" size="50" value=""  class="form-control"  readonly />
</div><input name="uid" type="hidden" id="uid" size="50" value=""   />
</td>
      </tr>
            <tr>
        <td>订单号</td>
        <td><div class="col-sm-5"><input name="order_id" type="text" id="order_id" size="50" value=""  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>物流单号</td>
        <td><div class="col-sm-5"><input name="number_id" type="text" id="number_id" size="50" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>物流服务商</td>
        <td><div id="providers_div" class="col-sm-3"><select name="providers" id="providers" class="form-control" >
<option value="">请选择</option>
<option value="1">顺丰特惠</option>
<option value="2">顺丰标快</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>运费</td>
        <td><div class="col-sm-5"><input name="costs" type="text" id="costs" size="50" value="0"  class="form-control"   />
</div>元</td>
      </tr>
            <tr>
        <td>物流状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="-3">客服已收货</option>
<option value="-2">客户已发货</option>
<option value="-1">退货</option>
<option value="0">未发出</option>
<option value="1">已发出</option>
<option value="2">已收货</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>录入方式</td>
        <td><div id="enter_type_div" class="col-sm-3"><select name="enter_type" id="enter_type" class="form-control" disabled>
<option value="">请选择</option>
<option value="1">手动</option>
<option value="2">批量导入</option>
<option value="3">自动</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>备注</td>
        <td><div class="col-sm-5"><textarea name="remarks" id="remarks" cols="20" rows="7"  class="form-control"   ></textarea>
</div></td>
      </tr>
            <tr>
        <td>创建物流时间</td>
        <td></td>
      </tr>
            <tr>
        <td>签收时间</td>
        <td><div class="col-sm-5"><input name="dtime" type="datetime-local" id="dtime" size="50" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>操作员</td>
        <td></td>
      </tr>
            <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="返回" onclick="javascript:history.back();" class="btn btn-default" /></td>
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