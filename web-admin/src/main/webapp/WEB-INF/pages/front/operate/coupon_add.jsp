<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Users_user_couponss&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">活动详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value=""  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>用户名</td>
        <td><div class="col-sm-5"><input name="uname" type="text" id="uname" size="50" value="18810578028"  class="form-control"  readonly />
</div><div class="col-sm-5"><input name="uid" type="hidden" id="uid" size="50" value="2007"  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>卡卷名称</td>
        <td><div id="selectTxt"><button id="showTagCommList" type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" onClick="javascript:getCouponList();">选择卡卷</button></div><div class="col-sm-5"><input name="title" type="text" id="title" size="50" value=""  class="form-control"  readonly />
</div><div class="col-sm-5"><input name="cid" type="hidden" id="cid" size="50" value=""  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>卡卷说明</td>
        <td><div class="col-sm-5"><input name="exp" type="text" id="exp" size="50" value=""  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>适用商品ID</td>
        <td><div class="col-sm-5"><input name="comm_id" type="text" id="comm_id" size="50" value=""  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>卷编号</td>
        <td><div class="col-sm-5"><input name="serial" type="text" id="serial" size="50" value=""  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>优惠金额/折扣</td>
        <td><div class="col-sm-5"><input name="money" type="number" id="money" size="50" value=""  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>使用限制金额</td>
        <td><div class="col-sm-5"><input name="restriction" type="number" id="restriction" size="50" value=""  class="form-control"  readonly />
</div></td>
      </tr>
            <tr>
        <td>使用期限</td>
        <td><div class="col-sm-3"><input name="sdate" type="date" id="sdate" size="50" value=""  readonly />
至<input name="edate" type="date" id="edate" size="50" value=""  readonly />
</div></td>
      </tr>
            <tr>
        <td>品类</td>
        <td><div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="1">满减卷</option>
<option value="2">折扣卷</option>
<option value="3">抵现卷</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="-1">作废</option>
<option value="0">未使用</option>
<option value="1">使用</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>生成时间</td>
        <td></td>
      </tr>
            <tr>
        <td>修改时间</td>
        <td></td>
      </tr>
            <tr>
        <td>操作员</td>
        <td></td>
      </tr>
            <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="返回" onClick="javascript:history.back();" class="btn btn-default" /></td>
      </tr>
    </tbody>
  </table>
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">卡卷列表</h4>
        </div>
        <div class="modal-body">
          <div id="loading" style="display: none; width: 100%; height: 200px; text-align: center;"><img src="/img/loading_custom.gif"></div>
          <div id="ajax-html"></div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        </div>
      </div>
    </div>
  </div>
</form>

</div>
</div>
</body>
<script>
$(function(){
	$('#Users').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>