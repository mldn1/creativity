<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Finance_invoices&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">发票详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="395"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>订单ID</td>
        <td><div class="col-sm-5"><input name="order_id" type="text" id="order_id" size="50" value="2019030809085365864a3d"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>购买用户</td>
        <td><div class="col-sm-5"><input name="uid" type="text" id="uid" size="10" value="1895"  class="form-control"  readonly />
</div>18610096771</td>
      </tr>
            <tr>
        <td>支付ID</td>
        <td><div class="col-sm-5"><input name="finance_id" type="text" id="finance_id" size="50" value=""  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>发票类型</td>
        <td><div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" required="required">
<option value="">请选择</option>
<option value="1" selected>电子</option>
<option value="2">纸质</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>发票种类</td>
        <td><div id="kind_div" class="col-sm-3"><select name="kind" id="kind" class="form-control" required="required">
<option value="">请选择</option>
<option value="1" selected>普通</option>
<option value="2">增值</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>发票抬头</td>
        <td><div class="col-sm-5"><input name="title" type="text" id="title" size="50" value="北京xxxxxxx有限公司"  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>发票内容</td>
        <td><div class="col-sm-5"><textarea name="cont" id="cont" cols="15" rows="5"  class="form-control"  required="required" ></textarea>
</div></td>
      </tr>
            <tr>
        <td>发票金额</td>
        <td><div class="col-sm-5"><input name="money" type="text" id="money" size="50" value="199.00"  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>发票号</td>
        <td><div class="col-sm-5"><input name="number_id" type="text" id="number_id" size="50" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>发票税号</td>
        <td><div class="col-sm-5"><input name="tax_id" type="text" id="tax_id" size="50" value="110105788111"  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>是否第三方</td>
        <td><div id="is_third_party_div" class="col-sm-3"><select name="is_third_party" id="is_third_party" class="form-control" >
<option value="">请选择</option>
<option value="0" selected>自营</option>
<option value="1">第三方</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>开票状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" required="required">
<option value="">请选择</option>
<option value="0" selected>未开</option>
<option value="1">已开</option>
<option value="2">换票</option>
<option value="4">退票</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>开票时间</td>
        <td></td>
      </tr>
            <tr>
        <td>备注</td>
        <td><div class="col-sm-5"><textarea name="remarks" id="remarks" cols="30" rows="10"  class="form-control"   ></textarea>
</div></td>
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