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
    <input type="hidden" name="exec" id="exec" value="Contents_logisticsCost">
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
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-3" for="group_id">快递公司：</label>
              <div class="col-lg-9">
                <div id="group_id_div" class="col-sm-3"><select name="group_id" id="group_id" class="form-control" >
<option value="">请选择</option>
<option value="1">顺丰特惠</option>
<option value="2">顺丰标快</option>
</select></div>

              </div>
            </div></td>
        </tr>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-3" for="state">状态：</label>
              <div class="col-lg-9">
                <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0"><span style="color:#C00; font-weight:bold">关闭</span></option>
<option value="1"><span style="color:#3C0; font-weight:bold">打开</span></option>
<option value="9"><span style="color:#30F; font-weight:bold">置顶</span></option>
</select></div>

              </div>
            </div></td>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-3" for="size">个/页：</label>
              <div class="col-lg-5">
                <input type="number" class="form-control" id="size" name="size" value="20" min="20" max="100" step="20">
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
<form action="?action=main&exec=Contents_logisticsCost" method="POST" enctype="multipart/form-data" name="form_list" id="form_list">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr style="font-weight:bold;">
        <td>id</td>
        <td>快递公司</td>
        <td>抵达城市</td>
        <td>首重钱数</td>
        <td>续重钱数</td>
        <td>权重值</td>
        <td>状态</td>
	  		<td>操作人员</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><b><a href="pages/front/operate/freight_modify.jsp">62</a></b></td>
        <td><a href="pages/front/operate/freight_modify.jsp">顺丰标快</a></td>
        <td>新疆维吾尔</td>
        <td>26.00</td>
        <td>21.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=61">61</a></b></td>
        <td><a href="运费管理详情.html">顺丰标快</a></td>
        <td>西藏</td>
        <td>26.00</td>
        <td>21.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=60">60</a></b></td>
        <td><a href="运费管理详情.html">顺丰标快</a></td>
        <td>海南</td>
        <td>23.00</td>
        <td>14.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=59">59</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=59">顺丰标快</a></td>
        <td>广西壮族</td>
        <td>23.00</td>
        <td>14.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=58">58</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=58">顺丰标快</a></td>
        <td>广东</td>
        <td>23.00</td>
        <td>14.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=57">57</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=57">顺丰标快</a></td>
        <td>云南</td>
        <td>23.00</td>
        <td>14.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=56">56</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=56">顺丰标快</a></td>
        <td>四川</td>
        <td>23.00</td>
        <td>13.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=55">55</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=55">顺丰标快</a></td>
        <td>青海</td>
        <td>23.00</td>
        <td>13.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=54">54</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=54">顺丰标快</a></td>
        <td>重庆</td>
        <td>23.00</td>
        <td>13.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=53">53</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=53">顺丰标快</a></td>
        <td>贵州</td>
        <td>23.00</td>
        <td>13.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=52">52</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=52">顺丰标快</a></td>
        <td>上海</td>
        <td>23.00</td>
        <td>10.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=51">51</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=51">顺丰标快</a></td>
        <td>陕西</td>
        <td>23.00</td>
        <td>10.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=50">50</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=50">顺丰标快</a></td>
        <td>宁夏回族</td>
        <td>23.00</td>
        <td>10.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=49">49</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=49">顺丰标快</a></td>
        <td>内蒙古</td>
        <td>23.00</td>
        <td>10.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=48">48</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=48">顺丰标快</a></td>
        <td>浙江</td>
        <td>23.00</td>
        <td>10.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=47">47</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=47">顺丰标快</a></td>
        <td>江西</td>
        <td>23.00</td>
        <td>10.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=46">46</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=46">顺丰标快</a></td>
        <td>江苏</td>
        <td>23.00</td>
        <td>10.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=45">45</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=45">顺丰标快</a></td>
        <td>吉林</td>
        <td>23.00</td>
        <td>10.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=44">44</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=44">顺丰标快</a></td>
        <td>湖南</td>
        <td>23.00</td>
        <td>10.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=43">43</a></b></td>
        <td><a href="?action=main&exec=Contents_logisticsCost&fun=viewEdit&id=43">顺丰标快</a></td>
        <td>湖北</td>
        <td>23.00</td>
        <td>10.00</td>
        <td>1.00</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td></td>
      </tr>
          </tbody>
    <tfoot>
    <tr>
      <td colspan="8" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
[<a  href="/manage.jsp?action=main&exec=Contents_logisticsCost&page=2">2</a>]
[<a  href="/manage.jsp?action=main&exec=Contents_logisticsCost&page=3">3</a>]
[<a  href="/manage.jsp?action=main&exec=Contents_logisticsCost&page=4">4</a>]
<a  href="/manage.jsp?action=main&exec=Contents_logisticsCost&page=2">下一页</a>&nbsp;<a  href="/manage.jsp?action=main&exec=Contents_logisticsCost&page=4">尾页</a>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Contents_logisticsCost&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select>
&nbsp;页&nbsp;共4页&nbsp;62条&nbsp;&nbsp;&nbsp;<a href="pages/front/operate/freight_add.jsp" class="btn btn-primary">添加快递公司</a></td>
    </tr>
    </tfoot>
  </table>
</form>
 

 

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