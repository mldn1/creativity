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
    <input type="hidden" name="exec" id="exec" value="Commodity_commoditys_group">
    <a href="file:///F|/2019项目试验/文创商城后台/产品组管理详情.html">产品组管理详情</a><table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td colspan="2" style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索关键词：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="key" name="key" value=""
					placeholder="请输入查询关键词">
              </div>
            </div></td>
        </tr>
      	
		<tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">状态：</label>
              <div class="col-lg-10">
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
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="cls">分类：</label>
              <div class="col-lg-10">
                <div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="1">新品</option>
<option value="2">故宫美妆</option>
<option value="3">国礼</option>
<option value="5">茶器香器</option>
<option value="6">潮物空间</option>
</select></div>

              </div>
            </div></td>
        </tr>			
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="size">个/页：</label>
              <div class="col-lg-3">
                <input type="number" class="form-control" id="size" name="size" value="20" min="20" max="100" step="20">
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
		  	<td><a href="?action=main&exec=Commodity_commoditys_group&ordname=d">商品名称</a></td>
        <td>商品短名称</td>
        <td>商品唯一码</td>
        <td>最低单价价</td>
        <td>颜色/规格</td>
        <td>分类</td>
        <td>状态</td>
        <td>主排序</td>
        <td>分馆排序</td>
        <td><a href="?action=main&exec=Commodity_commoditys_group&ordhit=d">访问量</a></td>
        <td>修改时间</td>
        <td>修改人员</td>
      </tr>
    </thead>
    <tbody class="sortable">
            <tr class="title" pid="133">
        <td>133</td>
        <td><a href="?action=main&exec=Commodity_commoditys_group&fun=viewEdit&id=133">测试单品单品</a></td>
        <td>测试单品</td>
        <td><b>11111111111</b>&nbsp;
          <input type="button" name="copy" id="copy" value="复制" class="btn btn-info" data-clipboard-text="https://www.XXXXXXX.com/detail.jsp?id=b7a13bfc2d7352ce" /></td>
        <td>1.00</td>
        <td>胭脂；瓷</td>
        <td></td>
        <td>草稿</td>
        <td>0</td>
        <td>0</td>
        <td>188</td>
        <td>2018-09-19 17:41:13</td>
        <td>小李</td>
      </tr>
            <tr class="title" pid="199">
        <td>199</td>
        <td><a href="?action=main&exec=Commodity_commoditys_group&fun=viewEdit&id=199">xxxxxxxx</a></td>
        <td>单品</td>
        <td><b>0000000000</b>&nbsp;&nbsp;&nbsp;
          <input type="button" name="copy" id="copy" value="复制" class="btn btn-info" data-clipboard-text="https://www.XXXXXXX.com/detail.jsp?id=757b9d28896a46a0" /></td>
        <td>740.00</td>
        <td>青色；瓷</td>
        <td>茶具，综合</td>
        <td>上架</td>
        <td>0</td>
        <td>0</td>
        <td>106</td>
        <td></td>
        <td></td>
      </tr>
          </tbody>
    <tr>
      <td colspan="14" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="/manage.jsp?action=main&exec=Commodity_commoditys_group&page=2">2</a>]
[<a  href="/manage.jsp?action=main&exec=Commodity_commoditys_group&page=3">3</a>]
[<a  href="/manage.jsp?action=main&exec=Commodity_commoditys_group&page=4">4</a>]
<a  href="/manage.jsp?action=main&exec=Commodity_commoditys_group&page=2">下一页</a>&nbsp;<a  href="/manage.jsp?action=main&exec=Commodity_commoditys_group&page=4">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Commodity_commoditys_group&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>&nbsp;页&nbsp;共4页&nbsp;70条</td>
    </tr>
  </table>
</form>
<script src="/js/clipboard.min.js"></script>
<script>	
var clipboard = new ClipboardJS('.btn');
clipboard.on('success',function(e) {
	console.log(e);
	alert("复制成功！");
});
clipboard.on('error',function(e) {
	console.log(e);
	alert("复制失败！");
});
	
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
				url: "/ajax.jsp?action=manage_getCommodityGroup&exec=update_ord",
				//服务端处理程序 
				data: {
					id: newid,
					oid: oldid,
					cls: 0				},
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
	$('#Commodity').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>