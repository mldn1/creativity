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
  <form name="form_simple" method="post" action="manage.jsp">
    <input type="hidden" name="action" id="action" value="main">
    <input type="hidden" name="exec" id="exec" value="Users_userss">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td colspan="2" style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索关键词：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="key" name="key" value=""
					placeholder="搜索关键词">
              </div>
            </div></td>
        </tr>
      
        <tr>
           </td>                		
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="source">用户来源：</label>
                <div id="source_div" class="col-sm-3"><select name="source" id="source" class="form-control" >
<option value="">请选择</option>
<option value="1">本站</option>
<option value="2">微信</option>
<option value="3">QQ</option>
<option value="4">sina微博</option>
<option value="5">小程序</option>
</select></div>

            </div>
          </td>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">个/页：</label>
              <div class="col-md-2">
                <input type="number" class="form-control" id="size" name="size" value="20" min="20" max="100" step="20">
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
  <table width="99%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr style="font-weight:bold;">
        <td>id</td>
        <td>用户名</td>
        <td>唯一ID</td>
        <td>性别</td>
        <td>用户级别</td>
        <td>来源</td>
        <td>状态</td>
        <td>注册时间</td>
        <td>最近登陆时间</td>
        <td>最后操作人员</td>
        <td>&nbsp;</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><b>2003</b></td>
        <td>XXX</td>
        <td><a href="pages/front/user/user_modify.jsp">1231232132131</a></td>
        <td>未知</td>
        <td>普通</td>
        <td>本站</td>
        <td>打开</td>
        <td>2019-06-23 12:49:32</td>
        <td>2019-06-23 12:49:32</td>
        <td></td>
        <td><a href="pages/front/user/send_coupon.jsp"  target="_blank" >发卷</a>&nbsp;&nbsp;&nbsp;<a href="pages/front/user/send_ms.jsp"  target="_blank" >发消息</a>&nbsp;&nbsp;&nbsp;<a href="?action=main&exec=Users_userss&fun=viewEdit&id=2003&t_uniq=" ></a></td>
      </tr>
            <tr>
        <td><b><a href="">2002</a></b></td>
        <td>XXX</td>
        <td>21312321321312</td>
        <td>未知</td>
        <td>普通</td>
        <td>本站</td>
        <td>打开</td>
        <td>2019-06-22 15:10:18</td>
        <td>2019-06-22 15:10:18</td>
        <td></td>
        <td>发卷&nbsp;&nbsp;&nbsp;发消息&nbsp;&nbsp;</td>
      </tr>
            <tr>
        <td><b><a href="">2001</a></b></td>
        <td>XXX</td>
        <td>123123213213213</td>
        <td>未知</td>
        <td>普通</td>
        <td>本站</td>
        <td>打开</td>
        <td>2019-06-19 13:29:16</td>
        <td>2019-06-19 13:29:16</td>
        <td></td>
        <td>发卷&nbsp;&nbsp;&nbsp;发消息&nbsp;&nbsp;&nbsp;<a href="?action=main&exec=Users_userss&fun=viewEdit&id=2001&t_uniq=" ></a></td>
      </tr>
        </tbody>
    <tr>
      <td colspan="12" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="/manage.jsp?action=main&exec=Users_userss&page=2">2</a>]
[<a  href="/manage.jsp?action=main&exec=Users_userss&page=3">3</a>]
[<a  href="/manage.jsp?action=main&exec=Users_userss&page=4">4</a>]
<a  href="/manage.jsp?action=main&exec=Users_userss&page=2">下一页</a>&nbsp;<a  href="/manage.jsp?action=main&exec=Users_userss&page=100">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Users_userss&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option><option value="32">32</option><option value="33">33</option><option value="34">34</option><option value="35">35</option><option value="36">36</option><option value="37">37</option><option value="38">38</option><option value="39">39</option><option value="40">40</option><option value="41">41</option><option value="42">42</option><option value="43">43</option><option value="44">44</option><option value="45">45</option><option value="46">46</option><option value="47">47</option><option value="48">48</option><option value="49">49</option><option value="50">50</option><option value="51">51</option><option value="52">52</option><option value="53">53</option><option value="54">54</option><option value="55">55</option><option value="56">56</option><option value="57">57</option><option value="58">58</option><option value="59">59</option><option value="60">60</option><option value="61">61</option><option value="62">62</option><option value="63">63</option><option value="64">64</option><option value="65">65</option><option value="66">66</option><option value="67">67</option><option value="68">68</option><option value="69">69</option><option value="70">70</option><option value="71">71</option><option value="72">72</option><option value="73">73</option><option value="74">74</option><option value="75">75</option><option value="76">76</option><option value="77">77</option><option value="78">78</option><option value="79">79</option><option value="80">80</option><option value="81">81</option><option value="82">82</option><option value="83">83</option><option value="84">84</option><option value="85">85</option><option value="86">86</option><option value="87">87</option><option value="88">88</option><option value="89">89</option><option value="90">90</option><option value="91">91</option><option value="92">92</option><option value="93">93</option><option value="94">94</option><option value="95">95</option><option value="96">96</option><option value="97">97</option><option value="98">98</option><option value="99">99</option><option value="100">100</option></select>&nbsp;页&nbsp;共100页&nbsp;1986条</td>
    </tr>
  </table>
</form>
 

 
</div>
</div>
</body>
<script>
$(function(){
	$('#Users').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>