<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

 

<form action="?action=main&exec=Contents_logisticsCost&fun=editData" method="post" name="viewEdit" id="viewEdit">
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
        <td>快递公司</td>
        <td><div id="group_id_div" class="col-sm-3"><select name="group_id" id="group_id" class="form-control" >
<option value="">请选择</option>
<option value="1">顺丰特惠</option>
<option value="2">顺丰标快</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>抵达城市</td>
        <td><div class="col-sm-5"><input name="city" type="text" id="city" size="50" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>首重钱数</td>
        <td><div class="col-sm-5"><input name="first_weight" type="text" id="first_weight" size="50" value="10"  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>续重钱数</td>
        <td><div class="col-sm-5"><input name="add_weight" type="text" id="add_weight" size="50" value="0"  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>权重值</td>
        <td><div class="col-sm-5"><input name="weights" type="text" id="weights" size="50" value="1"  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0"><span style="color:#C00; font-weight:bold">关闭</span></option>
<option value="1"><span style="color:#3C0; font-weight:bold">打开</span></option>
<option value="9"><span style="color:#30F; font-weight:bold">置顶</span></option>
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
	$('#Contents').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>