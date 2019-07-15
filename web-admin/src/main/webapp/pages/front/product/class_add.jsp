<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Commodity_commodity_class&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value=""  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>分类级别</td>
        <td><div id="pid_div" class="col-sm-3"><select name="pid" id="pid" class="form-control" >
<option value="">请选择</option>
<option value="0">一级类</option>
<option value="1">新品</option>
<option value="2">故宫美妆</option>
<option value="3">国礼</option>
<option value="5">茶器香器</option>
<option value="6">潮物空间</option>
<option value="20">综合馆</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>分类名称</td>
        <td><div class="col-sm-5"><input name="name" type="text" id="name" size="50" value=""  class="form-control"   required="required" />
</div></td>
      </tr>
            <tr>
        <td>分类ICON</td>
        <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
      </tr>
            <tr>
        <td>分类排序</td>
        <td><div class="col-sm-5"><input name="order" type="text" id="order" size="50" value="99"  class="form-control"   />
</div>注：数字越小越靠前</td>
      </tr>
            <tr>
        <td>站点显示title</td>
        <td><div class="col-sm-5"><input name="web_title" type="text" id="web_title" size="50" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>站点显示description</td>
        <td><div class="col-sm-5"><input name="web_description" type="text" id="web_description" size="50" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>站点显示keywords</td>
        <td><div class="col-sm-5"><input name="web_keywords" type="text" id="web_keywords" size="50" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>分类状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">关闭</option>
<option value="1">打开</option>
<option value="8">推荐</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>操作员</td>
        <td></td>
      </tr>
            <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="返回" onClick="javascript:history.back();" class="btn btn-default" />
          &nbsp;&nbsp;&nbsp;
          <input type="submit" name="Submit" id="Submit" value="删除" onClick="javascript:confirm('确认删除！');" class="btn btn-danger" /></td>
      </tr>
    </tbody>
  </table>
</form>


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