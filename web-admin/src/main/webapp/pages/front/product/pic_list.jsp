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
    <input type="hidden" name="exec" id="exec" value="Commodity_commoditys_album">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索关键词：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="key" name="key" value=""
					placeholder="请输入查询关键词">
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
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">类型：</label>
              <div class="col-lg-7">
                <div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="1">产品图</option>
<option value="2">产品小图</option>
<option value="11">广告图大</option>
<option value="12">广告图小</option>
</select></div>

              </div>
            </div></td>
        </tr>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">状态：</label>
              <div class="col-lg-7">
                <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">下架</option>
<option value="1">上架</option>
<option value="7">热销</option>
<option value="8">推荐</option>
<option value="9">置顶</option>
<option value="21">预售</option>
<option value="22">秒杀</option>
<option value="31">草稿</option>
<option value="41">已售空</option>
</select></div>

              </div>
            </div></td>
        </tr>      <tr>
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
        <td>ID</td>
        <td>图片描述</td>
        <td>图片</td>
        <td>类型</td>
        <td>状态</td>
        <td>创建时间</td>
        <td>创建人员</td>
        <td>&nbsp;</td>
      </tr>
    </thead>
    <tbody>
          </tbody>
    <tr>
      <td colspan="9" align="center" valign="middle"><a href="pages/front/product/pic_add.jsp" class="btn btn-primary">&nbsp;&nbsp;&nbsp;添加图片</a></td>
    </tr>
  </table>
</form>
<script>
function delImg(index) {
	if (confirm("确认删除？")) {} else {
		return;
	}
	var sendUrl = "/ajax.jsp?action=manage_getCommodityCommoditysAlbum&index=" + index;
	console.log("url=" + sendUrl);
	$.ajax({
		type: 'GET',
		url: sendUrl,
		dataType: 'html',
		async: false,
		success: function(data) {
			console.log("data=" + data);
			if (data) {
				alert("删除完成！");
				location.reload();
			} else {}
		},
		error: function(xhr, type) {}
	});
}
</script>
 

</div>
</div>
</body>
<script>
$(function(){
	$('#Commodity').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>