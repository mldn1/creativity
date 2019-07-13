<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"><form action="?action=main&exec=Marketing_custom_service&fun=editData" method="post" name="viewEdit" id="viewEdit">
    <table width="98%" class="table table-striped table-hover table-bordered">
        <thead>
        <tr>
            <td colspan="2" align="center">修改问题详细信息</td>
        </tr>
        </thead>
        <tbody>
                <tr>
            <td>id</td>
            <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="1627"  class="form-control"   readonly />
</div></td>
        </tr>
                <tr>
            <td>订单号</td>
            <td><div class="col-sm-5"><input name="order_id" type="text" id="order_id" size="50" value="E201812111111111111"  class="form-control"   />
</div></td>
        </tr>
                <tr>
            <td>客户姓名</td>
            <td><div class="col-sm-5"><input name="user_name" type="text" id="user_name" size="50" value="XX"  class="form-control"   />
</div></td>
        </tr>
                <tr>
            <td>客户联系电话</td>
            <td><div class="col-sm-5"><input name="user_phone" type="text" id="user_phone" size="50" value="18XXXXXXXX"  class="form-control"   />
</div></td>
        </tr>
                <tr>
            <td>渠道</td>
            <td><div id="source_div" class="col-sm-3"><select name="source" id="source" class="form-control" >
<option value="">请选择</option>
<option value="yz" selected>有赞</option>
<option value="xhs">小红书</option>
<option value="h5">H5自有站</option>
<option value="kzsc">空中网商城</option>
</select></div>
</td>
        </tr>
                <tr>
            <td>问题内容</td>
            <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
        </tr>
                <tr>
            <td>问题类型</td>
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
<option value="29" selected>收货地址变更</option>
<option value="30">退换货</option>
<option value="31">订单拆分</option>
<option value="32">索取发票</option>
<option value="33">售前咨询</option>
<option value="14">其他</option>
</select></div>
</td>
        </tr>
                <tr>
            <td>状态</td>
            <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">未处理</option>
<option value="1" selected>处理中</option>
<option value="2">已完成</option>
</select></div>
</td>
        </tr>
                <tr>
            <td>优先级</td>
            <td><div id="level_div" class="col-sm-3"><select name="level" id="level" class="form-control" >
<option value="">请选择</option>
<option value="1">低</option>
<option value="2">中</option>
<option value="3" selected>高</option>
</select></div>
</td>
        </tr>
                <tr>
            <td>备注</td>
            <td><label for="name">输入框</label>
    <textarea class="form-control" rows="3"></textarea></td>
        </tr>
                <tr>
            <td>修改记录</td>
            <td><table width="50%" class="table table-striped table-hover table-bordered">
        <thead>
        <tr>
            <td>日期</td>
            <td>客服</td>
            <td>问题内容</td>
            <td>处理状态</td>
            <td>备注</td>
            <td>优先级</td>
        </tr>
        </thead>
        <tbody><tr>
          <td>2019-01-11 11:11:14</td>
          <td>XXXX</td>
        <td><p><span style="color: rgb(255, 153, 0); font-family: Helvetica, STHeiti, &quot;Microsoft YaHei&quot;, Verdana, Arial, Tahoma, sans-serif; font-size: 12px; background-color: rgb(255, 250, 235);">地址改为：XXXXXXXXXXXX，其他不变</span></p></td><td>处理中</td><td></td><td>高</td></tr></tbody>
    </table></td>
        </tr>
                <tr>
            <td>客服</td>
            <td>XXXX</td>
        </tr>
                <tr>
            <td>创建时间</td>
            <td>2019-01-25 19:19:07</td>
        </tr>
                <tr>
            <td>修改时间</td>
            <td>2019-01-25 19:19:14</td>
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
<style>
    #auto_div
    {
        display: none;
        width: 284px;
        border: 1px #ccc solid;
        background: #FFF;
        position: absolute;
        color: #323232;
        z-index: 999;
    }
</style>
<script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="./ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="./ueditor/lang/zh-cn/zh-cn.js"></script>
<script>
     UE.getEditor('cont',{scaleEnabled:true,initialFrameHeight:200}); UE.getEditor('remark',{scaleEnabled:true,initialFrameHeight:200});</script>
<script>
    $(function(){
       /* $("#cont").parent().css('position','relative');
        $("#cont").parent().parent().css('overflow','visible');
        $("#cont").after("<div id='auto_div'></div>");
        //当键盘键被松开时发送Ajax获取数据
        $('#cont').children("p").keyup(function(){
            var keywords = $(this).val();
            if (keywords=='') { $('#auto_div').hide(); return };
            $.ajax({
                url: '/ajax.jsp?action=manage_getFaq&wd=' + keywords,
                beforeSend:function(){
                },
                success:function(data){
                    console.log(data);
                    $('#auto_div').empty().show();
                    if (data != "") {
                        var res = JSON.parse(data);
                        $.each(res, function(){
                            $('#auto_div').append('<div class="click_work">'+ this +'</div>');
                        })
                    }
                },
                error:function(){

                }
            })
        })*/
//点击搜索数据复制给搜索框
        $(document).on('click','.click_work',function(){
            var word = $(this).text();
            $('#cont').val(word);
            $('#auto_div').hide();
            // $('#texe').trigger('click');触发搜索事件
        })
        //点击页面隐藏自动补全提示框
        document.onclick = function (e) {
            var e = e ? e : window.event;
            var tar = e.srcElement || e.target;
            if (tar.id != cont) {
                if ($('#auto_div').is(":visible")) {
                    $('#auto_div').css("display", "none")
                }
            }
        }
    })
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
        var sendUrl = "/ajax.jsp?action=manage_getCommoditys";
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
        var sendUrl = "/ajax.jsp?action=manage_getCommoditys";
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
            url: "/ajax.jsp?action=manage_getCommoditys&exec=preview_tmp",
            type: "POST",
            dataType: "html",
            data: $("#viewEdit").serialize(),
            beforeSend: function(XMLHttpRequest) {
            },
            success: function(res) {
                console.log("showViewPreview=" + res);
                if (res) {
                    window.open('http://test.gugong-palace.com/detail.jsp?preview=1&id='+res);
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