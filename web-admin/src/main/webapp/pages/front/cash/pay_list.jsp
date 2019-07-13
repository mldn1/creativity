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
    <input type="hidden" name="exec" id="exec" value="Finance_payment_platform">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td colspan="2" style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索订单号/支付平台流水号：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="key" name="key" value=""
					placeholder="搜索关键词">
              </div>
            </div></td>
        </tr>
      <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">支付渠道：</label>
              <div class="col-md-10">
                <div id="sources_div" class="col-sm-3"><select name="sources" id="sources" class="form-control" >
<option value="">请选择</option>
<option value="1">微信</option>
<option value="2">支付宝</option>
<option value="3">银行卡</option>
<option value="9">模拟测试</option>
</select></div>

              </div>
            </div></td>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">操作类型：</label>
              <div class="col-md-10">
                <div id="act_type_div" class="col-sm-3"><select name="act_type" id="act_type" class="form-control" >
<option value="">请选择</option>
<option value="1">仅换货</option>
<option value="2">退货退款</option>
<option value="3">仅退款</option>
</select></div>

              </div>
            </div></td>
        </tr>        
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">状态：</label>
              <div class="col-md-10">
                <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="-9">已退款</option>
<option value="-2">退款中</option>
<option value="-1">申请退款</option>
<option value="0"><font color="#A00000">未支付</font></option>
<option value="1"><font color="#2E9200">已支付</font></option>
<option value="2">赠品</option>
<option value="3">免费</option>
<option value="9">已对账确认</option>
</select></div>

              </div>
            </div></td>            		
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">时间范围：</label>
              <div class="col-md-10 form-inline">
                <input name="sdate" type="date" id="sdate" size="20" value="2019-06-23"   />
