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
        <input type="hidden" name="exec" id="exec" value="Marketing_custom_service">
        <table class="table table-hover table-bordered">
            <tbody>
            <tr>
                <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
                    <label class="col-md-4" for="key">搜索关键词：</label>
                    <div class="col-md-5">
                        <input type="input" class="form-control" id="key" name="key" value=""
                               placeholder="请输入查询关键词">
                    </div>
                </div></td>
                <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
                    <label class="col-md-3" for="oid">订单号：</label>
                    <div class="col-md-5">
                        <input type="input" class="form-control" id="oid" name="order_id" value=""
                               placeholder="请输入查询订单号">
                    </div>
                </div></td>
            </tr>
            <tr>
                <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
                    <label class="col-md-4" for="user_phone">客户联系电话：</label>
                    <div class="col-md-5">
                        <input type="input" class="form-control" id="user_phone" name="user_phone" value=""
                               placeholder="请输入查询客户联系电话">
                    </div>
                </div></td>
                <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
                    <label class="col-md-3" for="user_name">客户姓名：</label>
                    <div class="col-md-5">
                        <input type="input" class="form-control" id="user_name" name="user_name" value=""
                               placeholder="请输入查询客户姓名">
                    </div>
                </div></td>

            </tr>
            
		<tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">处理状态：</label>
              <div class="col-lg-7">
                <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0">未处理</option>
<option value="1">处理中</option>
<option value="2">已完成</option>
</select></div>

              </div>
            </div></td>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="source">渠道：</label>
              <div class="col-lg-7">
                <div id="source_div" class="col-sm-3"><select name="source" id="source" class="form-control" >
<option value="">请选择</option>
<option value="yz">有赞</option>
<option value="xhs">小红书</option>
<option value="h5">H5自有站</option>
<option value="kzsc">空中网商城</option>
</select></div>

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
             <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="source">优先级：</label>
              <div class="col-lg-7">
                <div id="level_div" class="col-sm-3"><select name="level" id="level" class="form-control" >
<option value="">请选择</option>
<option value="1">低</option>
<option value="2">中</option>
<option value="3">高</option>
</select></div>

              </div>
            </div></td>
        </tr>
         
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
        <tr>
            <td colspan="14" align="center" valign="middle"><input type="checkbox" onClick="javascript:allcheckbox(this, 'id[]');">全选&nbsp;&nbsp;&nbsp;<input type="button" name="out" id="out" value="导出" onClick="javascript:outXML();" class="btn btn-info" />            </td>
        </tr>
        <tr style="font-weight:bold;">
            <td>&nbsp;</td>
            <td>ID</td>
            <td>订单号</td>
            <td>客户姓名</td>
            <td>客户联系电话</td>
            <td>渠道</td>
            <td>问题内容</td>
            <td>问题类型</td>
            <td>优先级</td>
            <td>备注</td>
            <td>状态</td>
            <td>客服</td>
            <td>创建时间</td>
            <td>修改时间</td>
        </tr>
        </thead>
        <tbody>
                <tr>
            <td><input name="id[]" type="checkbox" id="id[]" value="1627"  /></td>
            <td>1111</td>
            <td><a href="pages/front/sale/chat_modify.jsp">E2018111111111</a></td>
            <td>XXXX</td>
            <td>18611111</td>
            <td>有赞</td>
            <td><p><span style="color: rgb(255, 153, 0); font-family: Helvetica, STHeiti, &quot;Microsoft YaHei&quot;, Verdana, Arial, Tahoma, sans-serif; font-size: 12px; background-color: rgb(255, 250, 235);">地址改为：XXXXXXX</span></p></td>
            <td>收货地址变更</td>
            <td>高</td>
            <td></td>
            <td>处理中</td>
            <td>XXX</td>
            <td>2019-01-11 19:19:07</td>
            <td>2019-01-11 19:19:14</td>
        </tr>
                </tbody>
        <tr>
            <td colspan="13" align="center" valign="middle"><p>&nbsp;</p>
              <p><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
              [2]
              [3]
              [4]
              下一页&nbsp;尾页&nbsp;转到第&nbsp;
              <select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Marketing_custom_service&page='+this.options[this.selectedIndex].value">
                <option value="1" selected>1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
                <option value="32">32</option>
                <option value="33">33</option>
                <option value="34">34</option>
                <option value="35">35</option>
                <option value="36">36</option>
                <option value="37">37</option>
                <option value="38">38</option>
                <option value="39">39</option>
                <option value="40">40</option>
                <option value="41">41</option>
                <option value="42">42</option>
                <option value="43">43</option>
                <option value="44">44</option>
                <option value="45">45</option>
                <option value="46">46</option>
                <option value="47">47</option>
                <option value="48">48</option>
                <option value="49">49</option>
                <option value="50">50</option>
                <option value="51">51</option>
                <option value="52">52</option>
                <option value="53">53</option>
                <option value="54">54</option>
                <option value="55">55</option>
                <option value="56">56</option>
                <option value="57">57</option>
                <option value="58">58</option>
                <option value="59">59</option>
                <option value="60">60</option>
                <option value="61">61</option>
                <option value="62">62</option>
                <option value="63">63</option>
                <option value="64">64</option>
                <option value="65">65</option>
                <option value="66">66</option>
                <option value="67">67</option>
                <option value="68">68</option>
                <option value="69">69</option>
                <option value="70">70</option>
                <option value="71">71</option>
                <option value="72">72</option>
                <option value="73">73</option>
                <option value="74">74</option>
                <option value="75">75</option>
                <option value="76">76</option>
                <option value="77">77</option>
                <option value="78">78</option>
                <option value="79">79</option>
                <option value="80">80</option>
                <option value="81">81</option>
                <option value="82">82</option>
                          </select>
&nbsp;页&nbsp;共82页&nbsp;1625条&nbsp;&nbsp;&nbsp;<a href="pages/front/sale/chat_add.jsp" class="btn btn-primary">添加记录</a></p></td>
        </tr>
    </table>
</form>
<script>
    function allcheckbox(allObj, name){
        var chk = document.getElementsByName(name);
        var _tmp = [];
        for(i=0;i<chk.length;i++){
            chk[i].checked = allObj.checked;
        }
    }
    var checkbox = [];
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
    function getData(){
        var sendUrl = "/ajax.jsp?action=manage_getCustomService&index=" + checkbox.join('|');
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