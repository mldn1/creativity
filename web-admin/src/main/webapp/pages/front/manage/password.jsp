<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
    <%!
        private static final String PASSWORD_URL = "pages/front/manage/password_pre.action" ;
    %>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">
<form action="<%=PASSWORD_URL%>" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">修改密码</td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td align="left" valign="top">id：</td>
        <td align="left" valign="top"><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="${emp.phone}"  class="form-control"   readonly />
</div></td>
      </tr>
      <tr>
        <td align="left" valign="top">Email：</td>
        <td align="left" valign="top"><div class="col-sm-5"><input name="email" type="text" id="email" size="50" value="${emp.email}"  class="form-control"   readonly="readonly" />
</div></td>
      </tr>
      <tr>
        <td align="left" valign="top">旧密码：</td>
        <td align="left" valign="top"><div class="col-sm-5"><input name="old_password" type="text" id="old_password" size="50" value=""  class="form-control"   />
</div></td>
      </tr>
      <tr>
        <td align="left" valign="top">新密码：</td>
        <td align="left" valign="top"><div class="col-sm-5"><input name="new_password" type="text" id="new_password" size="50" value=""  class="form-control"   />
</div></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="button" id="button" value="返回" onclick="javascript:history.back();" class="btn btn-info" /></td>
      </tr>
    </tbody>
  </table>
</form>
</div>
</div>
</body>
<script>
$(function(){
	$('#EditPwd').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>