<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Contents_newss&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">新闻详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="10"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>新闻标题</td>
        <td><div class="col-sm-5"><input name="title" type="text" id="title" size="50" value="关于我们"  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>短标题</td>
        <td><div class="col-sm-5"><input name="short_title" type="text" id="short_title" size="50" value="关于我们"  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>概述</td>
        <td><div class="col-sm-5"><textarea name="outline" id="outline" cols="15" rows="5"  class="form-control"   ></textarea>
</div></td>
      </tr>
            <tr>
        <td>内容</td>
        <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
      </tr>
            <tr>
        <td>类型</td>
        <td><div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="1">普通新闻</option>
<option value="2">常见问题</option>
<option value="3">物流配送</option>
<option value="4" selected>关于我们</option>
<option value="5">合作伙伴</option>
<option value="6">售后服务</option>
<option value="7">会员服务</option>
<option value="8">优惠卷</option>
<option value="9">红包规则</option>
<option value="10">限时活动</option>
<option value="11">服务协议</option>
<option value="12">注册协议</option>
<option value="13">隐私协议</option>
<option value="31">信息流内容</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>位置</td>
        <td><div id="loc_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="1"  />首页(1)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="2"  />分馆页(2)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="3"  />专题页(3)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="4"  />最终页(4)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="99"  />欢迎页(99)&nbsp;</li></ul></div></td>
      </tr>
            <tr>
        <td>排序</td>
        <td><div class="col-sm-5"><input name="ord" type="text" id="ord" size="50" value="0"  class="form-control"   />
</div>升序，数字越大越靠后</td>
      </tr>
            <tr>
        <td>状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">关闭</option>
<option value="1" selected>打开</option>
<option value="8">热门</option>
<option value="9">置顶</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>浏览量</td>
        <td>207</td>
      </tr>
            <tr>
        <td>发表时间</td>
        <td>2018-09-03 14:55:21</td>
      </tr>
            <tr>
        <td>修改时间</td>
        <td>2019-01-07 17:57:55</td>
      </tr>
            <tr>
        <td>操作员</td>
        <td>小张</td>
      </tr>
            <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="返回" onClick="javascript:history.back();" class="btn btn-default" /></td>
      </tr>
    </tbody>
  </table>
</form>

<script>
	UE.getEditor('content');</script> 
</div>
</div>
</body>
<script>
$(function(){
	$('#Contents').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>