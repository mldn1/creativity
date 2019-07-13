<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
</head>
<body class="sticky-header">
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
      <h3> 测试管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="/project/test/{{.project.Id}}"></a> </li>
        <li class="active"> Bug </li>
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
              <form class="form-horizontal adminex-form" id="test-form">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">关联需求</label>
                  <div class="col-sm-10">
                    <select name="needsid" class="form-control">
                      <option value="">项目需求</option>
                      
                      
					{{range .needs}}
					
                      
                      <option value="" {{if eq .Id $.test.Needsid}}selected></option>
                      
                      
										
					
                    
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">关联任务</label>
                  <div class="col-sm-10">
                    <select name="taskid" class="form-control">
                      <option value="">项目任务</option>
                      
                      
					{{range .tasks}}
					
                      
                      <option value="" {{if eq .Id $.test.Taskid}}selected></option>
                      
                      
										
					
                    
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">指派给</label>
                  <div class="col-sm-10">
                    <select name="acceptid" class="form-control">
                      <option>Bug指派给</option>
                                            
										
                      
                      <option value="" {{if eq .Userid $.test.Acceptid}}selected></option></select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">抄送给</label>
                  <div class="col-sm-10">
                    <input type="text" name="username" id="cc-username" value="" class="form-control" placeholder="点击选择抄送人">
                    <input type="hidden" name="ccid" id="ccid" value="{{.test.Ccid}}">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>Bug标题</label>
                  <div class="col-sm-10">
                    <input type="text" name="name" value="" class="form-control" placeholder="请输入测试名称">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">描述</label>
                  <span class="col-sm-10">
                   <textarea name="desc" placeholder="[步骤][结果][期望]" style="height:300px;" class="form-control"></textarea>
                  </span>
                  <div class="col-sm-10"></div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">优先级</label>
                  <div class="col-sm-10">
                    <select name="level" class="form-control">
                      <option value="">Bug优先级</option>
                      <option value="1" {{if eq 1 .test.Level}}selected>1级</option>
                      <option value="2" {{if eq 2 .test.Level}}selected>2级</option>
                      <option value="3" {{if eq 3 .test.Level}}selected>3级</option>
                      <option value="4" {{if eq 4 .test.Level}}selected>4级</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">操作系统/浏览器</label>
                  <div class="col-sm-10">
                    <select name="os" class="form-control" style="width: 50%;float:left">
                      <option value="">操作系统</option>
                      <option value="all" {{if eq "all" .test.Os}}selected>全部</option>
                      <option value="windows" {{if eq "windows" .test.Os}}selected>Windows</option>
                      <option value="win8" {{if eq "win8" .test.Os}}selected>Windows 8</option>
                      <option value="win7" {{if eq "win7" .test.Os}}selected>Windows 7</option>
                      <option value="vista" {{if eq "vista" .test.Os}}selected>Windows Vista</option>
                      <option value="winxp" {{if eq "winxp" .test.Os}}selected>Windows XP</option>
                      <option value="win2012" {{if eq "win2012" .test.Os}}selected>Windows 2012</option>
                      <option value="win2008" {{if eq "win2008" .test.Os}}selected>Windows 2008</option>
                      <option value="win2003" {{if eq "win2003" .test.Os}}selected>Windows 2003</option>
                      <option value="win2000" {{if eq "win2000" .test.Os}}selected>Windows 2000</option>
                      <option value="android" {{if eq "android" .test.Os}}selected>Android</option>
                      <option value="ios" {{if eq "ios" .test.Os}}selected>IOS</option>
                      <option value="wp8" {{if eq "wp8" .test.Os}}selected>WP8</option>
                      <option value="wp7" {{if eq "wp7" .test.Os}}selected>WP7</option>
                      <option value="symbian" {{if eq "symbian" .test.Os}}selected>Symbian</option>
                      <option value="linux" {{if eq "linux" .test.Os}}selected>Linux</option>
                      <option value="freebsd" {{if eq "freebsd" .test.Os}}selected>FreeBSD</option>
                      <option value="osx" {{if eq "osx" .test.Os}}selected>OS X</option>
                      <option value="unix" {{if eq "unix" .test.Os}}selected>Unix</option>
                      <option value="other" {{if eq "other" .test.Os}}selected>其他</option>
                    </select>
                    <select name="browser" class="form-control" style="width: 50%">
                      <option value="">浏览器</option>
                      <option value="all" {{if eq "all" .test.Browser}}selected>全部</option>
                      <option value="ie" {{if eq "ie" .test.Browser}}selected>IE系列</option>
                      <option value="ie11" {{if eq "ie11" .test.Browser}}selected>IE11</option>
                      <option value="ie10" {{if eq "ie10" .test.Browser}}selected>IE10</option>
                      <option value="ie9" {{if eq "ie9" .test.Browser}}selected>IE9</option>
                      <option value="ie8" {{if eq "ie8" .test.Browser}}selected>IE8</option>
                      <option value="ie7" {{if eq "ie7" .test.Browser}}selected>IE7</option>
                      <option value="ie6" {{if eq "ie6" .test.Browser}}selected>IE6</option>
                      <option value="chrome" {{if eq "chrome" .test.Browser}}selected>chrome</option>
                      <option value="firefox" {{if eq "firefox" .test.Browser}}selected>firefox</option>
                      <option value="opera" {{if eq "opera" .test.Browser}}selected>opera</option>
                      <option value="safari" {{if eq "safari" .test.Browser}}selected>safari</option>
                      <option value="maxthon" {{if eq "maxthon" .test.Browser}}selected>傲游</option>
                      <option value="uc" {{if eq "uc" .test.Browser}}selected>UC</option>
                      <option value="other" {{if eq "other" .test.Browser}}selected>其他</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">附件</label>
                  <div class="col-sm-10">
                    <input type="file" name="attachment">
                    <br/>
                    <a href="{{.test.Attachment}}" target="_blank">预览下载</a>  </div>
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
<jsp:include page="/pages/plugins/include_ccid.jsp"/>
<script src="static/keditor/kindeditor-min.js"></script>
<script>
$(function(){
	var editor = KindEditor.create('textarea[name="desc"]', {
	    uploadJson: "/kindeditor/upload",
	    allowFileManager: true,
	    filterMode : false,
	    afterBlur: function(){this.sync();}
	});	

	$('#cc-username').val($('#cc-username').val().replace(/,$/gi,''))
	var ccidArr = $('#ccid').val().split(',');
	$('.modal-body input[type="checkbox"]').each(function(i){		
		if ($.inArray($(this).attr('data-value'), ccidArr) >=0 ) {
			$(this).prop('checked', true);
		} 
	});	
})
</script>
</body>
</html>
