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
    <input type="hidden" name="exec" id="exec" value="Contents_adss">
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
          <td colspan="2" style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">个/页：</label>
              <div class="col-md-2">
                <input type="number" class="form-control" id="size" name="size" value="20" min="20" max="100" step="20">
              </div>
            </div></td>
        </tr>
      
		<tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="loc">广告位置：</label>
              <div class="col-lg-15">
                <div id="loc_div" class="col-sm-3"><select name="loc" id="loc" class="form-control" >
<option value="">请选择</option>
<option value="1">首页</option>
<option value="2">分馆页</option>
<option value="3">专题页</option>
<option value="4">最终页</option>
<option value="99">欢迎页</option>
</select></div>

              </div>
            </div></td>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="point">广告定位：</label>
              <div class="col-lg-15">
                <div id="point_div" class="col-sm-3"><select name="point" id="point" class="form-control" >
<option value="">请选择</option>
<option value="1">屏首</option>
<option value="2">屏中</option>
<option value="3">屏尾</option>
</select></div>

              </div>
            </div></td>
        </tr>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="cls">广告类型：</label>
              <div class="col-lg-15">
                <div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="1">轮播</option>
<option value="2">图片</option>
<option value="3">文字</option>
<option value="4">小程序</option>
</select></div>

              </div>
            </div></td>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">广告状态：</label>
              <div class="col-lg-15">
                <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">关闭</option>
<option value="1">打开</option>
<option value="8">推荐</option>
<option value="9">置顶</option>
<option value="31">草稿</option>
</select></div>

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
		  	<td><a href="?action=main&exec=Contents_adss&ordname=d">广告名称</a></td>
        <td>广告位置</td>
        <td>广告定位</td>
        <td>广告类型</td>
        <td>广告宽高</td>
        <td>广告状态</td>
        <td>广告排序</td>
		  	<td><a href="?action=main&exec=Contents_adss&ordhit=d">点击量</a></td>
        <td>操作人员</td>
      </tr>
    </thead>
    <tbody class="sortable">
            <tr class="title" pid="141">
        <td><b><a href="pages/front/operate/ad_modify.jsp">141</a></b></td>
        <td><a href="pages/front/operate/ad_modify.jsp">版本更新</a></td>
        <td>首页(1)，</td>
        <td>屏首(1)，</td>
        <td>轮播(1)，</td>
        <td>750*350</td>
        <td>打开</td>
        <td>1</td>
        <td>0</td>
        <td>&nbsp;</td>
      </tr>
            <tr class="title" pid="79">
        <td><b><a href="pages/front/operate/ad_modify.jsp">79</a></b></td>
        <td><a href="pages/front/operate/ad_modify.jsp">小程序-福禄寿东非</a></td>
        <td>最终页(4)，</td>
        <td>屏首(1)，</td>
        <td>小程序(4)，</td>
        <td></td>
        <td>打开</td>
        <td>4</td>
        <td>20</td>
        <td>&nbsp;</td>
      </tr>
          </tbody>
    <tr>
      <td colspan="10" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="/manage.jsp?action=main&exec=Contents_adss&page=2">2</a>]
[<a  href="/manage.jsp?action=main&exec=Contents_adss&page=3">3</a>]
[<a  href="/manage.jsp?action=main&exec=Contents_adss&page=4">4</a>]
<a  href="/manage.jsp?action=main&exec=Contents_adss&page=2">下一页</a>&nbsp;<a  href="/manage.jsp?action=main&exec=Contents_adss&page=6">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Contents_adss&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option></select>&nbsp;页&nbsp;共6页&nbsp;120条&nbsp;&nbsp;&nbsp;<a href="pages/front/operate/ad_add.jsp">添加广告</a></td>
    </tr>
  </table>
</form>
<script> 
$(function() {
	var list = $(".sortable");
	var orderlist = [], _order = [];
	var oldid = '';
	list.children(".title").each(function() { 
		 _order.push($(this).attr('pid')); 
	});
	oldid = _order.join('|');
	console.log('oldid='+oldid);
	
	list.sortable({
		opacity: 0.6,
		//设置拖动时候的透明度 
		revert: true,
		//缓冲效果 
		cursor: 'move',
		//拖动的时候鼠标样式
		update: function() {
			var new_order = [];
			list.children(".title").each(function() {
				new_order.push($(this).attr('pid'));
			});
			var newid = new_order.join('|');
			console.log('newid='+newid);
			$.ajax({
				type: "post",
				url: "/ajax.jsp?action=manage_getCommodityAds&exec=update_ord",
				//服务端处理程序 
				data: {
					id: newid,
					oid: oldid,
				},
				//id:新的排列对应的ID,order：原排列顺序 
				beforeSend: function() {},
				success: function(msg) {
					console.log('data='+msg);
					oldid = newid;
					location.reload();
				}
			});
		}
	});
});
</script>
 

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