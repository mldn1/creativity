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
        <input type="hidden" name="exec" id="exec" value="Marketing_faq">
        <table class="table table-hover table-bordered">
            <tbody>
            <tr>
                <td style="text-align:left; vertical-align:bottom;overflow: visible"><div class="form-group">
                    <label class="col-md-4" for="key">搜索问题关键词：</label>
                    <div class="col-md-5 search">
                        <input type="input" class="form-control" id="key" name="key" value=""
                               placeholder="请输入查询关键词" autocomplete="off">
                        <div id="auto_div"></div>
                    </div>
                </div></td>
            </tr>
            
		<tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">问题类型：</label>
              <div class="col-lg-7">
                <div id="type_div" class="col-sm-3"><select name="type" id="type" class="form-control" >
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

              </div>
            </div></td>
        </tr>            <tr>
                <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
                    <label class="col-md-2" for="size">个/页：</label>
                    <div class="col-md-3">
                        <input type="number" class="form-control" id="size" name="size" value="20" min="20" max="100" step="20">
                    </div>
                </div></td>
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
        <tr style="font-weight:bold;">
            <td>ID</td>
            <td>问题</td>
            <td>回答</td>
            <td>类型</td>
            <td>创建时间</td>
            <td>修改时间</td>
            <td>操作人</td>
        </tr>
        </thead>
        <tbody>
                <tr>
            <td>389</td>
            <td><a href="pages/front/sale/FAQ_modify.jsp"  target="_blank" >故宫宫门钱包的使用场景</a></td>
            <td>以故宫的“宫门”为元素，配门钉，金辅首的故宫宫门钱包，</td>
            <td>产品详情咨询</td>
            <td></td>
            <td>2018-12-20 11:55:59</td>
            <td></td>
        </tr>
                <tr>
            <td>368</td>
            <td>双喜临门盘的日常使用保养</td>
            <td>您好，双喜临门盘用完之后及时清理并擦干。平时放在干燥通风的地方，用干布擦拭灰尘即可，对于浮雕纹饰上的灰尘，最好用细软羊毛刷来除。 酸和碱是铜器的“头号杀手”，铜器如不慎粘上酸（如硫酸、食醋）、碱（如甲碱、肥皂水、苏打水），立即用清水冲净，再用干布擦干。 锈迹较小较浅的地方可用柠檬反复擦拭去除，去除后蘸少许橄榄油保养即可。</td>
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
</select></div></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
                <tr>
            <td>367</td>
            <td>双喜临门盘的设计/图案有何寓意</td>
            <td>您好，双喜临门盘依据“金錾花双喜圆寿字茶碗”上的双喜纹样而设计，以精铜打造雅致铜盘，盘底精雕双喜纹，双喜并联，寓意白头到老，子孙满堂，吉祥喜庆</td>
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
</select></div></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
                <tr>
            <td>366</td>
            <td>双喜临门盘的制作工艺？</td>
            <td>您好，双喜临门盘经过表面处理、塑形、铸造、精雕、打磨以及抛光等工序，从设计、制作、打磨到修饰，运用国家级非遗技艺，精工细作，每道工序环环相扣，无不体现着大国工匠的细心与耐心。</td>
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
</select></div></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
                </tbody>
        <tr>
            <td colspan="13" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="/manage.jsp?action=main&exec=Marketing_faq&page=2">2</a>]
[<a  href="/manage.jsp?action=main&exec=Marketing_faq&page=3">3</a>]
[<a  href="/manage.jsp?action=main&exec=Marketing_faq&page=4">4</a>]
<a  href="/manage.jsp?action=main&exec=Marketing_faq&page=2">下一页</a>&nbsp;<a  href="/manage.jsp?action=main&exec=Marketing_faq&page=18">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Marketing_faq&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option></select>&nbsp;页&nbsp;共18页&nbsp;343条&nbsp;&nbsp;&nbsp;
                <a href="pages/front/sale/FAQ_add.jsp"  target="_blank"  class="btn btn-primary">添加记录</a></td>
        </tr>
    </table>
</form>
<input type="hidden" id="faq">;
<style>
    .search
    {
        left: 0;
        position: relative;
    }
    #auto_div
    {
        display: none;
        width: 300px;
        border: 1px #74c0f9 solid;
        background: #FFF;
        position: absolute;
        color: #323232;
        z-index: 999;
    }
</style>
<script type="text/javascript">
    $(function(){
//当键盘键被松开时发送Ajax获取数据
        $('#key').keyup(function(){
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
        })
//点击搜索数据复制给搜索框
        $(document).on('click','.click_work',function(){
            var word = $(this).text();
            $('#key').val(word);
            $('#auto_div').hide();
            // $('#texe').trigger('click');触发搜索事件
        })
        //点击页面隐藏自动补全提示框
        document.onclick = function (e) {
            var e = e ? e : window.event;
            var tar = e.srcElement || e.target;
            if (tar.id != key) {
                if ($('#auto_div').is(":visible")) {
                    $('#auto_div').css("display", "none")
                }
            }
        }
    })


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