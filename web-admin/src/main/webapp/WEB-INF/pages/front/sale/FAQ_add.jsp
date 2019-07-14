<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">
<form  role="form" action="#" method="post" name="viewEdit" id="viewEdit">
    <table width="98%" class="table table-striped table-hover table-bordered">
        <thead>
        <tr>
            <td colspan="2" align="center">问题详细信息</td>
        </tr>
        </thead>
        <tbody>
                <tr>
            <td>id</td>
            <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value=""  class="form-control"   readonly />
</div></td>
        </tr>
                <tr>
            <td>问题</td>
            <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
        </tr>
                <tr>
            <td>回答</td>
            <td><label for="name">文本框</label>
    <textarea class="form-control" rows="3"></textarea></td>
        </tr>
                <tr>
            <td>类型</td>
            <td><div id="type_div" class="col-sm-3"><select name="type" id="type" class="form-control" >
<option value="">请选择</option>
<option value="1">产品质量问题</option>
<option value="2">产品详情咨询</option>
<option value="3">是否可以提前发货</option>
<option value="4">售罄商品补货时间</option>
<option value="5">购买方式</option>
<option value="6">新品上新时间</option>
<option value="7">发货时间咨询</option>
<option value="8">到货时间</option>
<option value="9">退款问题</option>
<option value="10">订单查询</option>
<option value="11">7天无理由退款</option>
<option value="12">选错型号退款</option>
<option value="13">发货时间过长退款</option>
<option value="15">面膜发货问题</option>
<option value="16">补发问题</option>
<option value="17">运费问题</option>
<option value="18">商务合作</option>
<option value="19">媒体记者</option>
<option value="20">退款到账查询</option>
<option value="22">无货问题</option>
<option value="23">到货时间太长</option>
<option value="24">选错型号</option>
<option value="25">不想要了</option>
<option value="26">重复购买</option>
<option value="27">快递费问题</option>
<option value="28">缺少配件问题</option>
<option value="29">收货地址变更</option>
<option value="30">退换货</option>
<option value="31">订单拆分</option>
<option value="32">索取发票</option>
<option value="33">售前咨询</option>
<option value="14">其他</option>
</select></div>
</td>
        </tr>
                <tr>
            <td>创建时间</td>
            <td></td>
        </tr>
                <tr>
            <td>修改时间</td>
            <td></td>
        </tr>
                <tr>
            <td>操作人</td>
            <td></td>
        </tr>
                <tr>
            <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                <input type="button" name="Submit" id="Submit" value="返回" onClick="javascript:history.back();" class="btn btn-default" />

            </td>
        </tr>
        </tbody>
    </table>
</form>
<script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="./ueditor/lang/zh-cn/zh-cn.js"></script>
<script>
     UE.getEditor('answer',{scaleEnabled:true,initialFrameHeight:200});UE.getEditor('question',{scaleEnabled:true,initialFrameHeight:100});</script>
<script>
    var meaning = $("#meaning");
    var _tmp_meaning;
    $(function(){
        $(".meaning").change(function(){
            var ch_val = $(this);
            if(meaning.val().length==0){
                _tmp_meaning = new Array();
            }else{
                _tmp_meaning = meaning.val().split("|");
            }
            if($(this).is(":checked")){
                if($.inArray(ch_val.val(),_tmp_meaning)>0){

                }else{
                    _tmp_meaning.push(ch_val.val());
                    meaning.val(_tmp_meaning.join("|"));
                }
            }else{
                var _tmp = new Array();
                for (var i = 0; i < _tmp_meaning.length; i++) {
                    if (_tmp_meaning[i] != ch_val.val()) _tmp.push(_tmp_meaning[i]);
                }
                meaning.val(_tmp.join("|"));
            }
        });
    });

    function addSource(){
        var source_tmp = $("#source_tmp");
        var sendUrl = "/ajax.php?action=manage_getCommoditys";
        if (source_tmp.val()) {
            console.log("source_tmp=" + source_tmp.val());
            $.ajax({
                url: sendUrl+"&exec=source_tmp&txt="+source_tmp.val(),
                type: "get",
                beforeSend: function(XMLHttpRequest) {
                },
                success: function(res) {
                    if (res) {
                        $("#source").append(res);
                    }
                },
                complete: function(XMLHttpRequest, textStatus) {
                }
            });
        }
    }
    function addMeaning(){
        var meaning_tmp = $("#meaning_tmp");
        var sendUrl = "/ajax.php?action=manage_getCommoditys";
        if (meaning_tmp.val()) {
            console.log("meaning_tmp=" + meaning_tmp.val());
            $.ajax({
                url: sendUrl+"&exec=meaning_tmp&txt="+meaning_tmp.val(),
                type: "get",
                dataType: "json",
                beforeSend: function(XMLHttpRequest) {
                },
                success: function(res) {
                    if (res) {
                        $("#meaning_div ul").append(res['html']);
                        if(meaning.val().length==0){
                            _tmp_meaning = new Array();
                        }else{
                            _tmp_meaning = meaning.val().split("|");
                        }
                        _tmp_meaning.push(res['id']);
                        meaning.val(_tmp_meaning.join("|"));
                    }
                },
                complete: function(XMLHttpRequest, textStatus) {
                }
            });
        }
    }
    function showViewPreview(){
        $.ajax({
            url: "/ajax.php?action=manage_getCommoditys&exec=preview_tmp",
            type: "POST",
            dataType: "html",
            data: $("#viewEdit").serialize(),
            beforeSend: function(XMLHttpRequest) {
            },
            success: function(res) {
                console.log("showViewPreview=" + res);
                if (res) {
                    window.open('http://test.gugong-palace.com/detail.php?preview=1&id='+res);
                }
            },
            complete: function(XMLHttpRequest, textStatus) {
            }
        });
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