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
    <input type="hidden" name="exec" id="exec" value="Contents_newss">
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
              <label class="col-lg-2" for="loc">位置：</label>
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
              <label class="col-lg-2" for="cls">类型：</label>
              <div class="col-lg-15">
                <div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="1">普通新闻</option>
<option value="2">常见问题</option>
<option value="3">物流配送</option>
<option value="4">关于我们</option>
<option value="5">合作伙伴</option>
<option value="6">售后服务</option>
<option value="7">会员服务</option>
<option value="8">优惠卷</option>
<option value="9">红包规则</option>
<option value="10">限时活动</option>
<option value="11">服务协议</option>
<option value="12">注册协议</option>
<option value="13">隐私协议</option>
<option value="31">信息流内容</option>
</select></div>

              </div>
            </div></td>
        </tr>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">状态：</label>
              <div class="col-lg-15">
                <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">关闭</option>
<option value="1">打开</option>
<option value="8">热门</option>
<option value="9">置顶</option>
</select></div>

              </div>
            </div></td>
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
        <td>新闻标题</td>
        <td>短标题</td>
        <td>类型</td>
        <td>位置</td>
        <td>新闻状态</td>
        <td>排序</td>
        <td>发表时间</td>
        <td>修改时间</td>
        <td>浏览量</td>
        <td>修改人员</td>
      </tr>
    </thead>
    <tbody class="sortable">
            <tr class="title" pid="10">
        <td><b><a href="#">10</a></b></td>
        <td><a href="pages/front/operate/article_modify.jsp">关于我们</a></td>
        <td>关于我们</td>
        <td>关于我们</td>
        <td></td>
        <td>打开</td>
        <td>0</td>
        <td>2018-09-03 14:55:21</td>
        <td>2019-01-07 17:57:55</td>
        <td>207</td>
        <td>小张</td>
      </tr>
            <tr class="title" pid="33">
        <td><b><a href="?action=main&exec=Contents_newss&fun=viewEdit&id=33">33</a></b></td>
        <td><a href="pages/front/operate/article_modify.jsp">关于我们</a></td>
        <td></td>
        <td>普通新闻</td>
        <td></td>
        <td>打开</td>
        <td>1</td>
        <td>2019-01-07 17:50:48</td>
        <td>2019-01-08 10:09:04</td>
        <td>687</td>
        <td>小张</td>
      </tr>
            <tr class="title" pid="32">
        <td><b><a href="?action=main&exec=Contents_newss&fun=viewEdit&id=32">32</a></b></td>
        <td><a href="?action=main&exec=Contents_newss&fun=viewEdit&id=32">帝王也有情深时</a></td>
        <td></td>
        <td>普通新闻</td>
        <td></td>
        <td>打开</td>
        <td>1</td>
        <td>2019-01-04 14:57:31</td>
        <td></td>
        <td>0</td>
        <td>小张</td>
      </tr>
            <tr class="title" pid="31">
        <td><b><a href="?action=main&exec=Contents_newss&fun=viewEdit&id=31">31</a></b></td>
        <td><a href="?action=main&exec=Contents_newss&fun=viewEdit&id=31">林深时见鹿，梦醒时见你</a></td>
        <td></td>
        <td>普通新闻</td>
        <td></td>
        <td>打开</td>
        <td>1</td>
        <td>2019-01-03 16:51:09</td>
        <td></td>
        <td>0</td>
        <td>小张</td>
      </tr>
            <tr class="title" pid="13">
        <td><b><a href="?action=main&exec=Contents_newss&fun=viewEdit&id=13">13</a></b></td>
        <td><a href="?action=main&exec=Contents_newss&fun=viewEdit&id=13">金秋好礼</a></td>
        <td></td>
        <td>普通新闻</td>
        <td></td>
        <td>打开</td>
        <td>8</td>
        <td>2018-11-02 17:51:53</td>
        <td>2018-11-09 15:51:29</td>
        <td>167</td>
        <td>小李</td>
      </tr>
            <tr class="title" pid="12">
        <td><b><a href="?action=main&exec=Contents_newss&fun=viewEdit&id=12">12</a></b></td>
        <td><a href="?action=main&exec=Contents_newss&fun=viewEdit&id=12">开馆特辑</a></td>
        <td></td>
        <td>普通新闻</td>
        <td></td>
        <td>打开</td>
        <td>9</td>
        <td>2018-11-02 17:12:11</td>
        <td>2018-12-25 09:52:53</td>
        <td>980</td>
        <td>test</td>
      </tr>
            <tr class="title" pid="9">
        <td><b><a href="?action=main&exec=Contents_newss&fun=viewEdit&id=9">9</a></b></td>
        <td><a href="?action=main&exec=Contents_newss&fun=viewEdit&id=9">购物须知</a></td>
        <td></td>
        <td>售后服务</td>
        <td></td>
        <td>打开</td>
        <td>10</td>
        <td>2018-08-28 19:18:09</td>
        <td>2018-08-29 17:45:16</td>
        <td>170</td>
        <td></td>
      </tr>
          </tbody>
    <tr>
      <td colspan="11" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="/manage.jsp?action=main&exec=Contents_newss&page=2">2</a>]
<a  href="/manage.jsp?action=main&exec=Contents_newss&page=2">下一页</a>&nbsp;<a  href="/manage.jsp?action=main&exec=Contents_newss&page=2">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Contents_newss&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option></select>&nbsp;页&nbsp;共2页&nbsp;31条&nbsp;&nbsp;&nbsp;<a href="pages/front/operate/article_add.jsp">添加新闻</a></td>
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
				url: "/ajax.jsp?action=manage_getContentsNews&exec=update_ord",
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