<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">
<div style="width: 98%; margin-left: 1%;">
  <form name="form_simple" method="GET" action="manage.jsp">
    <input type="hidden" name="action" id="action" value="main">
    <input type="hidden" name="exec" id="exec" value="BuyersSupplier_supplierInfo">
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
<option value="1">厂家</option>
<option value="2">代理</option>
</select></div>

              </div>
            </div></td>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">状态：</label>
              <div class="col-lg-7">
                <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0"><span style="color:#C00; font-weight:bold">关闭</span></option>
<option value="1" selected><span style="color:#3C0; font-weight:bold">打开</span></option>
<option value="9"><span style="color:#30F; font-weight:bold">置顶</span></option>
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
        <td>供应商名称</td>
        <td>供应商编码</td>
        <td>供应商负责人</td>
        <td>我方对接人</td>
        <td>供应商类型</td>
        <td>供应商状态</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><b>1</b></td>
        <td><a href="pages/front/business/suppliers_modify.jsp">铜器馆</a></td>
        <td>001</td>
        <td>文文</td>
        <td>小A</td>
        <td>厂家</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
      </tr>
          </tbody>
    <tr>
      <td colspan="8" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
<span class="">下一页</span>&nbsp;<span class="">尾页</span>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=BuyersSupplier_supplierInfo&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option></select>&nbsp;页&nbsp;共1页&nbsp;1条&nbsp;&nbsp;&nbsp;<a href="pages/front/business/suppliers_add.jsp" class="btn btn-primary">添加供应商</a></td>
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