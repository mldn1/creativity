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
    <input type="hidden" name="exec" id="exec" value="Promotion_channel">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
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
        <td>渠道名称</td>
        <td>渠道ID</td>
        <td>渠道类型</td>
        <td>密钥</td>
        <td>签名</td>
        <td>结算比率</td>
        <td>商务人员</td>
        <td>状态</td>
        <td>操作人员</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><b>3</b></td>
        <td><a href="pages/front/ad/channel_modify.jsp">测试渠道</a></td>
        <td>B9999</td>
        <td>宣传</td>
        <td></td>
        <td></td>
        <td>0</td>
        <td><div id="commerce_div" class="col-sm-3"><select name="commerce" id="commerce" class="form-control" >
<option value="">请选择</option>
</select></div></td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
          </tbody>
    <tr>
      <td colspan="10" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
<span class="">下一页</span>&nbsp;<span class="">尾页</span>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Promotion_channel&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option></select>&nbsp;页&nbsp;共1页&nbsp;4条&nbsp;&nbsp;&nbsp;<a href="pages/front/ad/channel_add.jsp" class="btn btn-primary">添加渠道</a></td>
    </tr>
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