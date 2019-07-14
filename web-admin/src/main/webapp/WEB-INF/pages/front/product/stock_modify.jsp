<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Commodity_commoditys_inventory&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">产品组详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="131"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>产品名称</td>
        <td><div class="col-sm-5"><input name="title" type="text" id="title" size="50" value="荷意年年丝巾（颜色：青花瓷；规格：真丝）"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>产品库存_官方H5</td>
        <td><div class="col-sm-5"><input name="B1001" type="number" id="B1001" size="20" value="0"  class="form-control"   required="required" />
</div></td>
      </tr>
            <tr>
        <td>产品库存_微信小程序</td>
        <td><div class="col-sm-5"><input name="B1002" type="number" id="B1002" size="20" value="0"  class="form-control"   required="required" />
</div></td>
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
	$('#Commodity').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>