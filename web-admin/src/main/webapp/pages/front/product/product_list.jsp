<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">
<div style="width: 98%; margin-left: 1%;">
  <form name="form_simple" method="GET" action="manage.jsp">
    <input type="hidden" name="action" id="action" value="main">
    <input type="hidden" name="exec" id="exec" value="Commodity_commoditys">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索关键词：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="key" name="key" value=""
					placeholder="请输入查询关键词">
              </div>
            </div></td>
        </tr>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">个/页：</label>
              <div class="col-md-2">
                <input type="number" class="form-control" id="size" name="size" value="20" min="20" max="100" step="20">
              </div>
            </div></td>
        </tr>
      
		<tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">状态：</label>
              <div class="col-lg-7">
                <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">下架</option>
<option value="1">上架</option>
<option value="7">热销</option>
<option value="8">推荐</option>
<option value="9">置顶</option>
<option value="21">预售</option>
<option value="22">秒杀</option>
<option value="31">草稿</option>
<option value="41">已售空</option>
</select></div>

              </div>
            </div></td>
        </tr>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="cls">分类：</label>
              <div class="col-lg-7">
                <div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="28">综合</option>
<option value="7">茶具</option>
<option value="13">茶碟</option>
<option value="14">其他</option>
<option value="26">枕套</option>
<option value="23">纸巾盒及糖果盒</option>
<option value="24">其他</option>
<option value="25">包包</option>
<option value="15">化妆包</option>
<option value="11">丝巾</option>
<option value="16">拉杆箱</option>
<option value="19">综合</option>
<option value="8">雨伞</option>
<option value="10">茶具</option>
<option value="12">木艺</option>
<option value="18">车挂</option>
<option value="30">综合</option>
<option value="21">雨伞</option>
<option value="22">皮具</option>
<option value="27">纯真皮</option>
</select></div>

              </div>
            </div></td>
        </tr>      <tr>
        <td colspan="2" align="center" valign="middle"><input
				type="submit" name="Submit" id="Submit" value="查询" class="btn btn-success" /></td>
      </tr>
        </tbody>
      
    </table>
  </form>
</div>
<form name="form_list" id="form_list" method="POST" action=""
	onsubmit="javascript:return confirm('你确定执行该操作吗!!!');">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr style="font-weight:bold;">
        <td>ID</td>
        <td>商品名称</td>
        <td>商品唯一码</td>
        <td>商品货号</td>
        <td>原价/现价</td>
        <td>颜色/规格</td>
        <td>分类</td>
        <td>库存数</td>
        <td>状态</td>
        <td>推荐位置</td>
        <td>修改时间</td>
        <td>修改人员</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>131</td>
        <td><a href="pages/front/product/product_modify.jsp">荷意年年丝巾</a></td>
        <td><b>b3e6ac52462a3756</b></td>
        <td>SCA-00050</td>
        <td>1380.00/1380.00</td>
        <td>青花瓷/真丝</td>
        <td><strong>潮物空间</strong>：木艺，<br /></td>
        <td><p>官方H5：0</p></td>
        <td>上架</td>
        <td>首页(1)，分类页(2)，猜你喜欢(5)，</td>
        <td>2019-03-20 14:11:28</td>
        <td>小张</td>
      </tr>
            <tr>
        <td>130</td>
        <td><a href="pages/front/product/product_modify.jsp">荷意年年丝巾</a></td>
        <td><b>b3e6ac52462a3756</b></td>
        <td>SCA-00051</td>
        <td>1380.00/1380.00</td>
        <td>黄色/真丝</td>
        <td><strong>潮物空间</strong>：木艺，<br /></td>
        <td><p>官方H5：0</p></td>
        <td>上架</td>
        <td>首页(1)，分类页(2)，猜你喜欢(5)，</td>
        <td>2019-03-20 14:11:36</td>
        <td>小张</td>
      </tr>
          </tbody>
    <tr>
      <td colspan="13" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="#">2</a>]
[<a  href="#">3</a>]
[<a  href="#">4</a>]
<a  href="#">下一页</a>&nbsp;<a  href="#">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Commodity_commoditys&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select>&nbsp;页&nbsp;共5页&nbsp;99条&nbsp;&nbsp;&nbsp;
<a href="pages/front/product/product_add.jsp"  class="btn btn-primary">添加商品</a></td>
    </tr>
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