至<input name="edate" type="date" id="edate" size="20" value="2019-06-26"   />

              </div>
            </div>
          </td>
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
        <td>id</td>
        <td>支付订单号</td>
        <td>订单号</td>
        <td>平台订单号</td>
        <td>订单金额</td>
        <td>订单运费</td>
        <td>实付金额</td>
        <td>支付渠道</td>
        <td>付款状态</td>
        <td>操作类型</td>
        <td>创建时间</td>
        <td>支付时间</td>
        <td>修改人员</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><b><a href="#">1902</a></b></td>
        <td>2019032012061058472092</td>
        <td><a href="pages/front/cash/pay_modify.jsp">201903201206047104b21e</a></td>
        <td></td>
        <td>265.00</td>
        <td>18.00</td>
        <td>283.00</td>
        <td>微信</td>
        <td><font color="#A00000">未支付</font></td>
        <td></td>
        <td>2019-03-20 12:06:04</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1901">1901</a></b></td>
        <td></td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1901">20190317170417343292f8</a></td>
        <td></td>
        <td>1380.00</td>
        <td>15.00</td>
        <td>1395.00</td>
        <td>微信</td>
        <td><font color="#A00000">未支付</font></td>
        <td></td>
        <td>2019-03-17 17:04:17</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1900">1900</a></b></td>
        <td></td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1900">201903171656313346821c</a></td>
        <td></td>
        <td>1850.00</td>
        <td>18.00</td>
        <td>1868.00</td>
        <td>微信</td>
        <td><font color="#A00000">未支付</font></td>
        <td></td>
        <td>2019-03-17 16:56:31</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="#">1899</a></b></td>
        <td></td>
        <td><a href="#">2019031716523515844dce</a></td>
        <td></td>
        <td>1850.00</td>
        <td>18.00</td>
        <td>1868.00</td>
        <td>微信</td>
        <td><font color="#A00000">未支付</font></td>
        <td></td>
        <td>2019-03-17 16:52:35</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1898">1898</a></b></td>
        <td>201903131559584532ee00</td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1898">2019031315595574153f49</a></td>
        <td>4200000255201903133083522014</td>
        <td>468.00</td>
        <td>15.00</td>
        <td>483.00</td>
        <td>微信</td>
        <td>已对账确认</td>
        <td></td>
        <td>2019-03-13 15:59:55</td>
        <td>2019-03-13 16:00:10</td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1897">1897</a></b></td>
        <td></td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1897">2019030809085365864a3d</a></td>
        <td></td>
        <td>199.00</td>
        <td>15.00</td>
        <td>214.00</td>
        <td>微信</td>
        <td><font color="#A00000">未支付</font></td>
        <td></td>
        <td>2019-03-08 09:08:53</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1896">1896</a></b></td>
        <td>201903080845002606160c</td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1896">201903080844579286d135</a></td>
        <td>4200000244201903084067806760</td>
        <td>199.00</td>
        <td>15.00</td>
        <td>214.00</td>
        <td>微信</td>
        <td>已对账确认</td>
        <td></td>
        <td>2019-03-08 08:44:57</td>
        <td>2019-03-08 08:45:09</td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1895">1895</a></b></td>
        <td>20190308020231812708b5</td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1895">2019030802021964052bac</a></td>
        <td>2019030822001475441020628289</td>
        <td>1194.00</td>
        <td>14.00</td>
        <td>1208.00</td>
        <td>支付宝</td>
        <td>已对账确认</td>
        <td></td>
        <td>2019-03-08 02:02:19</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1894">1894</a></b></td>
        <td>2019030721423798315023</td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1894">201903072142327186253e</a></td>
        <td></td>
        <td>199.00</td>
        <td>18.00</td>
        <td>217.00</td>
        <td>微信</td>
        <td><font color="#A00000">未支付</font></td>
        <td></td>
        <td>2019-03-07 21:42:32</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1893">1893</a></b></td>
        <td></td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1893">201903062044201461fd90</a></td>
        <td></td>
        <td>199.00</td>
        <td>15.00</td>
        <td>214.00</td>
        <td>微信</td>
        <td><font color="#A00000">未支付</font></td>
        <td></td>
        <td>2019-03-06 20:44:20</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1892">1892</a></b></td>
        <td>20190306074336836517c5</td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1892">2019030607433126582321</a></td>
        <td>2019030622001466151030410479</td>
        <td>199.00</td>
        <td>18.00</td>
        <td>217.00</td>
        <td>支付宝</td>
        <td>已对账确认</td>
        <td></td>
        <td>2019-03-06 07:43:31</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1891">1891</a></b></td>
        <td>20190306073736647678ee</td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1891">201903060737339382f00c</a></td>
        <td></td>
        <td>199.00</td>
        <td>18.00</td>
        <td>217.00</td>
        <td>微信</td>
        <td><font color="#A00000">未支付</font></td>
        <td></td>
        <td>2019-03-06 07:37:33</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1890">1890</a></b></td>
        <td>2019030521554450280588</td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1890">2019030521554043073833</a></td>
        <td>4200000240201903057130334789</td>
        <td>199.00</td>
        <td>18.00</td>
        <td>217.00</td>
        <td>微信</td>
        <td>已对账确认</td>
        <td></td>
        <td>2019-03-05 21:55:40</td>
        <td>2019-03-05 21:55:55</td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1889">1889</a></b></td>
        <td>2019030519345959670acc</td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1889">201903051934546668bf55</a></td>
        <td>2019030522001430101032288715</td>
        <td>199.00</td>
        <td>15.00</td>
        <td>214.00</td>
        <td>支付宝</td>
        <td>已对账确认</td>
        <td></td>
        <td>2019-03-05 19:34:54</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1888">1888</a></b></td>
        <td>201903051859344007ab95</td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1888">20190305185927490672d6</a></td>
        <td>4200000241201903050100177438</td>
        <td>99.00</td>
        <td>14.00</td>
        <td>113.00</td>
        <td>微信</td>
        <td>已对账确认</td>
        <td></td>
        <td>2019-03-05 18:59:27</td>
        <td>2019-03-05 18:59:52</td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1887">1887</a></b></td>
        <td></td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1887">201903051705227746624e</a></td>
        <td></td>
        <td>199.00</td>
        <td>15.00</td>
        <td>214.00</td>
        <td>微信</td>
        <td><font color="#A00000">未支付</font></td>
        <td></td>
        <td>2019-03-05 17:05:22</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1886">1886</a></b></td>
        <td>2019030514343018568d82</td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1886">2019030514342212649456</a></td>
        <td>4200000256201903050635529107</td>
        <td>199.00</td>
        <td>18.00</td>
        <td>217.00</td>
        <td>微信</td>
        <td>已对账确认</td>
        <td></td>
        <td>2019-03-05 14:34:22</td>
        <td>2019-03-05 14:34:44</td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1885">1885</a></b></td>
        <td>201903051353432628e786</td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1885">2019030513534110568744</a></td>
        <td>4200000243201903057362229955</td>
        <td>199.00</td>
        <td>23.00</td>
        <td>222.00</td>
        <td>微信</td>
        <td>已对账确认</td>
        <td></td>
        <td>2019-03-05 13:53:41</td>
        <td>2019-03-05 13:53:52</td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1884">1884</a></b></td>
        <td>2019030513493731626a71</td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1884">201903051349346015a7cc</a></td>
        <td>4200000252201903057438618872</td>
        <td>199.00</td>
        <td>23.00</td>
        <td>222.00</td>
        <td>微信</td>
        <td>已对账确认</td>
        <td></td>
        <td>2019-03-05 13:49:34</td>
        <td>2019-03-05 13:49:50</td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1883">1883</a></b></td>
        <td></td>
        <td><a href="?action=main&exec=Finance_payment_platform&fun=viewEdit&id=1883">201903051203577369f6d8</a></td>
        <td></td>
        <td>199.00</td>
        <td>18.00</td>
        <td>217.00</td>
        <td>微信</td>
        <td><font color="#A00000">未支付</font></td>
        <td></td>
        <td>2019-03-05 12:03:57</td>
        <td></td>
        <td></td>
      </tr>
          </tbody>
    <tr>
      <td colspan="13" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="/manage.jsp?action=main&exec=Finance_payment_platform&page=2">2</a>]
