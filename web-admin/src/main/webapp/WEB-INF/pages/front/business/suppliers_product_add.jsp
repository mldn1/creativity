<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=BuyersSupplier_supplierProducts&fun=editData" method="post" name="viewEdit" id="viewEdit">
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
</div></td>
      </tr>
            <tr>
        <td>供应商名称</td>
        <td><div id="supplier_id_div" class="col-sm-3"><select name="supplier_id" id="supplier_id" class="form-control" required="required">
<option value="">请选择</option>
<option value="1">铜器馆</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>商品名称</td>
        <td><div class="col-sm-5"><input name="name" type="text" id="name" size="50" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>商品sku编码</td>
        <td><div class="col-sm-5"><input name="sku" type="text" id="sku" size="50" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>商品售价</td>
        <td><div class="col-sm-5"><input name="price" type="text" id="price" size="30" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>商品结算价</td>
        <td><div class="col-sm-5"><input name="settlement_price" type="text" id="settlement_price" size="50" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>商品规格</td>
        <td><div class="col-sm-5"><input name="specification" type="text" id="specification" size="50" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>商品简介</td>
        <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
      </tr>
            <tr>
        <td>备注</td>
        <td><div class="col-sm-5"><textarea name="remarks" id="remarks" cols="30" rows="10"  class="form-control"   ></textarea>
</div></td>
      </tr>
            <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="返回" onClick="javascript:history.back();" class="btn btn-info" /></td>
      </tr>
    </tbody>
  </table>
</form>

<script>
$("#viewEdit").validate(
	{debug:false}
);

UE.getEditor('synopsis');</script> 
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