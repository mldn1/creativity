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
             <header class="panel-heading"> 修改密码 </header>
            <div class="panel-body">
              <form class="form-horizontal adminex-form" id="userprofilepwd-form">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">旧密码</label>
                  <div class="col-sm-10">
                    <input type="password" name="oldpwd" class="form-control" placeholder="请填旧密码">
                  </div>
                </div>
				<div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">新密码</label>
                  <div class="col-sm-10">
                    <input type="password" name="newpwd" id="newpwd" class="form-control" placeholder="请填写新密码">
                  </div>
                </div>
				<div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">确认密码</label>
                  <div class="col-sm-10">
                    <input type="password" name="confpwd" class="form-control" placeholder="请填写确认">
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-lg-2 col-sm-2 control-label"></label>
                  <div class="col-lg-10">
                    <button type="submit" class="btn btn-primary">提 交</button>
                  </div>
                </div>
              </form>
              <h2>${error}</h2>
              <h2>${result}</h2>
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
</body>
</html>
