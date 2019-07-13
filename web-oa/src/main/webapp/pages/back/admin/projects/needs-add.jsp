<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
<link href="static/css/jquery-ui-1.10.3.css"  rel="stylesheet" />
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
      <h3> 需求管理 </h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="/project/need/{{.project.Id}}"></a> </li>
        <li class="active"> 需求 </li>
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
              <form class="form-horizontal adminex-form" id="needs-form">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>需求名称</label>
                  <div class="col-sm-10">
                    <input type="text" name="name" value="" class="form-control" placeholder="请输入需求名称">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>来源</label>
                  <div class="col-sm-10">
                    <select name="source" class="form-control">
                      <option value="">请选择来源</option>
                      <option value="1" {{if eq .needs.Source 1}}selected>客户</option>
                      <option value="2" {{if eq .needs.Source 2}}selected>用户</option>
                      <option value="3" {{if eq .needs.Source 3}}selected>产品经理</option>
                      <option value="4" {{if eq .needs.Source 4}}selected>市场</option>
                      <option value="5" {{if eq .needs.Source 5}}selected>客服</option>
                      <option value="6" {{if eq .needs.Source 6}}selected>竞争对手</option>
                      <option value="7" {{if eq .needs.Source 7}}selected>合作伙伴</option>
                      <option value="8" {{if eq .needs.Source 8}}selected>开发人员</option>
                      <option value="9" {{if eq .needs.Source 9}}selected>测试人员</option>
                      <option value="10" {{if eq .needs.Source 10}}selected>其他</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>优先级</label>
                  <div class="col-sm-10">
                    <select name="level" class="form-control">
                      <option value="">请选择优先级</option>
                      <option value="1" selected>1级</option>
                      <option value="2" >2级</option>
                      <option value="3" >3级</option>
                      <option value="4"  >4级</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>阶段</label>
                  <div class="col-sm-10">
                    <select name="stage" class="form-control">
                      <option value="">请选择阶段</option>
                      <option value="1" >未开始</option>
                      <option value="2" >已计划</option>
                      <option value="3" >已立项</option>
                      <option value="4" >研发中</option>
                      <option value="5" >研发完毕</option>
                      <option value="6" >测试中</option>
                      <option value="7" >测试完毕</option>
                      <option value="8" >已验收</option>
                      <option value="9" >已发布</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">指派给</label>
                  <div class="col-sm-10">
				<select name="acceptid" class="form-control">
                      <option>请选择指派给</option>
					
                      <option value="" {{if eq .Userid $.needs.Acceptid}}selected></option></select>

                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">预计工时</label>
                  <div class="col-sm-10">
                    <input type="number" name="tasktime" value="" class="form-control" placeholder="请输入数字">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>描述</label>
                  <div class="col-sm-10">
                    <textarea name="desc" placeholder="请填写描述" style="height:300px;" class="form-control"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">验收标准</label>
                  <div class="col-sm-10">
                    <textarea name="acceptance" placeholder="需求验收标准（选填）" style="height:200px;" class="form-control"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">附件</label>
                  <div class="col-sm-10">
                    <input type="file" name="attachment">
                    <br/>
                    <a href="{{.needs.Attachment}}" target="_blank">预览下载</a>  </div>
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
<script src="static/keditor/kindeditor-min.js"></script>
<script>
$(function(){
	var editor = KindEditor.create('textarea[name="desc"],textarea[name="acceptance"]', {
	    uploadJson: "/kindeditor/upload",
	    allowFileManager: true,
	    filterMode : false,
	    afterBlur: function(){this.sync();}
	});
});	
</script>	
</body>
</html>
