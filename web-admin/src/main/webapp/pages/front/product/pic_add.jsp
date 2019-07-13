<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Commodity_commoditys_album&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>产品图</td>
        <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
      </tr>
            <tr>
        <td>图片描述</td>
        <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
      </tr>
            <tr>
        <td>图库分类</td>
        <td><div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="1">产品图</option>
<option value="2">产品小图</option>
<option value="11">广告图大</option>
<option value="12">广告图小</option>
</select></div>
</td>
      </tr>
            <tr>
        <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
          &nbsp;&nbsp;&nbsp;
          <input type="button" name="Submit" id="Submit" value="返回" onClick="javascript:history.back();" class="btn btn-default" /></td>
      </tr>
    </tbody>
  </table>
</form>
<script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.config.js"></script> 
<script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.all.min.js"> </script> 
<script type="text/javascript" charset="utf-8" src="./ueditor/lang/zh-cn/zh-cn.js"></script> 
<script>
	UE.getEditor('addr',{scaleEnabled:true}); UE.getEditor('description',{scaleEnabled:true}); </script> 
</div>
</div>
</body>
<script>
$(function(){
	$('#Commodity').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>