<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">
<div style="width: 98%; margin-left: 1%;"> </div>
<form name="form_list" id="form_list" method="POST" action=""
	onsubmit="javascript:return confirm('你确定执行该操作吗!!!');">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <tbody>
      <tr>
        <td><div id="tree">
         <ul>
		 <li>瓷器</li>
		 	 <li>文具</li>
			 <li>服装</li>
			<li>帽子</li>
		 </ul>
        </div></td>
      </tr>
    </tbody>
    <tr>
      <td align="center" valign="middle" > <a href="pages/front/product/class_add.jsp" class="btn btn-primary">添加分类</a></td>
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