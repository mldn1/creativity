<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
<style>
.panel-body .table tbody > tr > td {text-align:left;  padding: 12px;}
</style>
</head><body class="sticky-header">
<section> <jsp:include page="/pages/plugins/include_menuitem.jsp"/>
  <!-- main content start-->
  <div class="main-content" >
    <!-- header section start-->
    <div class="header-section">
      <!--toggle button start-->
      <a class="toggle-btn"><i class="fa fa-bars"></i></a>
      <!--toggle button end-->
      <!--search start-->
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 审批管理<jsp:include page="/pages/plugins/include_checkwork-nav.jsp"/></h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="pages/back/admin/leaves/approval-index.jsp">审批管理</a> </li>
        <li class="active"> 报销单详情 </li>
      </ul>
      <div class="pull-right"> <a href="javascript:history.back();" class="btn btn-default">返回</a> <a href="/expense/approval" class="hidden-xs btn btn-default" style="padding:4px;">待审批</a> <a href="/expense/add" class="btn btn-success">+我要报销</a> </div>
    </div>
    <div class="clearfix"></div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-md-8">
          <div class="blog">
            <div class="single-blog">
              <div class="panel">
                <div class="panel-body">
                  <h1 class="text-center mtop35"><a href="#">报销单</a>
                    <button onClick="myPrint(document.getElementById('print'))" class="pull-right btn">打 印</button>
                  </h1>
                  <p class="text-center auth-row"> By <a href="/user/show/{{.expense.Userid}}">{{getRealname .expense.Userid}}</a> | {{getDateMH .expense.Changed}}</p>
                  <div id="print">
                    <table class="table table-bordered" border="1">
                      <tr class="hide">
                        <th colspan="6" class="text-center">报销单</th>
                      </tr>
                      <tr>
                        <td width="72">姓名</td>
                        <td width="62">{{getRealname .expense.Userid}}</td>
                        <td width="70">部门</td>
                        <td width="77">{{getDepartmentsName .expense.Userid}}</td>
                        <td width="80">职位</td>
                        <td width="93">{{getPositionsName .expense.Userid}}</td>
                      </tr>
                      <tr>
                        <td>日期</td>
                        <td colspan="5">{{getDateMH .expense.Changed}}</td>
                      </tr>
                      <tr id="expense-box">
                        <td>总金额</td>
                        <td colspan="5">{{.expense.Total}}元</td>
                      </tr>
                      <tr>
                        <td>类型</td>
                        <td colspan="4">明细描述</td>
                        <td>金额</td>
                      </tr>
                      <tr  class="hide">
                        <td>审核人</td>
                        <td colspan="5">&nbsp;</td>
                      </tr>
                      
                      <tr class="hide">
                        <td></td>
                        <td>同意拒绝</td>
                        <td colspan="3">&nbsp;</td>
                        <td>{{getDate $v.Changed}}</td>
                      </tr>
                      
                      
                    </table>
                  </div>
                  <a class="btn btn-xs btn-warning" style="margin-bottom:6px;">审批人进度</a>
                  <div class="js-selectuserbox"> {{str2html (getExpenseProcess .expense.Id)}} </div>
                </div>
              </div>
              <div class="panel">
                <div class="panel-body">
                  <h1 class="text-center cmnt-head">审批人</h1>
                  
                  <div class="media blog-cmnt"> <a href="/user/show/{{$v.Userid}}" class="pull-left"> <img src="{{getAvatar $v.Avatar}}" class="media-object"> </a>
                    <div class="media-body">
                      <h4 class="media-heading"> <a href="/user/show/{{$v.Userid}}"></a> <span class="pull-right">{{getDateMH $v.Changed}}</span></h4>
                      <p class="mp-less"> <a class="btn btn-xs btn-success">同意</a><a class="btn btn-xs btn-danger">拒绝</a><br/>
                        批注： </p>
                    </div>
                  </div>
                  
                  <p class="text-center fade-txt">第
                    <script>document.write({{($k)}}+1)</script>
                    位审批人还没有审批此报销条!</p>
                  
                   </div>
              </div>
              {{if ne .expense.Userid .LoginUserid}}
              <div class="panel">
                <div class="panel-body">
                  <h1 class="text-center cmnt-head ">审批</h1>
                  <p class="text-center fade-txt">审批流程不可逆转</p>
                  {{if gt .checkStatus 0}}
                  <h1 class="text-center cmnt-head ">你已经审批过！</h1>
                  
                  {{if eq .checkApproverCan 1}}
                  <form role="form" class="form-horizontal expense-cmnt" id="expense-approvers-form">
                    <div class="form-group">
                      <div class="col-lg-12">
                        <label class="radio-inline">
                        <input type="radio" value="1" name="status" checked>
                        同意</label>
                        <label class="radio-inline">
                        <input type="radio" name="status" value="2">
                        拒绝</label>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-lg-12">
                        <textarea class=" form-control" rows="8" placeholder="批注说明" name="summary"></textarea>
                      </div>
                    </div>
                    <p>
                      <input type="hidden" name="id" value="{{.checkApproverid}}">
                      <input type="hidden" name="expenseid" value="{{.expense.Id}}">
                      <button class="btn btn-primary pull-right" type="submit">提 交</button>
                    </p>
                  </form>
                  
                  <h1 class="text-center cmnt-head ">你目前不能操作，请等待前一位审批后或前一位已经拒绝通过！</h1>
                  
                   </div>
              </div>
               </div>
          </div>
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
<script>
{{if gt .expense.Id 0}}
	var amounts = '{{.expense.Amounts}}';
	var types = '{{.expense.Types}}';
	var contents = '{{.expense.Contents}}';
	
	amountsArr = amounts.split('||');
	typesArr = types.split('||');
	contentsArr = contents.split('||');
	
	var html = '';
	for(var i=0;i<amountsArr.length;i++) {	
		html += '<tr><td>'+typesArr[i]+'</td><td colspan="4">'+contentsArr[i]+'</td><td>'+amountsArr[i]+'</td></tr>';
	}	
	//$('#expense-box').parent().append(html);
	$('#expense-box').next('tr').parent().append(html);
	
</script>
</body>
</html>