[<a  href="/manage.jsp?action=main&exec=Finance_payment_platform&page=3">3</a>]
[<a  href="/manage.jsp?action=main&exec=Finance_payment_platform&page=4">4</a>]
<a  href="/manage.jsp?action=main&exec=Finance_payment_platform&page=2">下一页</a>&nbsp;<a  href="/manage.jsp?action=main&exec=Finance_payment_platform&page=77">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Finance_payment_platform&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option><option value="32">32</option><option value="33">33</option><option value="34">34</option><option value="35">35</option><option value="36">36</option><option value="37">37</option><option value="38">38</option><option value="39">39</option><option value="40">40</option><option value="41">41</option><option value="42">42</option><option value="43">43</option><option value="44">44</option><option value="45">45</option><option value="46">46</option><option value="47">47</option><option value="48">48</option><option value="49">49</option><option value="50">50</option><option value="51">51</option><option value="52">52</option><option value="53">53</option><option value="54">54</option><option value="55">55</option><option value="56">56</option><option value="57">57</option><option value="58">58</option><option value="59">59</option><option value="60">60</option><option value="61">61</option><option value="62">62</option><option value="63">63</option><option value="64">64</option><option value="65">65</option><option value="66">66</option><option value="67">67</option><option value="68">68</option><option value="69">69</option><option value="70">70</option><option value="71">71</option><option value="72">72</option><option value="73">73</option><option value="74">74</option><option value="75">75</option><option value="76">76</option><option value="77">77</option></select>&nbsp;页&nbsp;共77页&nbsp;1532条</td>
    </tr>
  </table>
</form>
 

</div>
</div>
</body>
<script>
$(function(){
	$('#Finance').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>