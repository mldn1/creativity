<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
<style>
.form-signin .help-block{color:#a94442;}
</style>
</head><body class="login-body">
<div class="container">
  <form class="form-signin" id="login-form">
    <div class="form-signin-heading text-center">
      <h1 class="sign-title">登录</h1>
      <img src="static/img/logo.png" alt="" style="width:120px;"/> </div>
    <div class="login-wrap">
      <input type="text" class="form-control" name="username" placeholder="请填写用户名" autofocus>
      <input type="password" class="form-control" name="password" placeholder="请填写密码">
      <p></p>
	<button class="btn btn-lg btn-login btn-block" type="submit"> 登录</button>
    </div>
  </form>
</div>
<jsp:include page="/pages/plugins/include_foot.jsp"/>
</body>
</html>
