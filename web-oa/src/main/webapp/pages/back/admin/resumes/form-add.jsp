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
      <h3> 简历管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="pages/back/admin/resumes/index.jsp">简历管理</a> </li>
        <li class="active"> 简历 </li>
      </ul>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-lg-12">
          <section class="panel">
            <header class="panel-heading"> </header>
            <div class="panel-body">
              <form action="pages/back/admin/resumes/resume_add.action" class="form-horizontal adminex-form" id="resume-form">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>姓名</label>
                  <div class="col-sm-10">
                    <input type="text" name="name"  class="form-control" placeholder="请输入姓名">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>手机</label>
                  <div class="col-sm-10">
                    <input type="text" name="phone" value="" class="form-control" placeholder="请输入手机号">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">性别</label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                    <input type="radio" name="sex"  value="0" {{if eq 0 .resume.Sex}}checked>
                    男 </label>
                    <label class="radio-inline">
                    <input type="radio" name="sex" value="1" {{if eq 1 .resume.Sex}}checked>
                    女 </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">生日</label>
                  <div class="col-sm-10">
                    <input type="text" name="birthday" id="default-date-picker"  value="" class="form-control" placeholder="出生日期">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">学历</label>
                  <div class="col-sm-10">
                    <select name="eduid" class="form-control">
                      <option value="">请选择学历</option>
                      <option value="1" {{if eq 1 .resume.Edu}}selected>小学</option>
                      <option value="2" {{if eq 2 .resume.Edu}}selected>中专</option>
                      <option value="3" {{if eq 3 .resume.Edu}}selected>初中</option>
                      <option value="4" {{if eq 4 .resume.Edu}}selected>高中</option>
                      <option value="5" {{if eq 5 .resume.Edu}}selected>技校</option>
                      <option value="6" {{if eq 6 .resume.Edu}}selected>大专</option>
                      <option value="7" {{if eq 7 .resume.Edu}}selected>本科</option>
                      <option value="8" {{if eq 8 .resume.Edu}}selected>硕士</option>
                      <option value="9" {{if eq 9 .resume.Edu}}selected>博士</option>
                      <option value="10" {{if eq 10 .resume.Edu}}selected>博士后</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">工作年限</label>
                  <div class="col-sm-10">
                    <select name="wyid" class="form-control">
                      <option value="">请选择工作年限</option>
                      <option value="1" {{if eq 1 .resume.Work}}selected>应届毕业生</option>
                      <option value="2" {{if eq 2 .resume.Work}}selected>1年以下</option>
                      <option value="3" {{if eq 3 .resume.Work}}selected>1-2年</option>
                      <option value="4" {{if eq 4 .resume.Work}}selected>3-5年</option>
                      <option value="5" {{if eq 5 .resume.Work}}selected>6-7年</option>
                      <option value="6" {{if eq 6 .resume.Work}}selected>8-10年</option>
                      <option value="7" {{if eq 7 .resume.Work}}selected>10年以上</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">备注</label>
                  <div class="col-sm-10">
                    <textarea name="note" placeholder="备注说明" style="height:300px;" class="form-control"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">简历附件</label>
                  <div class="col-sm-10">
                    <input type="file" name="appendix">
                    <br/>
                    <a href="{{.resume.Attachment}}" target="_blank">预览下载</a>  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">状态</label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                    <input type="radio" name="state" value="1" {{if eq 1 .resume.Status}}checked>
                    入档 </label>
                    <label class="radio-inline">
                    <input type="radio" name="state" value="2" {{if eq 2 .resume.Status}}checked>
                    通知面试 </label>
                    <label class="radio-inline">
                    <input type="radio" name="state" value="3" {{if eq 3 .resume.Status}}checked>
                    违约 </label>
                    <label class="radio-inline">
                    <input type="radio" name="state" value="4" {{if eq 4 .resume.Status}}checked>
                    录用 </label>
                    <label class="radio-inline">
                    <input type="radio" name="state" value="5" {{if eq 5 .resume.Status}}checked>
                    不录用 </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 col-sm-2 control-label"></label>
                  <div class="col-lg-10">
                    <button type="submit"  class="btn btn-primary" >提交保存</button>
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
<script src="static/keditor/kindeditor-min.js"></script>
<script>
$(function(){
	var editor = KindEditor.create('textarea[name="note"]', {
	    uploadJson: "/kindeditor/upload",
	    allowFileManager: true,
	    filterMode : false,
	    afterBlur: function(){this.sync();}
	});

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
