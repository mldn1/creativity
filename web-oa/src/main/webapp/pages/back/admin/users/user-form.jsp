<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
</head><body class="sticky-header">
<section> <jsp:include page="/pages/plugins/include_menuitem.jsp"/>
  <!-- main content start-->
  <div class="main-content" >
    <!-- header section start-->
    <div class="header-section">
      <!--toggle button start-->
      <a class="toggle-btn"><i class="fa fa-bars"></i></a> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 组织管理     <jsp:include page="/pages/plugins/include_nav.jsp"/></h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="pages/back/admin/users/user-index.jsp">员工管理</a> </li>
        <li class="active"> 员工 </li>
      </ul>
      <div class="pull-right"><a href="pages/back/admin/users/user-index.jsp" class="btn btn-success">+添加新员工</a></div>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-lg-12">
          <section class="panel">
            <header class="panel-heading"> </header>
            <div class="panel-body">
              <form class="form-horizontal adminex-form" id="userprofile-form">
                <header><b> 基本信息 </b></header>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>用户名</label>
                  <div class="col-sm-10">
                    <input type="text" name="username"  value=" " class="form-control" placeholder="请填写用户名">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">密码</label>
                  <div class="col-sm-10">
                    <input type="text" name="password"  value="" class="form-control" placeholder="请填写密码">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>部门</label>
                  <div class="col-sm-10">
                    <select name="depart" class="form-control">
                      <option value="">请选择</option>
                      
				{{range .departs}}
				
                      <option value=""  selected></option>
                      
				
				
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>职位</label>
                  <div class="col-sm-10">
                    <select name="position" class="form-control">
                      <option value="">请选择</option>
                      
				{{range .positions}}
				
                      <option value="" {{if eq .Id $.pro.Positionid}}selected></option>
                      
				
				
                    </select>
                  </div>
                </div>
                <header> <b>帐号信息</b> </header>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>姓名</label>
                  <div class="col-sm-10">
                    <input type="text" name="realname"  value=" " class="form-control" placeholder="请填写姓名">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">性别</label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                    <input type="radio" name="sex" value="1"  checked>
                    男 </label>
                    <label class="radio-inline">
                    <input type="radio" name="sex" value="2"  checked>
                    女 </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>生日</label>
                  <div class="col-sm-10">
                    <input type="text" name="birth" id="default-date-picker"  value=" " class="form-control" placeholder="请填写昵称">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>公司邮箱</label>
                  <div class="col-sm-10">
                    <input type="email" name="email"  value=" " class="form-control" placeholder="cto@milu365.com">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">微信号</label>
                  <div class="col-sm-10">
                    <input type="text" name="webchat"  value=" " class="form-control" placeholder="微信号">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">QQ</label>
                  <div class="col-sm-10">
                    <input type="number" name="qq"  value=" " class="form-control" placeholder="QQ号">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>手机号</label>
                  <div class="col-sm-10">
                    <input type="number" name="phone" maxlength="11" value=" " class="form-control" placeholder="手机号">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">电话</label>
                  <div class="col-sm-10">
                    <input type="text" name="tel"  value=" " class="form-control" placeholder="联系电话">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">住址</label>
                  <div class="col-sm-10">
                    <input type="text" name="address"  value=" " class="form-control" placeholder="详情住址">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>紧急联系人</label>
                  <div class="col-sm-10">
                    <input type="text" name="emercontact"  value="" class="form-control" placeholder="紧急联系人">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>紧急联系人电话</label>
                  <div class="col-sm-10">
                    <input type="text" name="emerphone"  value=" " class="form-control" placeholder="紧急联系人电话">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 col-sm-2 control-label"></label>
                  <div class="col-lg-10">
                    <input type="hidden" name="id" value=" ">
                    <button type="submit" class="btn btn-primary">提 交</button>
                  </div>
                </div>
              </form>
            </div>
          </section>
        </div>
      </div>
    </div>
    <!--body wrapper end-->
    <!--footer section start-->    <jsp:include page="/pages/plugins/include_footinfo.jsp"/>
    <!--footer section end-->
  </div>
  <!-- main content end-->
</section>
<jsp:include page="/pages/plugins/include_foot.jsp"/>
<script src="static/js/jquery-ui-1.10.3.min.js"></script>
<script src="static/js/datepicker-zh-CN.js"></script>
<script>
$(function(){
	$('#default-date-picker').datepicker('option', $.datepicker.regional['zh-CN']); 	
	$('#default-date-picker').datepicker({
        dateFormat: 'yy-mm-dd',
		changeMonth: true,
		changeYear: true,
		yearRange:'-60:+0'
    });
})
</script>
</body>
</html>
