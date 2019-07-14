<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=adminuser&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">Details</td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td align="left" valign="top">id：</td>
        <td align="left" valign="top"><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value=""  class="form-control"   readonly />
</div></td>
      </tr>
      <tr>
        <td align="left" valign="top">Email：</td>
        <td align="left" valign="top"><div class="col-sm-5"><input name="email" type="text" id="email" size="50" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
      <tr>
        <td align="left" valign="top">昵称：</td>
        <td align="left" valign="top"><div class="col-sm-5"><input name="nickname" type="text" id="nickname" size="50" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
      <tr>
        <td align="left" valign="top">手机号：</td>
        <td align="left" valign="top"><div class="col-sm-5"><input name="mob" type="text" id="mob" size="20" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
      <tr>
        <td align="left" valign="top">密码：</td>
        <td align="left" valign="top"><div class="col-sm-5"><input name="password" type="text" id="password" size="50" value=""  class="form-control"   />
</div>注意：不修改密码时请留空</td>
      </tr>
      <tr>
        <td align="left" valign="top">级别：</td>
        <td align="left" valign="top"><div id="level_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="level[]" type="checkbox" id="level[]" value="0"  />高级管理员(0)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="level[]" type="checkbox" id="level[]" value="1"  />编辑人员(1)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="level[]" type="checkbox" id="level[]" value="2"  />财务(2)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="level[]" type="checkbox" id="level[]" value="3"  />客服经理(3)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="level[]" type="checkbox" id="level[]" value="30"  />客服(30)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="level[]" type="checkbox" id="level[]" value="4"  />商务(4)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="level[]" type="checkbox" id="level[]" value="7"  />渠道(7)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="level[]" type="checkbox" id="level[]" value="8"  />经理(8)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="level[]" type="checkbox" id="level[]" value="40"  />供应商(40)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="level[]" type="checkbox" id="level[]" value="20"  />采购商(20)&nbsp;</li></ul></div></td>
      </tr>
      <tr>
        <td align="left" valign="top">供应商：</td>
        <td align="left" valign="top"><div id="supplier_id_div" class="col-sm-3"><select name="supplier_id" id="supplier_id" class="form-control" >
<option value="">请选择</option>
<option value="1">铜器馆</option>
</select></div>
</td>
      </tr>
      <tr>
        <td align="left" valign="top">状态：</td>
        <td align="left" valign="top"><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0"><span style="color:#C00; font-weight:bold">关闭</span></option>
<option value="1"><span style="color:#3C0; font-weight:bold">打开</span></option>
<option value="9"><span style="color:#30F; font-weight:bold">置顶</span></option>
</select></div>
</td>
      </tr>
      <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="返回" onclick="javascript:history.back();" class="btn btn-info" /></td>
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
	$('#adminuser').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>