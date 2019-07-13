<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
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
</div></td>
      </tr>
            <tr>
        <td>渠道名称</td>
        <td><div class="col-sm-5"><input name="name" type="text" id="name" size="50" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>渠道类型</td>
        <td><div id="type_div" class="col-sm-3"><select name="type" id="type" class="form-control" >
<option value="">请选择</option>
<option value="1">宣传</option>
<option value="2">合作</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>渠道ID</td>
        <td></td>
      </tr>
            <tr>
        <td>渠道密钥</td>
        <td></td>
      </tr>
            <tr>
        <td>渠道签名</td>
        <td></td>
      </tr>
            <tr>
        <td>推广URL</td>
        <td><div class="col-sm-5"><input name="spread" type="url" id="spread" size="100" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>回调地址</td>
        <td><div class="col-sm-5"><input name="back_url" type="url" id="back_url" size="100" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>结算比率</td>
        <td><div class="col-sm-5"><input name="rate" type="number" id="rate" size="50" value="100"  class="form-control"   />
</div>%</td>
      </tr>
            <tr>
        <td>商务人员</td>
        <td><div id="commerce_div" class="col-sm-3"><select name="commerce" id="commerce" class="form-control" >
<option value="">请选择</option>
</select></div>
</td>
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
        <td>生成时间</td>
        <td></td>
      </tr>
            <tr>
        <td>修改时间</td>
        <td></td>
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
	$('#Promotion').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>