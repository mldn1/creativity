<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
<link href="static/js/bootstrap-datepicker/css/datepicker-custom.css" rel="stylesheet" />
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
      <h3> 任务管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="/project/task/{{.project.Id}}"></a> </li>
        <li class="active"> 任务 </li>
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
              <form class="form-horizontal adminex-form" id="task-form">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>关联需求</label>
                  <div class="col-sm-10">
                    <select name="needsid" class="form-control">
                      <option value="">请选择项目需求</option>
					{{range .needs}}
					<option value="" {{if eq .Id $.task.Needsid}}selected></option>
                    					
					</select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>任务类型</label>
                  <div class="col-sm-10">
                    <select name="type" class="form-control">
                      <option value="">请选择任务类型</option>
                      <option value="1">设计</option>
                      <option value="2">开发</option>
                      <option value="3" >测试</option>
                      <option value="4">研究</option>
                      <option value="5">讨论</option>
                      <option value="6" >界面</option>
                      <option value="7">事务</option>
                      <option value="8">其他</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">指派给</label>
                  <div class="col-sm-10">
                    <select name="acceptid" class="form-control">
                      <option>请选择指派给</option>
					
                      <option value="" {{if eq .Userid $.task.Acceptid}}selected></option></select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>任务名称</label>
                  <div class="col-sm-10">
                    <input type="text" name="name" value=" " class="form-control" placeholder="请输入任务名称">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">描述</label>
                  <div class="col-sm-10">
                    <textarea name="desc" placeholder="请填写描述" style="height:300px;" class="form-control"> </textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">备注</label>
                  <div class="col-sm-10">
                    <textarea name="note" placeholder="备注说明" style="height:200px;" class="form-control"> </textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">优先级</label>
                  <div class="col-sm-10">
                    <select name="level" class="form-control">
                      <option value="">请选择优先级</option>
                      <option value="1" {{if eq 1 .task.Level}}selected>1级</option>
                      <option value="2" {{if eq 2 .task.Level}}selected>2级</option>
                      <option value="3" {{if eq 3 .task.Level}}selected>3级</option>
                      <option value="4" {{if eq 4 .task.Level}}selected>4级</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">预计工时</label>
                  <div class="col-sm-10">
                    <input type="number" name="tasktime" value=" " class="form-control" placeholder="请输入数字">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">开始和结束日期</label>
                  <div class="col-sm-10">
                    <div class="input-group input-large custom-date-range" data-date="2016-07-07" data-date-format="yyyy-mm-dd">
                      <input type="text" class="form-control dpd1" name="started" placeholder="开始日期" value=" ">
                      <span class="input-group-addon">To</span>
                      <input type="text" class="form-control dpd2" name="ended"  placeholder="结束日期" value=" ">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">抄送给</label>
                  <div class="col-sm-10">
                    <input type="text" name="username" id="cc-username" value=" ," class="form-control" placeholder="点击选择抄送人">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">附件</label>
                  <div class="col-sm-10">
                    <input type="file" name="attachment">
                    <br/>
                    <a href="{{.task.Attachment}}" target="_blank">预览下载</a>  </div>
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
<jsp:include page="/pages/plugins/include_ccid.jsp"/>
<jsp:include page="/pages/plugins/include_foot.jsp"/>
<script type="text/javascript" src="static/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="static/keditor/kindeditor-min.js"></script>
<script>
$(function(){
	var editor = KindEditor.create('textarea[name="desc"],textarea[name="note"]', {
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
	
	var nowTemp = new Date();
    var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

    var checkin = $('.dpd1').datepicker({
		 format: 'yyyy-mm-dd',
        onRender: function(date) {
            return date.valueOf() < now.valueOf() ? 'disabled' : '';
        }
    }).on('changeDate', function(ev) {
            if (ev.date.valueOf() > checkout.date.valueOf()) {
                var newDate = new Date(ev.date)
                newDate.setDate(newDate.getDate() + 1);
                checkout.setValue(newDate);
            }
            checkin.hide();
            $('.dpd2')[0].focus();
        }).data('datepicker');
    var checkout = $('.dpd2').datepicker({
		 format: 'yyyy-mm-dd',
        onRender: function(date) {
            return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
        }
    }).on('changeDate', function(ev) {
            checkout.hide();
        }).data('datepicker');
})
</script>
</body>
</html>
