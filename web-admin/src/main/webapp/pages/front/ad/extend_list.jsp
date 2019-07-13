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
    <input type="hidden" name="exec" id="exec" value="Promotion_ad_channel">
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
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">状态：</label>
              <div class="col-lg-7">
                <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0"><span style="color:#C00; font-weight:bold">关闭</span></option>
<option value="1"><span style="color:#3C0; font-weight:bold">打开</span></option>
<option value="9"><span style="color:#30F; font-weight:bold">置顶</span></option>
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
<form action="?action=main&exec=Promotion_ad_channel&fun=upfile" method="POST" enctype="multipart/form-data" name="form_list" id="form_list">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr style="font-weight:bold;">
        <td>id</td>
        <td>渠道名称</td>
        <td>渠道ID</td>
        <td>渠道账号</td>
        <td>渠道类型</td>
        <td>计划</td>
        <td>单元</td>
        <td>关键词</td>
        <td>追踪代码</td>
        <td>推广链接</td>
        <td>状态</td>
		  	<td><a href="?action=main&exec=Promotion_ad_channel&ordhit=d">点击量</a></td>
        <td>操作人员</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><b>888&nbsp;&nbsp;&nbsp;
            <input name="id[]" type="checkbox" id="id[]" value="575"  /></b></td>
        <td><a href="pages/front/ad/extend_modify.jsp">知乎</a></td>
        <td>C111</td>
        <td>知乎01</td>
        <td>信息流</td>
        <td>大图-宫廷茶器3-1207</td>
        <td>马克杯-大图-细节图-老素材拓展人群</td>
        <td>马克杯-大图-细节图-老素材拓展人群</td>
        <td><input type="button" name="copy" id="copy" value="复制" class="btn btn-info" data-clipboard-text="Gp4oDpXzvvx2bvBcEV6anD3LzQJ9zQJGnDdnfD34tV6aqCJ8" /></td>
        <td><input type="button" name="copy" id="copy" value="复制" class="btn btn-info" data-clipboard-text="https://ad.XXXXXXX.com/ad.jsp?k=Gp4oDpXzvvx2bvBcEV6anD3LzQJ9zQJGnDdnfD34tV6aqCJ8" /></td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>0</td>
        <td>XX</td>
      </tr>
          </tbody>
    <tfoot>
    <tr>
      <td colspan="13" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="/manage.jsp?action=main&exec=Promotion_ad_channel&page=2">2</a>]
[<a  href="/manage.jsp?action=main&exec=Promotion_ad_channel&page=3">3</a>]
[<a  href="/manage.jsp?action=main&exec=Promotion_ad_channel&page=4">4</a>]
<a  href="/manage.jsp?action=main&exec=Promotion_ad_channel&page=2">下一页</a>&nbsp;<a  href="/manage.jsp?action=main&exec=Promotion_ad_channel&page=21">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Promotion_ad_channel&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option></select>&nbsp;页&nbsp;共21页&nbsp;419条&nbsp;&nbsp;&nbsp;<a href="pages/front/ad/extend_add.jsp" class="btn btn-primary">添加</a></td>
    </tr>
    <tr>
      <td colspan="13" align="center" valign="middle"><input type="checkbox" onClick="javascript:allcheckbox(this, 'id[]');">全选&nbsp;&nbsp;&nbsp;<input type="button" name="out" id="out" value="导出" onClick="javascript:outXML();" class="btn btn-info" />        </td>
    </tr>
    <tr>
      <td colspan="13" align="center" valign="middle"><input type="file" name="upfile" id="upfile"><input type="submit" name="Submit" id="Submit" value="导入" class="btn btn-default" /></td>
    </tr>
    </tfoot>
  </table>
</form>
<script src="/js/clipboard.min.js"></script>
<script>
var checkbox = [];
	
var clipboard = new ClipboardJS('.btn');
clipboard.on('success',function(e) {
	console.log(e);
	alert("复制成功！");
});
clipboard.on('error',function(e) {
	console.log(e);
	alert("复制失败！");
});
	

function allcheckbox(allObj, name){
	var chk = document.getElementsByName(name);
	var _tmp = [];
	for(i=0;i<chk.length;i++){
		chk[i].checked = allObj.checked;
	}
}

function getData(){	
	var sendUrl = "/ajax.jsp?action=manage_getPromotionAdChannel&index=" + checkbox.join('|');
	$.ajax({
		type: 'GET',
		url: sendUrl,
		dataType: 'html',
		async: false,
		success: function(data) {
			console.log("data=" + data);
			if (data) {
				window.location.href=data;
			} else {}
		},
		error: function(xhr, type) {}
	});
}
	
function outXML(){
	var list = $("input[name='id[]']:checked");
	list.each(function(){
		if($(this).is(':checked')){
			checkbox.push($(this).val());
		}
	});
	console.log('checkbox='+checkbox);
	if(checkbox.length>0){
		getData();
	}
}
</script>
 

 

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