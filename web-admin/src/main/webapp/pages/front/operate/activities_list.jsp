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
    <input type="hidden" name="exec" id="exec" value="Contents_promotionss">
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
        <td>活动标题</td>
        <td>活动分类</td>
        <td>活动简介</td>
        <td>活动商品/价格</td>
        <td>活动限制用户等级</td>
        <td>活动限制数量</td>
        <td>活动有效期</td>
        <td>操作人员</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><b><a href="pages/front/operate/article_modify.jsp">23</a></b></td>
        <td><a href="pages/front/operate/activities_modify.jsp">关于我们</a></td>
        <td>专题</td>
        <td><p><img src="/upload/image/20181225/20181225141721642386.jpg" title="20181225141721642386.jpg" alt="关于我们.jpg"/></p></td>
        <td></td>
        <td>不限制(0)，</td>
        <td>0</td>
        <td>至</td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="pages/front/operate/article_modify.jsp">22</a></b></td>
        <td><a href="pages/front/operate/article_modify.jsp">空间</a></td>
        <td>专题</td>
        <td></td>
        <td>XXX&nbsp;/&nbsp;58.00<br/>
          XXXX&nbsp;/&nbsp;118.00<br/>
          XXXXX&nbsp;/&nbsp;38.00<br/>
          <br/>          <br/></td>
        <td>不限制(0)，</td>
        <td>0</td>
        <td>至</td>
        <td>小张</td>
      </tr>
          </tbody>
    <tr>
      <td colspan="9" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="/manage.jsp?action=main&exec=Contents_promotionss&page=2">2</a>]
[<a  href="/manage.jsp?action=main&exec=Contents_promotionss&page=3">3</a>]
<a  href="/manage.jsp?action=main&exec=Contents_promotionss&page=2">下一页</a>&nbsp;<a  href="/manage.jsp?action=main&exec=Contents_promotionss&page=3">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Contents_promotionss&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option></select>&nbsp;页&nbsp;共3页&nbsp;23条&nbsp;&nbsp;&nbsp;<a href="pages/front/operate/activities_add.jsp" class="btn btn-primary">添加活动</a></td>
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