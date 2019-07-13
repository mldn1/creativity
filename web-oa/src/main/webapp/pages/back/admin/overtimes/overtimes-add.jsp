<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
<link rel="stylesheet" type="text/css" href="static/js/bootstrap-datetimepicker/css/datetimepicker-custom.css" />
<style>
.form-group .fa{font-size:66px;}
.js-selectuserbox a {border-radius: 50px;  width: 60px;  height: 70px;  text-align: center;vertical-align: middle;   display: inline-block;}
.js-selectuserbox img{width:60px;height:60px; border-radius: 50%;}
</style>
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
      <h3> 审批管理<jsp:include page="/pages/plugins/include_checkwork-nav.jsp"/></h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="pages/back/admin/overtimes/index.jsp">审批管理</a> </li>
        <li class="active"> 加班 </li>
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
              <div class="alert alert-block alert-danger fade in">
                <button type="button" class="close close-sm" data-dismiss="alert"> <i class="fa fa-times"></i> </button>
                <strong>注意!</strong> 加班单状态为正常后(可在列表操作中设置为“正常”)，就不能再编辑！后续流程等待审批人操作。. </div>
              <form class="form-horizontal adminex-form" id="overtime-form">                
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>加班日期</label>
                  <div class="col-sm-10">
                    <div class="input-group input-large custom-date-range" data-date="2016-07-07" data-date-format="yyyy-mm-dd">
                      <input type="text" class="form-control dpd1" name="started" placeholder="开始日期" value=" ">
                      <span class="input-group-addon">To</span>
                      <input type="text" class="form-control dpd2" name="ended"  placeholder="结束日期" value="">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">加班时长</label>
                  <div class="col-sm-10">
                    <input type="number" name="longtime" value=" " class="form-control" placeholder="请输入数字">
                  </div>
                </div>
				<div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>核算方式</label>
                  <div class="col-sm-10">
                    <select name="way" class="form-control">
                      <option value="">请选择核算</option>
                      <option value="1" {{if eq 1 .overtime.Way}}selected>调休</option>
                      <option value="2" {{if eq 2 .overtime.Way}}selected>加班费</option>
                    </select>
                  </div>
                </div>
				<div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>是否法定假日</label>
                  <div class="col-sm-10">
                    <select name="holiday" class="form-control">
                      <option value="">请选择核算</option>
                      <option value="1"  selected>是</option>
                      <option value="2" selected>否</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">加班事由</label>
                  <div class="col-sm-10">
                    <textarea name="reason" placeholder="加班事由，如项目二期上线" style="height:200px;" class="form-control"> </textarea>
                  </div>
                </div>
                
                 <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">审批人(点击头像可删除)</label>
                  <div class="col-sm-10 js-selectuserbox"> <a class="addAvatar" href="#acceptModal" data-toggle="modal"><i class="fa fa-plus-circle"></i></a> </div>
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
    <!--footer section start-->
    <jsp:include page="/pages/plugins/include_user-dialog.jsp"/><jsp:include page="/pages/plugins/include_footinfo.jsp"/>
    <!--footer section end-->
  </div>
  <!-- main content end-->
</section>
<jsp:include page="/pages/plugins/include_foot.jsp"/>
<script type="text/javascript" src="static/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script>
$(function(){	

	$('.js-selectuser').on('click', function(){
		var that = $(this);
		var userid = that.attr('data-id');
		var realname = that.attr('data-name');
		var avatar = that.find('img').attr('src');
		
		var approverid = $('#approverid').val();
		if(approverid.indexOf(userid) > 0 ){
			$('#acceptModal').modal('hide')
			dialogInfo('审批人已经添加过');			
			return false;
		}
		
		var html = '';
		html += '<a href="javascript:;" data-id="'+userid+'"><img src="'+avatar+'"><span>'+realname+'</span></a><span>..........</span>';
		if ($('.js-selectuserbox').find('a img').size()) {
			$('.addAvatar').before(html);
		} else {
			$('.js-selectuserbox').prepend(html);
		}
		$('#approverid').val(approverid+','+userid);
		
		$('#acceptModal').modal('hide')
	});
	
	$('.js-selectuserbox').delegate('a img', 'click',function(){
		var that = $(this);
		
		var approverid = $('#approverid').val();
		var userid = that.parent().attr('data-id');
		result = approverid.replace(eval("/,?"+userid+",?/"),' ').trim(' ').replace(' ',',');
		$('#approverid').val(result);
		
		that.parent().next('span').remove();
		that.parent().remove();
	});
	

	$('.addAvatar').on('show.bs.modal', function (e) {
		//$('#taskid').val($(e.relatedTarget).attr('data-id'))
	})
		
	$('.dpd1,.dpd2').datetimepicker({format: 'yyyy-mm-dd hh:ii'});
})
</script>
</body>
</html>
