<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation"></nav>
<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Users_user_messages&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">消息详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value=""  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>用户名</td>
        <td><div class="col-sm-5"><input name="uname" type="text" id="uname" size="50" value="18810578028"  class="form-control"   readonly />
</div><div class="col-sm-5"><input name="uid" type="hidden" id="uid" size="50" value="2007"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>标题</td>
        <td><div class="col-sm-5"><input name="title" type="text" id="title" size="50" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>内容</td>
        <td><script id="content" name="content" type="text/plain" style="width:100%;height:260px;"></script></td>
      </tr>
            <tr>
        <td>类型</td>
        <td><div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="1">系统</option>
<option value="2">用户</option>
<option value="3">评论</option>
<option value="11">发货短信</option>
<option value="12">退款短信</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>属性</td>
        <td><div id="type_div" class="col-sm-3"><select name="type" id="type" class="form-control" disabled>
<option value="">请选择</option>
<option value="1">系统</option>
<option value="2" selected>人工

</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="-1">删除</option>
<option value="0">未读</option>
<option value="1">已读</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>创建时间</td>
        <td></td>
      </tr>
            <tr>
        <td>阅读时间</td>
        <td></td>
      </tr>
            <tr>
        <td>操作员</td>
        <td></td>
      </tr>
            <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="返回" onClick="javascript:history.back();" class="btn btn-default" /></td>
      </tr>
    </tbody>
  </table>
</form>
<script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.config.js"></script> 
<script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.all.min.js"> </script> 
<script type="text/javascript" charset="utf-8" src="./ueditor/lang/zh-cn/zh-cn.js"></script> 
<script>
	UE.getEditor('content');</script> 
 
</div>
</div>
</body>
<script>
$(function(){
	$('#Users').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>