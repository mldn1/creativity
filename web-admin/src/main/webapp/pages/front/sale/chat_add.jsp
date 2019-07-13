<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"><form action="?action=main&exec=Marketing_custom_service&fun=viewEdit" method="post" name="viewEdit" id="getOrder">
    <table width="98%" class="table table-striped table-hover table-bordered">
        <thead>
        <tr>
            <td colspan="2" align="center">订单信息</td>
        </tr>
        </thead>
        <tbody>
                <tr>
            <td>订单号</td>
            <td><div class="col-sm-5"><input name="order_id" type="text" id="order_id" size="50" value=""  class="form-control"   />
</div></td>
        </tr>
                <tr>
            <td>收货人手机号码</td>
            <td><div class="col-sm-5"><input name="user_phone" type="text" id="user_phone" size="50" value=""  class="form-control"   />
</div></td>
        </tr>
                <tr>
            <td>渠道</td>
            <td><div id="source_div" class="col-sm-3"><select name="source" id="source" class="form-control" >
<option value="">请选择</option>
<option value="yz">有赞</option>
<option value="xhs">小红书</option>
<option value="h5">H5自有站</option>
<option value="kzsc">空中网商城</option>
</select></div>
</td>
        </tr>
                <tr>
            <td colspan="2" align="left">
                <p style="color: red;display: inline;">* </p><p style="display: inline;"> 订单号和收货人手机号可以任选一种查询</p>
            </td>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" name="Submit" id="Submit" value="下一步" class="btn btn-success" />
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                <input type="button" name="Submit" id="Submit" value="返回" onClick="javascript:history.back();" class="btn btn-default" />

            </td>
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