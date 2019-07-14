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
  <form name="form_simple" method="GET" action="manage.jsp">
    <input type="hidden" name="action" id="action" value="main">
    <input type="hidden" name="exec" id="exec" value="Marketing_orders_return">
    <table class="table table-hover table-bordered">
      <tbody>
      
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索订单号：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="key" name="key" value="" placeholder="Index Search">
              </div>
            </div></td>
          </td>                		
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">姓名/手机号：</label>
              <div class="col-md-10">
                <div class="col-sm-5"><input name="uaddr" type="text" id="uaddr" size="50" value=""  class="form-control"   />
</div>
              </div>
            </div>
          </td>
        </tr>
          <tr>               		
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">商品ID：</label>
              <div class="col-md-10">
                <div class="col-sm-5"><input name="merch" type="text" id="merch" size="50" value=""  class="form-control"   />
</div>
              </div>
            </div>
          </td>             		
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">时间范围：</label>
              <div class="col-md-10 form-inline">
                <input name="sdate" type="date" id="sdate" size="20" value="2019-05-27"   />
至<input name="edate" type="date" id="edate" size="20" value="2019-06-26"   />

              </div>
            </div>
          </td>
          </tr>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">退换类型：</label>
              <div class="col-md-10">
                <div id="type_div" class="col-sm-3"><select name="type" id="type" class="form-control" >
<option value="">请选择</option>
<option value="1">仅换货</option>
<option value="2">退货退款</option>
<option value="3">仅退款</option>
</select></div>

              </div>
            </div></td>
        <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">申请状态：</label>
              <div class="col-md-10">
                <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="-9">关闭</option>
<option value="-5">退款失败</option>
<option value="-4">验货失败</option>
<option value="-3">未收到货</option>
<option value="-2">撤销</option>
<option value="-1">未通过</option>
<option value="0">未审核</option>
<option value="1">审核通过</option>
<option value="2">买家寄回</option>
<option value="3">卖家已收货等待验货</option>
<option value="4">验货成功</option>
<option value="5">卖家已发货</option>
<option value="6">卖家发起退款</option>
<option value="9">完成</option>
</select></div>

              </div>
            </div></td>
        </tr>       
        <tr>        		
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">个/页：</label>
              <div class="col-md-2">
                <input type="number" class="form-control" id="size" name="size" value="20" min="20" max="100" step="20">
              </div>
            </div>
           </td>      		
          <td style="text-align:left; vertical-align:bottom;"></td>
        </tr> 
              <tr>
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
    <tr>
      <td colspan="12" align="center" valign="middle"><input type="checkbox" onClick="javascript:allcheckbox(this, 'id[]');">全选&nbsp;&nbsp;&nbsp;<input type="button" name="out" id="out" value="导出" onClick="javascript:outXML();" class="btn btn-info" />        </td>
    </tr>
      <tr style="font-weight:bold;">
        <td>id</td>
        <td>退换订单号</td>
        <td>支付订单号</td>
        <td>订单号</td>
        <td>支付金额</td>
        <td>退换类型</td>
        <td>退换状态</td>
        <td>支付平台</td>
        <td>支付状态</td>
        <td>订单时间</td>
        <td>修改时间</td>
        <td>操作人员</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><input name="id[]" type="checkbox" id="id[]" value="133"  />&nbsp;&nbsp;<b>133</b></td>
        <td><a href="pages/front/sale/">20190308025058567123b9</a></td>
        <td>20190308020231812708b5</td>
        <td>2019030802021964052bac</td>
        <td>1208.00</td>
        <td>仅退款</td>
        <td>完成</td>
        <td>支付宝</td>
        <td><font color="#2E9200">已支付</font></td>
        <td>2019-03-08 02:50:58</td>
        <td>2019-03-08 14:05:43</td>
        <td>小张</td>
      </tr>
            <tr>
        <td><input name="id[]" type="checkbox" id="id[]" value="132"  />&nbsp;&nbsp;<b>132</b></td>
        <td>20190305150559378181ca</td>
        <td>2019030514343018568d82</td>
        <td>2019030514342212649456</td>
        <td>217.00</td>
        <td>仅退款</td>
        <td>完成</td>
        <td>微信</td>
        <td><font color="#2E9200">已支付</font></td>
        <td>2019-03-05 15:05:59</td>
        <td>2019-03-06 11:10:37</td>
        <td>小张</td>
      </tr>
          </tbody>
    <tr>
      <td colspan="12" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="/manage.jsp?action=main&exec=Marketing_orders_return&page=2">2</a>]
[<a  href="/manage.jsp?action=main&exec=Marketing_orders_return&page=3">3</a>]
[<a  href="/manage.jsp?action=main&exec=Marketing_orders_return&page=4">4</a>]
<a  href="/manage.jsp?action=main&exec=Marketing_orders_return&page=2">下一页</a>&nbsp;<a  href="/manage.jsp?action=main&exec=Marketing_orders_return&page=7">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Marketing_orders_return&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option></select>&nbsp;页&nbsp;共7页&nbsp;133条</td>
    </tr>
    <tr>
      <td colspan="12" align="center" valign="middle"><input type="checkbox" onClick="javascript:allcheckbox(this, 'id[]');">全选&nbsp;&nbsp;&nbsp;<input type="button" name="out" id="out" value="导出" onClick="javascript:outXML();" class="btn btn-info" />        </td>
    </tr>
  </table>
</form>
<script>
function selectDay(dateLimit){
	var _tmp = dateLimit.split('|');
	$("#sdate").val(_tmp[0]);
	$("#edate").val(_tmp[1]);
	$('#form_simple').submit();
}	

function allcheckbox(allObj, name){
	var chk = document.getElementsByName(name);
	var _tmp = [];
	for(i=0;i<chk.length;i++){
		chk[i].checked = allObj.checked;
	}
}	

var checkbox = [];
function getData(){	
	var sendUrl = "/ajax.jsp?action=manage_getOrderssReturn&index=" + checkbox.join('|');
	console.log('sendUrl='+sendUrl);
	$.ajax({
		type: 'GET',
		url: sendUrl,
		dataType: 'html',
		async: false,
		success: function(data) {
			console.log("data=" + data);
			if (data) {
				window.location.href=data;
			} else {}
		},
		error: function(xhr, type) {}
	});
}
	
function outXML(){
	var list = $("input[name='id[]']:checked");	
	checkbox = [];
	list.each(function(){
		if($(this).is(':checked')){
			checkbox.push($(this).val());
		}
	});
	console.log('checkbox='+checkbox);
	if(checkbox.length>0){
		getData();
	}
}
</script>
 

</div>
</div>
</body>
<script>
$(function(){
	$('#Marketing').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>