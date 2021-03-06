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
    <input type="hidden" name="exec" id="exec" value="BuyersSupplier_supplierLoss">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td colspan="2" style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索关键词：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="key" name="key" value=""
					placeholder="搜索关键词">
              </div>
            </div></td>
        </tr>
      
		<tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">类型：</label>
              <div class="col-lg-7">
                <div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="1">订货</option>
<option value="2">退货</option>
<option value="3">换货</option>
</select></div>

              </div>
            </div></td>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">状态：</label>
              <div class="col-lg-7">
                <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="-9"><font color="#FF0000">作废</font></option>
<option value="0">下单</option>
<option value="1"><font color="#0B8B00">发货</font></option>
<option value="11"><font color="#06A800">已发</font></option>
<option value="21"><font color="#8C9400"><b>已收</b></font></option>
<option value="90"><font color="#8C0400"><b>部分已收</b></font></option>
<option value="99"><font color="#8C9400"><b>全部已收</b></font></option>
</select></div>

              </div>
            </div></td>
        </tr>        
        <tr>         		
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">个/页：</label>
              <div class="col-md-2">
                <input type="number" class="form-control" id="size" name="size" value="20" min="20" max="500" step="20">
              </div>
            </div>
           </td>      		
          <td style="text-align:left; vertical-align:bottom;"></td>
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
        <td>订单ID</td>
        <td>订单类型</td>
        <td>供应商</td>
        <td>产品</td>
        <td>退换数量</td>
        <td>创建人</td>
        <td>创建时间</td>
        <td>发货/退货人</td>
        <td>发货/退货时间</td>
        <td>收货/收退货人</td>
        <td>收货/收退货时间</td>
        <td>订单状态</td>
      </tr>
    </thead>
    <tbody>
          </tbody>
    <tr>
      <td colspan="14" align="center" valign="middle"><a href="pages/front/business/suppliers_qa_add.jsp" class="btn btn-primary">&nbsp;&nbsp;&nbsp;添加退换单</a></td>
    </tr>
  </table>
</form>
 

 

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