<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">
<div style="width: 98%; margin-left: 1%;">
  <form name="form_simple" method="GET" action="pages/front/product/prduct_list.action">
    <input type="hidden" name="action" id="action" value="main">
    <input type="hidden" name="exec" id="exec" value="Commodity_commoditys">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="keyword">搜索关键词：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="keyword" name="keyword" value=""
					placeholder="请输入查询关键词">
              </div>
            </div></td>
        </tr>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="linesize">个/页：</label>
              <div class="col-md-2">
                <input type="number" class="form-control" id="linesize" name="linesize" value="20" min="20" max="100" step="20">
              </div>
            </div></td>
        </tr>
      
		<tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">状态：</label>
              <div class="col-lg-7">
                <div id="state_div" class="col-sm-3">
                    <select name="state" id="state" class="form-control" >
                        <option value="">请选择</option>
                        <c:forEach items="${allGoods_state}" var="goods_state">
                            <option value="${goods_state.id}">${goods_state.title}</option>
                        </c:forEach>
                    </select></div>

              </div>
            </div></td>
        </tr>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="category">分类：</label>
              <div class="col-lg-7">
                <div id="cls_div" class="col-sm-3">
                    <select name="category" id="category" class="form-control" >
                        <option value="">请选择</option>
                        <c:forEach items="${allCategory}" var="category">
                            <option value="${category.cid}">${category.title}</option>
                        </c:forEach>
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
      <td colspan="13" align="center" valign="middle">&nbsp;
          <div id="splitBarDiv" style="float:right">
              <jsp:include page="/WEB-INF/pages/plugins/split_page_bar_plugin.jsp"/>
          </div>&nbsp;共5页&nbsp;99条&nbsp;&nbsp;&nbsp;
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