<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Contents_adss&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">广告详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value=""  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>广告名称</td>
        <td><div class="col-sm-5"><input name="title" type="text" id="title" size="50" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>广告内容</td>
        <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
      </tr>
            <tr>
        <td>广告链接</td>
        <td><div class="col-sm-5"><input name="url" type="text" id="url" size="50" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>广告宽高</td>
        <td><div class="col-sm-5"><input name="wh" type="text" id="wh" size="50" value=""  class="form-control"   />
</div>例：200x100</td>
      </tr>
            <tr>
        <td>广告排序</td>
        <td><div class="col-sm-5"><input name="ord" type="text" id="ord" size="50" value="1"  class="form-control"   />
</div>升序，数字越大越靠后</td>
      </tr>
            <tr>
        <td>广告位置</td>
        <td><div id="loc_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="1"  />首页(1)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="2"  />分馆页(2)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="3"  />专题页(3)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="4"  />最终页(4)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="loc[]" type="checkbox" id="loc[]" value="99"  />欢迎页(99)&nbsp;</li></ul></div></td>
      </tr>
            <tr>
        <td>广告定位</td>
        <td><div id="point_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="point[]" type="checkbox" id="point[]" value="1"  />屏首(1)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="point[]" type="checkbox" id="point[]" value="2"  />屏中(2)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="point[]" type="checkbox" id="point[]" value="3"  />屏尾(3)&nbsp;</li></ul></div></td>
      </tr>
            <tr>
        <td>广告类型</td>
        <td><div id="cls_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="cls[]" type="checkbox" id="cls[]" value="1"  />轮播(1)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="cls[]" type="checkbox" id="cls[]" value="2"  />图片(2)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="cls[]" type="checkbox" id="cls[]" value="3"  />文字(3)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="cls[]" type="checkbox" id="cls[]" value="4"  />小程序(4)&nbsp;</li></ul></div></td>
      </tr>
            <tr>
        <td>广告状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">关闭</option>
<option value="1">打开</option>
<option value="8">推荐</option>
<option value="9">置顶</option>
<option value="31">草稿</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>绑定商品ID</td>
        <td><div class="col-sm-5"><input name="pid" type="text" id="pid" size="50" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>所属分馆分类</td>
        <td><div style="width: 100%;float: left;"><strong><input name="p_cls[]" type="checkbox" id="p_cls[]" value="1"  />新品</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="28"  />综合</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="7"  />茶具</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="13"  />茶碟</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="14"  />其他</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="26"  />枕套</li></ul></div><div style="width: 100%;float: left;"><strong><input name="p_cls[]" type="checkbox" id="p_cls[]" value="2"  />故宫美妆</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="23"  />纸巾盒及糖果盒</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="24"  />其他</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="25"  />包包</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="15"  />化妆包</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="11"  />丝巾</li></ul></div><div style="width: 100%;float: left;"><strong><input name="p_cls[]" type="checkbox" id="p_cls[]" value="3"  />国礼</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="16"  />拉杆箱</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="19"  />综合</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="8"  />雨伞</li></ul></div><div style="width: 100%;float: left;"><strong><input name="p_cls[]" type="checkbox" id="p_cls[]" value="5"  />茶器香器</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="10"  />茶具</li></ul></div><div style="width: 100%;float: left;"><strong><input name="p_cls[]" type="checkbox" id="p_cls[]" value="6"  />潮物空间</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="12"  />木艺</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="18"  />车挂</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="30"  />综合</li></ul></div><div style="width: 100%;float: left;"><strong><input name="p_cls[]" type="checkbox" id="p_cls[]" value="20"  />综合馆</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="21"  />雨伞</li><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="22"  />皮具</li></ul></div><div style="width: 100%;float: left;"><strong><input name="p_cls[]" type="checkbox" id="p_cls[]" value="22"  />皮具</strong><br /><ul style="width: 100%;height: 20px;background-color: #D9D9D9;overflow：hidden;"><li style="display: inline;	float: left; width: 10%;"><input name="p_cls[]" type="checkbox" id="p_cls[]" value="27"  />纯真皮</li></ul></div></td>
      </tr>
            <tr>
        <td>点击量</td>
        <td>0</td>
      </tr>
            <tr>
        <td>发表时间</td>
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
</form>


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