<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Commodity_commoditys_group&fun=editData" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">产品组详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="133"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>商品标题</td>
        <td><div class="col-sm-5"><input name="title" type="text" id="title" size="50" value="测试单品单品"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>商品短标题</td>
        <td><div class="col-sm-5"><input name="short_title" type="text" id="short_title" size="50" value="测试单品"  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>商品外链</td>
        <td><div class="col-sm-5"><input name="link_url" type="text" id="link_url" size="50" value=""  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>商品标签</td>
        <td><div class="col-sm-5"><input name="tag" type="text" id="tag" size="50" value=""  class="form-control"   />
</div>例：红|黄|蓝</td>
      </tr>
            <tr>
        <td>商品组唯一ID</td>
        <td><div class="col-sm-5"><input name="item_key" type="text" id="item_key" size="50" value="b7a13bfc2d7352ce"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>商品简述</td>
        <td><div class="col-sm-5"><textarea name="description" id="description" cols="20" rows="7"  class="form-control"   >测试测试测试</textarea>
</div></td>
      </tr>
            <tr>
        <td>商品微信内简述</td>
        <td><div class="col-sm-5"><textarea name="wx_description" id="wx_description" cols="20" rows="7"  class="form-control"   ></textarea>
</div></td>
      </tr>
            <tr>
        <td>商品颜色</td>
        <td><div class="col-sm-5"><input name="colors" type="text" id="colors" size="50" value="胭脂"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>商品规格</td>
        <td><div class="col-sm-5"><input name="size" type="text" id="size" size="50" value="瓷"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>商品单品价格</td>
        <td><div class="col-sm-5"><input name="price" type="text" id="price" size="50" value="1.00"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>商品排序</td>
        <td><div class="col-sm-5"><input name="ord" type="text" id="ord" size="50" value="0"  class="form-control"   />
</div>0最靠前排列显示</td>
      </tr>
            <tr>
        <td>商品状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">下架</option>
<option value="1">上架</option>
<option value="7">热销</option>
<option value="8">推荐</option>
<option value="9">置顶</option>
<option value="21">预售</option>
<option value="22">秒杀</option>
<option value="31" selected>草稿</option>
<option value="41">已售空</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>访问量</td>
        <td>188</td>
      </tr>
            <tr>
        <td>修改时间</td>
        <td>2018-09-19 17:41:13</td>
      </tr>
            <tr>
        <td>操作员</td>
        <td>小李</td>
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
	$('#Commodity').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>