<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="?action=main&exec=Contents_promotionss&fun=editData" method="post" name="viewEdit" id="viewEdit">
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
        <td>活动标题</td>
        <td><div class="col-sm-5"><input name="title" type="text" id="title" size="50" value=""  class="form-control"  required="required" />
</div></td>
      </tr>
            <tr>
        <td>活动简介</td>
        <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
      </tr>
            <tr>
        <td>活动内容</td>
        <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
      </tr>
            <tr>
        <td>活动分类</td>
        <td><div id="cls_div" class="col-sm-3"><select name="cls" id="cls" class="form-control" >
<option value="">请选择</option>
<option value="1">促销</option>
<option value="2">团购</option>
<option value="3">拼团</option>
<option value="4">秒杀</option>
<option value="5">拍卖</option>
<option value="6">专题</option>
</select></div>
</td>
      </tr>
            <tr>
        <td>活动限制</td>
        <td><div id="limit_user_lvl_div" style="float: left; width: 100%; text-align: left;"><ul><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="limit_user_lvl[]" type="checkbox" id="limit_user_lvl[]" value="0"  checked />不限制(0)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="limit_user_lvl[]" type="checkbox" id="limit_user_lvl[]" value="1"  />普通(1)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="limit_user_lvl[]" type="checkbox" id="limit_user_lvl[]" value="2"  />铜牌用户(2)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="limit_user_lvl[]" type="checkbox" id="limit_user_lvl[]" value="3"  />银牌用户(3)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="limit_user_lvl[]" type="checkbox" id="limit_user_lvl[]" value="4"  />金牌用户(4)&nbsp;</li><li style="float: left;list-style-type: none; padding-right: 5px; width: 15%;"><input name="limit_user_lvl[]" type="checkbox" id="limit_user_lvl[]" value="5"  />VIP(5)&nbsp;</li></ul></div></td>
      </tr>
            <tr>
        <td>活动限制数量</td>
        <td><div class="col-sm-5"><input name="limit_size" type="text" id="limit_size" size="50" value="0"  class="form-control"   />
</div></td>
      </tr>
            <tr>
        <td>活动有效期</td>
        <td><div class="col-sm-3"><input name="sdate" type="date" id="sdate" size="50" value=""   />
至<input name="edate" type="date" id="edate" size="50" value=""   />
</div></td>
      </tr>
            <tr>
        <td>活动商品</td>
        <td><div id="selectTxt"><button id="showTagCommList" type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" onClick="javascript:getCommList();">选择商品</button></div><div class="col-sm-5"><input name="comm_id" type="hidden" id="comm_id" size="100" value=""  class="form-control"   />
</div></div></td>
      </tr>
            <tr>
        <td>状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">关闭</option>
<option value="1">打开</option>
</select></div>
</td>
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
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">商品列表</h4>
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
<script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.config.js"></script> 
<script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.all.min.js"> </script> 
<script type="text/javascript" charset="utf-8" src="./ueditor/lang/zh-cn/zh-cn.js"></script> 
<script>
var input_comm_id = "|";
function getCheckData(ids) {
	if (input_comm_id.indexOf("|" + ids + "|") < 0) {
		var sendUrl = "/ajax.php?action=manage_getPromotionsCommodityList&type=show&id=" + ids;
		$.ajax({
			url: sendUrl,
			type: "get",
			success: function(res) {
				if (res.length>100) {
					//console.log("res="+res);
					input_comm_id += ids + "|";
					$("#comm_id").val(input_comm_id);
					$("#selectTxt").append(res);
				}
			}
		});
	}
}

function delSelectId(ids) {
    input_comm_id = input_comm_id.replace("|" + ids + "|", "|");
    $("#comm_id").val(input_comm_id);
    $("#list_" + ids).remove();
}

function getCommList(url) {
    var sendUrl = "/ajax.php?action=manage_getPromotionsCommodityList";
    if (url) {
        sendUrl = url;
    }
    $.ajax({
        url: sendUrl,
        type: "get",
        beforeSend: function(XMLHttpRequest){ 
				$("#ajax-html").html("");
				$("#loading").css("display","block");
        }, 
        success: function(res) {
            if (res) {
                $("#ajax-html").html(res);
            }
        },
			complete:function(XMLHttpRequest,textStatus){ 
           // alert('远程调用成功，状态文本值：'+textStatus); 
           $("#loading").css("display","none"); 
			}
    });
}
	
UE.getEditor('synopsis'); UE.getEditor('content');</script> 
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