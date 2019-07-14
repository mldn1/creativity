<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">
<div style="width: 98%; margin-left: 1%;">
  <form name="form_simple" method="GET" action="manage.jsp">
    <input type="hidden" name="action" id="action" value="main">
    <input type="hidden" name="exec" id="exec" value="Finance_invoices">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索订单号/发票号：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="key" name="key" value=""
					placeholder="搜索关键词">
              </div>
            </div></td>
        </tr>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">个/页：</label>
              <div class="col-md-2">
                <input type="number" class="form-control" id="size" name="size" value="20" min="20" max="100" step="20">
              </div>
            </div></td>
        </tr>
            <tr>
        <td colspan="2" align="center" valign="middle"><input
				type="submit" name="Submit" id="Submit" value="查询" class="btn btn-success" /></td>
      </tr>
        </tbody>
      
    </table>
  </form>
</div>
<form name="form_list" id="form_list" method="POST" action=""
	onsubmit="javascript:return confirm('你确定执行该操作吗!!!');">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr style="font-weight:bold;">
        <td>id</td>
        <td>发票号</td>
        <td>订单ID</td>
        <td>类型</td>
        <td>种类</td>
        <td>来源</td>
        <td>抬头</td>
        <td>金额</td>
        <td>开票时间</td>
        <td>修改人员</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><b><a href="#">395</a></b></td>
        <td><a href="?action=main&exec=Finance_invoices&fun=viewEdit&id=395"></a></td>
        <td><a href="pages/front/cash/bill_modify.jsp">2019030809085365864a3d</a></td>
        <td>电子</td>
        <td>普通</td>
        <td>自营</td>
        <td>北京xxxxxxx有限公司</td>
        <td>199.00</td>
        <td></td>
        <td></td>
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