<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=BuyersSupplier_supplierInfo&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="1"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>供应商名称</td>
        <td><div class="col-sm-5"><input name="name" type="text" id="name" size="50" value="铜器馆"  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>供应商编码</td>
        <td><div class="col-sm-5"><input name="coding" type="text" id="coding" size="50" value="001"  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>供应商简介</td>
        <td><div class="col-sm-5"><textarea name="synopsis" id="synopsis" cols="30" rows="10"  class="form-control"   ></textarea>
</div></td>
      </tr>
            <tr>
        <td>供应商负责人</td>
        <td><div class="col-sm-5"><input name="principal" type="text" id="principal" size="50" value="文文"  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>联系电话</td>
        <td><div class="col-sm-5"><input name="mob" type="text" id="mob" size="50" value="15101545489"  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>我方对接人</td>
        <td><div class="col-sm-5"><input name="docking_people" type="text" id="docking_people" size="50" value="小A"  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>我方联系电话</td>
        <td><div class="col-sm-5"><input name="dp_mob" type="text" id="dp_mob" size="50" value="15101545489"  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>供应商类型</td>
        <td><div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="1" selected>厂家</option>
<option value="2">代理</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0"><span style="color:#C00; font-weight:bold">关闭</span></option>
<option value="1" selected><span style="color:#3C0; font-weight:bold">打开</span></option>
<option value="9"><span style="color:#30F; font-weight:bold">置顶</span></option>
</select></div>
</td>
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