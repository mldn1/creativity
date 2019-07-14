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
    <input type="hidden" name="exec" id="exec" value="Contents_invitess">
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
        <td>名称</td>
        <td>说明</td>
        <td>限制人数</td>
        <td>单次活动期限（小时）</td>
        <td>使用期限</td>
        <td>优惠卷</td>
        <td>使用商品</td>
        <td>使用类型</td>
        <td>剩余数量</td>
        <td>状态</td>
        <td>操作人员</td>
      </tr>
    </thead>
    <tbody>
          </tbody>
    <tr>
      <td colspan="12" align="center" valign="middle"><a href="pages/front/operate/invite_add.jsp" class="btn btn-primary">&nbsp;&nbsp;&nbsp;添加</a></td>
    </tr>
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