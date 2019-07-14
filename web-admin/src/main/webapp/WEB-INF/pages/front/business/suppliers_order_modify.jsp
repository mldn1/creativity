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
        <td colspan="2" align="center">详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value=""  class="form-control"   readonly />
</div><div class="col-sm-5"><input name="log_size" type="hidden" id="log_size" size="50" value="0"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>订单号</td>
        <td><div class="col-sm-5"><input name="oid" type="text" id="oid" size="50" value="GGP2019062619283834474d37"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>类型</td>
        <td><div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="1">订货</option>
<option value="2">退货</option>
<option value="3">换货</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>供应商名称</td>
        <td><div id="supplier_id_div" class="col-sm-3"><select name="supplier_id" id="supplier_id" class="form-control" required="required" onChange="getProductList(this.options[this.options.selectedIndex].value);">
<option value="">请选择</option>
<option value="1">铜器馆</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>商品名称</td>
        <td><div id="product_id_div" class="col-sm-3"><select name="product_id" id="product_id" class="form-control" required="required">
<option value="">请选择</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>订购数量</td>
        <td><div class="col-sm-5"><input name="size" type="number" id="size" size="10" value="1"  class="form-control"   min="1"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>备注</td>
        <td><div class="col-sm-5"><textarea name="remarks" id="remarks" cols="30" rows="10"  class="form-control"   ></textarea>
</div></td>
      </tr>
            <tr>
        <td>状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control"  onChange="getStateSelect('', this.options[this.options.selectedIndex].value);">
<option value="">请选择</option>
<option value="-9"><font color="#FF0000">作废</font></option>
<option value="0">下单</option>
<option value="1"><font color="#0B8B00">发货</font></option>
</select></div>
</td>
      </tr>
            <tr>
        <td>创建人</td>
        <td></td>
      </tr>
            <tr>
        <td>创建时间</td>
        <td></td>
      </tr>
            <tr>
        <td>最后操作时间</td>
        <td></td>
      </tr>
          </tbody>
    <tbody id="exp"></tbody>
    <tbody>
      <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="返回" onClick="javascript:history.back();" class="btn btn-info" /></td>
      </tr>
    	
    </tbody>
  </table>
</form>
<script>
function getProductList(ids) {
	if (ids) {
		var sendUrl = "/ajax.jsp?action=manage_getBuyersSupplier_supplierOrders&id=" + ids;
		console.log("sendUrl="+sendUrl);
		$.ajax({
			url: sendUrl,
			type: "get",
			success: function(res) {
				if (res.length>100) {
					$("#product_id_div").html(res);
				}
			}
		});
	}
}
function getStateSelect(oid, state) {
	if (oid && state) {		
		$("#exp").html("");
		var sendUrl = "/ajax.jsp?action=manage_getBuyersSupplier_supplierOrders&exec=getLogHtml&oid=" + oid + "&state=" + state + "&is_supp=";
		console.log("sendUrl="+sendUrl);
		$.ajax({
			url: sendUrl,
			type: "get",
			success: function(res) {
				if (res.length>100) {
					$("#exp").html(res);
				}
			}
		});
	}
}
getStateSelect('','');
$("#viewEdit").validate(
	{debug:false}
);
</script> 
</div>
</div>
</body>
<script>
$(function(){
	$('#BuyersSupplier').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>