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
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-lg-12">
          <section class="panel">
             <header class="panel-heading"> 基本资料 </header>
            <div class="panel-body">
              <form action="pages/back/admin/users/profile_form.action" class="form-horizontal adminex-form" id="userprofile-form" method="get">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">姓名</label>
                  <div class="col-sm-10">
                    <input type="text" name="name"  value="" class="form-control" placeholder="请填写姓名">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">性别</label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                    <input type="radio" name="sex" value="1">
                    男 </label>
                    <label class="radio-inline">
                    <input type="radio" name="sex" value="2">
                    女 </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">生日</label>
                  <div class="col-sm-10">
                    <input type="text" name="birthday" id="default-date-picker"  value="" class="form-control" placeholder="请填写昵称">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">公司邮箱</label>
                  <div class="col-sm-10">
                    <input type="email" name="email"  value="" class="form-control" placeholder="cto@milu365.com">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">微信号</label>
                  <div class="col-sm-10">
                    <input type="text" name="wchet"  value="" class="form-control" placeholder="微信号">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">QQ</label>
                  <div class="col-sm-10">
                    <input type="text" name="qq"  value="" class="form-control" placeholder="QQ号">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">手机号</label>
                  <div class="col-sm-10">
                    <input type="text" name="phone" maxlength="11" value="" class="form-control" placeholder="${emp.phone}" readonly="readonly">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">电话</label>
                  <div class="col-sm-10">
                    <input type="text" name="tele"  value="" class="form-control" placeholder="联系电话">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">住址</label>
                  <div class="col-sm-10">
                    <input type="text" name="address"  value="" class="form-control" placeholder="详情住址">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">紧急联系人</label>
                  <div class="col-sm-10">
                    <input type="text" name="contacts"  value="" class="form-control" placeholder="紧急联系人">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">紧急联系人电话</label>
                  <div class="col-sm-10">
                    <input type="text" name="contactscall"  value="" class="form-control" placeholder="紧急联系人电话">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 col-sm-2 control-label"></label>
                  <div class="col-lg-10">
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
