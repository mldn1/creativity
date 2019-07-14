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
    <input type="hidden" name="exec" id="exec" value="BuyersSupplier_supplierProducts">
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
        <td>商品名称</td>
        <td>商品sku编码</td>
        <td>供应商名称</td>
        <td>商品售价</td>
        <td>商品结算价</td>
        <td>商品规格</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><b>2</b></td>
        <td><a href="pages/front/business/suppliers_product_modify.jsp">五蝠捧寿盘</a></td>
        <td>TQA-00002</td>
        <td>铜器馆</td>
        <td>595.00</td>
        <td>297.50</td>
        <td>10</td>
      </tr>
            <tr>
        <td><b>1</b></td>
        <td>双喜临门盘</td>
        <td>TQA-00001</td>
        <td>铜器馆</td>
        <td>595.00</td>
        <td>297.50</td>
        <td>10</td>
      </tr>
          </tbody>
    <tr>
      <td colspan="8" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
<span class="">下一页</span>&nbsp;<span class="">尾页</span>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=BuyersSupplier_supplierProducts&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option></select>&nbsp;页&nbsp;共1页&nbsp;2条&nbsp;&nbsp;&nbsp;<a href="pages/front/business/suppliers_product_add.jsp" class="btn btn-primary">添加商品</a></td>
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