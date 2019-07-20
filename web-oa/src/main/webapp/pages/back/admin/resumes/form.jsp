<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
              <form action="pages/back/admin/resumes/resume_edit.action?resid=${resume.resid}" class="form-horizontal adminex-form" id="resume-form" method="post">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>姓名</label>
                  <div class="col-sm-10">
                    <input type="text" name="name" value="${resume.name}" class="form-control" placeholder="输入手请机号姓名">
                  </div>
                </div>
                <input type="hidden" name="resid" value="${resume.resid}">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>手机</label>
                  <div class="col-sm-10">
                    <input type="text" name="phone" value="${resume.phone}" class="form-control" placeholder="输入手请机号">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">性别</label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <input type="radio" name="sex" value="0" <c:if test="${resume.sex==0}">checked</c:if>>
                    男 </label>
                    <label class="radio-inline">
                    <input type="radio" name="sex" value="1" <c:if test="${resume.sex==1}">checked</c:if>>
                    女 </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">生日</label>
                  <div class="col-sm-10">
                    <input type="text" name="birthday" id="default-date-picker"  value="${resume.birthday}" class="form-control" placeholder="出生日期">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">学历</label>
                  <div class="col-sm-10">
                    <select name="eduid" class="form-control">
                      <option value="">请选择学历</option>
                      <option value="1" <c:if test="${resume.eduid==1}">selected</c:if>>小学</option>
                      <option value="2" <c:if test="${resume.eduid==2}">selected</c:if>>中专</option>
                      <option value="3" <c:if test="${resume.eduid==3}">selected</c:if>>初中</option>
                      <option value="4" <c:if test="${resume.eduid==4}">selected</c:if>>高中</option>
                      <option value="5" <c:if test="${resume.eduid==5}">selected</c:if>>技校</option>
                      <option value="6" <c:if test="${resume.eduid==6}">selected</c:if>>大专</option>
                      <option value="7" <c:if test="${resume.eduid==7}">selected</c:if>>本科</option>
                      <option value="8" <c:if test="${resume.eduid==8}">selected</c:if>>硕士</option>
                      <option value="9" <c:if test="${resume.eduid==9}">selected</c:if>>博士</option>
                      <option value="10" <c:if test="${resume.eduid==10}">selected</c:if>>博士后</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">工作年限</label>
                  <div class="col-sm-10">
                    <select name="wyid" class="form-control">
                      <option value="">请选择工作年限</option>
                      <option value="1" <c:if test="${resume.wyid==1}">selected</c:if>>应届毕业生</option>
                      <option value="2" <c:if test="${resume.wyid==2}">selected</c:if>>1年以下</option>
                      <option value="3" <c:if test="${resume.wyid==3}">selected</c:if>>1-2年</option>
                      <option value="4" <c:if test="${resume.wyid==4}">selected</c:if>>3-5年</option>
                      <option value="5" <c:if test="${resume.wyid==5}">selected</c:if>>6-7年</option>
                      <option value="6" <c:if test="${resume.wyid==6}">selected</c:if>>8-10年</option>
                      <option value="7" <c:if test="${resume.wyid==7}">selected</c:if>>10年以上</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">备注</label>
                  <div class="col-sm-10">
                    <textarea name="note"  placeholder="备注说明" style="height:300px;" class="form-control">${resume.note}</textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">简历附件</label>
                  <div class="col-sm-10">
                    <input type="file" name="appendix" value="${resume.appendix}">
                    <br/>
                    <a href="{{.resume.Attachment}}" target="_blank">预览下载</a>  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">状态</label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                    <input type="radio" name="state" value="1" <c:if test="${resume.state==1}">checked</c:if>>
                    入档 </label>
                    <label class="radio-inline">
                    <input type="radio" name="state" value="2" <c:if test="${resume.state==2}">checked</c:if>>
                    通知面试 </label>
                    <label class="radio-inline">
                    <input type="radio" name="state" value="3" <c:if test="${resume.state==3}">checked</c:if>>
                    违约 </label>
                    <label class="radio-inline">
                    <input type="radio" name="state" value="4" <c:if test="${resume.state==4}">checked</c:if>>
                    录用 </label>
                    <label class="radio-inline">
                    <input type="radio" name="state" value="5" <c:if test="${resume.state==5}">checked</c:if>>
                    不录用 </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 col-sm-2 control-label"></label>
                  <div class="col-lg-10">
                    <button type="submit" class="btn btn-primary">提交保存</button>
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
