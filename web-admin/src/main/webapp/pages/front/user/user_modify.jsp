<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Users_userss&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">用户详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="1983"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>用户名</td>
        <td><div class="col-sm-5"><input name="uname" type="text" id="uname" size="50" value="13651252542"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>用户昵称</td>
        <td><div class="col-sm-5"><input name="nickname" type="text" id="nickname" size="50" value="13651252542"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>用户唯一标识</td>
        <td>746e6ede790ab6457c330e3435db1481</td>
      </tr>
            <tr>
        <td>密码</td>
        <td><div class="col-sm-5"><input name="upwd" type="password" id="upwd" size="50" value=""  class="form-control"   />
</div>注：不修改请留空</td>
      </tr>
            <tr>
        <td>性别</td>
        <td><div id="sex_div" class="col-sm-3"><select name="sex" id="sex" class="form-control" disabled>
<option value="">请选择</option>
<option value="0" selected>未知</option>
<option value="1">男</option>
<option value="2">女</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>来源</td>
        <td><div id="source_div" class="col-sm-3"><select name="source" id="source" class="form-control" disabled>
<option value="">请选择</option>
<option value="1" selected>本站</option>
<option value="2">微信</option>
<option value="3">QQ</option>
<option value="4">sina微博</option>
<option value="5">小程序</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>手机号</td>
        <td>13651252542</td>
      </tr>
            <tr>
        <td>级别</td>
        <td><div id="ulvl_div" class="col-sm-3"><select name="ulvl" id="ulvl" class="form-control" >
<option value="">请选择</option>
<option value="1" selected>普通</option>
<option value="2">铜牌用户</option>
<option value="3">银牌用户</option>
<option value="4">金牌用户</option>
<option value="5">VIP</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>余额</td>
        <td><div class="col-sm-5"><input name="money" type="text" id="money" size="50" value="0.00"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>积分</td>
        <td><div class="col-sm-5"><input name="integral" type="text" id="integral" size="50" value="0"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">关闭</option>
<option value="1" selected>打开</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>注册时间</td>
        <td>2019-05-16 02:13:01</td>
      </tr>
            <tr>
        <td>最近登陆时间</td>
        <td>2019-05-16 02:13:01</td>
      </tr>
            <tr>
        <td>操作员</td>
        <td></td>
      </tr>
            <tr>
        <td>更多操作</td>
        <td><a href="?action=main&exec=Users_user_couponss&fun=viewEdit&adduserid=1983&t_uniq="  target="_blank" >发卷</a>&nbsp;&nbsp;&nbsp;<a href="?action=main&exec=Users_user_messages&fun=viewEdit&&adduserid=1983&t_uniq="  target="_blank" >发消息</a></td>
      </tr>
            <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="返回" onclick="javascript:history.back();" class="btn btn-default" /></td>
      </tr>
    </tbody>
  </table>
</form>
 
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