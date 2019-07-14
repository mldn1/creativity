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
    <input type="hidden" name="exec" id="exec" value="Channels_commoditys_channel_inventory">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索关键词：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="key" name="key" value=""
					placeholder="请输入查询关键词">
              </div>
            </div></td>
        </tr>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="size">个/页：</label>
              <div class="col-md-2">
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
        <td>&nbsp;</td>
        <td>商品名称</td>
        <td>商品代码</td>
        <td>总库存</td>
        <td>渠道分配权重（数字大权重高）</td>
        <td>渠道分配比例</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>99</td>
        <td>如意琉璃压花钱包</td>
        <td>ZHA-00022</td>
        <td>3</td>
        <td><div class="99" data-id="99"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',99, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',99, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',99, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',99, this);"  />
</p></div></td>
        <td><div class="99" data-id="99"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',99, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',99, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',99, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',99, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>98</td>
        <td>珍宝庄严雪纺丝巾（蓝色）</td>
        <td>SCA-00069</td>
        <td>8</td>
        <td><div class="98" data-id="98"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',98, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',98, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',98, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',98, this);"  />
</p></div></td>
        <td><div class="98" data-id="98"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',98, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',98, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',98, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',98, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>97</td>
        <td>福至杯</td>
        <td>TYA-00011</td>
        <td>0</td>
        <td><div class="97" data-id="97"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',97, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',97, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',97, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',97, this);"  />
</p></div></td>
        <td><div class="97" data-id="97"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',97, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',97, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',97, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',97, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>96</td>
        <td>福禄杯</td>
        <td>TYA-00009</td>
        <td>215</td>
        <td><div class="96" data-id="96"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',96, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',96, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',96, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',96, this);"  />
</p></div></td>
        <td><div class="96" data-id="96"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',96, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',96, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',96, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',96, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>95</td>
        <td>福禄盖碗</td>
        <td>TYA-00012</td>
        <td>401</td>
        <td><div class="95" data-id="95"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',95, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',95, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',95, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',95, this);"  />
</p></div></td>
        <td><div class="95" data-id="95"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',95, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',95, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',95, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',95, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>94</td>
        <td>福字杯</td>
        <td>TYA-00010</td>
        <td>354</td>
        <td><div class="94" data-id="94"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',94, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',94, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',94, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',94, this);"  />
</p></div></td>
        <td><div class="94" data-id="94"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',94, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',94, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',94, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',94, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>93</td>
        <td>玉瓷单杯（双喜迎春）</td>
        <td>YYA-00031</td>
        <td>1</td>
        <td><div class="93" data-id="93"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',93, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',93, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',93, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',93, this);"  />
</p></div></td>
        <td><div class="93" data-id="93"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',93, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',93, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',93, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',93, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>92</td>
        <td>祭蓝釉茶具</td>
        <td>YYA-00001</td>
        <td>4</td>
        <td><div class="92" data-id="92"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',92, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',92, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',92, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',92, this);"  />
</p></div></td>
        <td><div class="92" data-id="92"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',92, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',92, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',92, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',92, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>91</td>
        <td>神骏水果叉</td>
        <td>YYA-00030</td>
        <td>65</td>
        <td><div class="91" data-id="91"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',91, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',91, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',91, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',91, this);"  />
</p></div></td>
        <td><div class="91" data-id="91"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',91, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',91, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',91, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',91, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>90</td>
        <td>玉瓷单杯（蝶恋红菊）</td>
        <td>YYA-00004</td>
        <td>4</td>
        <td><div class="90" data-id="90"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',90, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',90, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',90, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',90, this);"  />
</p></div></td>
        <td><div class="90" data-id="90"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',90, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',90, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',90, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',90, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>89</td>
        <td>影青公道杯（单杯）</td>
        <td>YYA-00047</td>
        <td>9</td>
        <td><div class="89" data-id="89"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',89, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',89, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',89, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',89, this);"  />
</p></div></td>
        <td><div class="89" data-id="89"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',89, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',89, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',89, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',89, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>88</td>
        <td>7头·青釉铜柄提梁壶茶具（高）</td>
        <td>YYA-00046</td>
        <td>16</td>
        <td><div class="88" data-id="88"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',88, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',88, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',88, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',88, this);"  />
</p></div></td>
        <td><div class="88" data-id="88"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',88, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',88, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',88, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',88, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>87</td>
        <td>荷意年年方巾（灰绿）</td>
        <td>SCA-00011</td>
        <td>40</td>
        <td><div class="87" data-id="87"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',87, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',87, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',87, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',87, this);"  />
</p></div></td>
        <td><div class="87" data-id="87"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',87, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',87, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',87, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',87, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>86</td>
        <td>织锦加皮小钱包-海水江崖（灰）</td>
        <td>SCA-00035</td>
        <td>40</td>
        <td><div class="86" data-id="86"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',86, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',86, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',86, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',86, this);"  />
</p></div></td>
        <td><div class="86" data-id="86"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',86, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',86, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',86, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',86, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>85</td>
        <td>织锦加皮小钱包-海水江崖（金）</td>
        <td>SCA-00034</td>
        <td>40</td>
        <td><div class="85" data-id="85"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',85, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',85, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',85, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',85, this);"  />
</p></div></td>
        <td><div class="85" data-id="85"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',85, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',85, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',85, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',85, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>84</td>
        <td>织锦加皮名片夹-海水江崖（灰）</td>
        <td>SCA-00039</td>
        <td>40</td>
        <td><div class="84" data-id="84"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',84, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',84, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',84, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',84, this);"  />
</p></div></td>
        <td><div class="84" data-id="84"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',84, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',84, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',84, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',84, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>83</td>
        <td>织锦加皮名片夹-海水江崖（金）</td>
        <td>SCA-00038</td>
        <td>40</td>
        <td><div class="83" data-id="83"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',83, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',83, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',83, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',83, this);"  />
</p></div></td>
        <td><div class="83" data-id="83"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',83, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',83, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',83, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',83, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>82</td>
        <td>织锦加皮卡包-海水江崖（灰）</td>
        <td>SCA-00037</td>
        <td>40</td>
        <td><div class="82" data-id="82"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',82, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',82, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',82, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',82, this);"  />
</p></div></td>
        <td><div class="82" data-id="82"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',82, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',82, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',82, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',82, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>81</td>
        <td>织锦加皮卡包-海水江崖（金）</td>
        <td>SCA-00036</td>
        <td>40</td>
        <td><div class="81" data-id="81"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',81, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',81, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',81, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',81, this);"  />
</p></div></td>
        <td><div class="81" data-id="81"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',81, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',81, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',81, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',81, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>80</td>
        <td>福山寿海盘（圆）</td>
        <td>TQA-00023</td>
        <td>4</td>
        <td><div class="80" data-id="80"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',80, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',80, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',80, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',80, this);"  />
</p></div></td>
        <td><div class="80" data-id="80"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',80, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',80, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',80, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',80, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>79</td>
        <td>双喜果盘</td>
        <td>TQA-00024</td>
        <td>3</td>
        <td><div class="79" data-id="79"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',79, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',79, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',79, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',79, this);"  />
</p></div></td>
        <td><div class="79" data-id="79"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',79, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',79, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',79, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',79, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>78</td>
        <td>海错图水杯-雉</td>
        <td>YYA-00010</td>
        <td>19</td>
        <td><div class="78" data-id="78"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',78, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',78, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',78, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',78, this);"  />
</p></div></td>
        <td><div class="78" data-id="78"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',78, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',78, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',78, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',78, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>77</td>
        <td>海错图水杯-鱼牛</td>
        <td>YYA-00013</td>
        <td>19</td>
        <td><div class="77" data-id="77"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',77, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',77, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',77, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',77, this);"  />
</p></div></td>
        <td><div class="77" data-id="77"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',77, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',77, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',77, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',77, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>76</td>
        <td>海错图水杯-河豚</td>
        <td>YYA-00011</td>
        <td>19</td>
        <td><div class="76" data-id="76"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',76, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',76, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',76, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',76, this);"  />
</p></div></td>
        <td><div class="76" data-id="76"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',76, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',76, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',76, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',76, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>75</td>
        <td>织锦加皮护照包-海水江崖（金色）</td>
        <td>SCA-00040</td>
        <td>40</td>
        <td><div class="75" data-id="75"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',75, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',75, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',75, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',75, this);"  />
</p></div></td>
        <td><div class="75" data-id="75"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',75, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',75, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',75, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',75, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>74</td>
        <td>福满江山壶</td>
        <td>TQA-00017</td>
        <td>4</td>
        <td><div class="74" data-id="74"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',74, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',74, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',74, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',74, this);"  />
</p></div></td>
        <td><div class="74" data-id="74"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',74, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',74, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',74, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',74, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>73</td>
        <td>映日碧荷茶碟</td>
        <td>TQA-00015</td>
        <td>1</td>
        <td><div class="73" data-id="73"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',73, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',73, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',73, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',73, this);"  />
</p></div></td>
        <td><div class="73" data-id="73"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',73, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',73, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',73, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',73, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>72</td>
        <td>龟纹寿康壶</td>
        <td>TQA-00008</td>
        <td>4</td>
        <td><div class="72" data-id="72"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',72, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',72, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',72, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',72, this);"  />
</p></div></td>
        <td><div class="72" data-id="72"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',72, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',72, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',72, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',72, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>71</td>
        <td>7头·青釉铜柄提梁壶茶具</td>
        <td>YYA-00002</td>
        <td>2</td>
        <td><div class="71" data-id="71"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',71, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',71, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',71, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',71, this);"  />
</p></div></td>
        <td><div class="71" data-id="71"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',71, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',71, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',71, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',71, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>70</td>
        <td>三多纹木质如意</td>
        <td>ZHA-00003</td>
        <td>4</td>
        <td><div class="70" data-id="70"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',70, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',70, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',70, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',70, this);"  />
</p></div></td>
        <td><div class="70" data-id="70"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',70, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',70, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',70, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',70, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>69</td>
        <td>福禄寿木质如意</td>
        <td>ZHA-00002</td>
        <td>1</td>
        <td><div class="69" data-id="69"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',69, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',69, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',69, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',69, this);"  />
</p></div></td>
        <td><div class="69" data-id="69"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',69, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',69, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',69, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',69, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>68</td>
        <td>云龙纹木质如意</td>
        <td>ZHA-00001</td>
        <td>2</td>
        <td><div class="68" data-id="68"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',68, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',68, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',68, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',68, this);"  />
</p></div></td>
        <td><div class="68" data-id="68"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',68, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',68, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',68, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',68, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>67</td>
        <td>海错图水杯-鹿鱼化鹿</td>
        <td>YYA-00015</td>
        <td>19</td>
        <td><div class="67" data-id="67"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',67, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',67, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',67, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',67, this);"  />
</p></div></td>
        <td><div class="67" data-id="67"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',67, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',67, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',67, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',67, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>66</td>
        <td>海错图水杯-魚卓鱼</td>
        <td>YYA-00014</td>
        <td>19</td>
        <td><div class="66" data-id="66"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',66, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',66, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',66, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',66, this);"  />
</p></div></td>
        <td><div class="66" data-id="66"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',66, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',66, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',66, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',66, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>65</td>
        <td>海错图水杯-火鸠和海鹄</td>
        <td>YYA-00012</td>
        <td>18</td>
        <td><div class="65" data-id="65"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',65, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',65, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',65, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',65, this);"  />
</p></div></td>
        <td><div class="65" data-id="65"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',65, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',65, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',65, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',65, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>64</td>
        <td>珠光宝气方巾-灰色</td>
        <td>SCA-00041</td>
        <td>1</td>
        <td><div class="64" data-id="64"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',64, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',64, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',64, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',64, this);"  />
</p></div></td>
        <td><div class="64" data-id="64"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',64, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',64, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',64, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',64, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>63</td>
        <td>皇帝服饰雨伞（紫色）</td>
        <td>ZHA-00027</td>
        <td>81</td>
        <td><div class="63" data-id="63"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',63, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',63, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',63, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',63, this);"  />
</p></div></td>
        <td><div class="63" data-id="63"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',63, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',63, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',63, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',63, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>62</td>
        <td>十二美人图雨伞（橘）</td>
        <td>ZHA-00015</td>
        <td>50</td>
        <td><div class="62" data-id="62"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',62, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',62, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',62, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',62, this);"  />
</p></div></td>
        <td><div class="62" data-id="62"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',62, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',62, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',62, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',62, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>61</td>
        <td>十二美人图雨伞（绿）</td>
        <td>ZHA-00014</td>
        <td>50</td>
        <td><div class="61" data-id="61"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',61, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',61, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',61, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',61, this);"  />
</p></div></td>
        <td><div class="61" data-id="61"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',61, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',61, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',61, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',61, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>60</td>
        <td>十二美人图雨伞（粉）</td>
        <td>ZHA-00013</td>
        <td>50</td>
        <td><div class="60" data-id="60"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',60, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',60, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',60, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',60, this);"  />
</p></div></td>
        <td><div class="60" data-id="60"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',60, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',60, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',60, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',60, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>59</td>
        <td>十二美人图雨伞（蓝）</td>
        <td>ZHA-00012</td>
        <td>50</td>
        <td><div class="59" data-id="59"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',59, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',59, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',59, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',59, this);"  />
</p></div></td>
        <td><div class="59" data-id="59"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',59, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',59, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',59, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',59, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>58</td>
        <td>吉字茶具</td>
        <td>YYA-00003</td>
        <td>3</td>
        <td><div class="58" data-id="58"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',58, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',58, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',58, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',58, this);"  />
</p></div></td>
        <td><div class="58" data-id="58"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',58, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',58, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',58, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',58, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>57</td>
        <td>5头胭脂红马蹄盖碗茶具</td>
        <td>YYA-00020</td>
        <td>7</td>
        <td><div class="57" data-id="57"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',57, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',57, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',57, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',57, this);"  />
</p></div></td>
        <td><div class="57" data-id="57"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',57, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',57, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',57, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',57, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>56</td>
        <td>7头青釉镂空茶具</td>
        <td>YYA-00009</td>
        <td>1</td>
        <td><div class="56" data-id="56"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',56, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',56, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',56, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',56, this);"  />
</p></div></td>
        <td><div class="56" data-id="56"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',56, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',56, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',56, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',56, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>55</td>
        <td>海错图水杯-飞鱼</td>
        <td>YYA-00016</td>
        <td>20</td>
        <td><div class="55" data-id="55"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',55, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',55, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',55, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',55, this);"  />
</p></div></td>
        <td><div class="55" data-id="55"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',55, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',55, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',55, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',55, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>54</td>
        <td>海错图水杯-铜盆鱼</td>
        <td>YYA-00035</td>
        <td>36</td>
        <td><div class="54" data-id="54"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',54, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',54, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',54, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',54, this);"  />
</p></div></td>
        <td><div class="54" data-id="54"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',54, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',54, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',54, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',54, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>53</td>
        <td>海错图水杯-钱串串鱼</td>
        <td>YYA-00018</td>
        <td>35</td>
        <td><div class="53" data-id="53"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',53, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',53, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',53, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',53, this);"  />
</p></div></td>
        <td><div class="53" data-id="53"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',53, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',53, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',53, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',53, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>52</td>
        <td>海错图水杯-红鱼</td>
        <td>YYA-00017</td>
        <td>25</td>
        <td><div class="52" data-id="52"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',52, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',52, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',52, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',52, this);"  />
</p></div></td>
        <td><div class="52" data-id="52"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',52, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',52, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',52, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',52, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>51</td>
        <td>天穹伞（黑）</td>
        <td>ZHA-00031</td>
        <td>254</td>
        <td><div class="51" data-id="51"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',51, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',51, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',51, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',51, this);"  />
</p></div></td>
        <td><div class="51" data-id="51"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',51, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',51, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',51, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',51, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>50</td>
        <td>天穹伞（红）</td>
        <td>ZHA-00030</td>
        <td>255</td>
        <td><div class="50" data-id="50"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',50, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',50, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',50, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',50, this);"  />
</p></div></td>
        <td><div class="50" data-id="50"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',50, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',50, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',50, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',50, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>49</td>
        <td>缠枝莲一盖四杯</td>
        <td>YYA-00034</td>
        <td>3</td>
        <td><div class="49" data-id="49"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',49, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',49, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',49, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',49, this);"  />
</p></div></td>
        <td><div class="49" data-id="49"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',49, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',49, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',49, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',49, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>48</td>
        <td>福寿有余卧香炉</td>
        <td>TQA-00026</td>
        <td>5</td>
        <td><div class="48" data-id="48"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',48, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',48, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',48, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',48, this);"  />
</p></div></td>
        <td><div class="48" data-id="48"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',48, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',48, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',48, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',48, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>47</td>
        <td>缠枝喜莲炉</td>
        <td>TQA-00025</td>
        <td>9</td>
        <td><div class="47" data-id="47"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',47, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',47, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',47, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',47, this);"  />
</p></div></td>
        <td><div class="47" data-id="47"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',47, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',47, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',47, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',47, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>46</td>
        <td>万寿金菊炉</td>
        <td>TQA-00022</td>
        <td>7</td>
        <td><div class="46" data-id="46"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',46, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',46, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',46, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',46, this);"  />
</p></div></td>
        <td><div class="46" data-id="46"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',46, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',46, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',46, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',46, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>45</td>
        <td>双喜福祥炉</td>
        <td>TQA-00021</td>
        <td>7</td>
        <td><div class="45" data-id="45"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',45, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',45, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',45, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',45, this);"  />
</p></div></td>
        <td><div class="45" data-id="45"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',45, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',45, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',45, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',45, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>44</td>
        <td>七星高照闲云壶-绿色</td>
        <td>TQA-00020</td>
        <td>9</td>
        <td><div class="44" data-id="44"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',44, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',44, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',44, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',44, this);"  />
</p></div></td>
        <td><div class="44" data-id="44"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',44, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',44, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',44, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',44, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>43</td>
        <td>七星高照闲云壶-黄色</td>
        <td>TQA-00019</td>
        <td>9</td>
        <td><div class="43" data-id="43"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',43, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',43, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',43, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',43, this);"  />
</p></div></td>
        <td><div class="43" data-id="43"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',43, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',43, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',43, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',43, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>42</td>
        <td>乾隆十骏犬之菇黄豹</td>
        <td>TQA-00018</td>
        <td>1</td>
        <td><div class="42" data-id="42"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',42, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',42, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',42, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',42, this);"  />
</p></div></td>
        <td><div class="42" data-id="42"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',42, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',42, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',42, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',42, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>41</td>
        <td>金猴献瑞儿童套碗</td>
        <td>TQA-00014</td>
        <td>19</td>
        <td><div class="41" data-id="41"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',41, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',41, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',41, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',41, this);"  />
</p></div></td>
        <td><div class="41" data-id="41"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',41, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',41, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',41, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',41, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>40</td>
        <td>龙钮三足熏炉</td>
        <td>TQA-00013</td>
        <td>4</td>
        <td><div class="40" data-id="40"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',40, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',40, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',40, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',40, this);"  />
</p></div></td>
        <td><div class="40" data-id="40"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',40, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',40, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',40, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',40, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>39</td>
        <td>菊醉丰华壶</td>
        <td>TQA-00012</td>
        <td>2</td>
        <td><div class="39" data-id="39"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',39, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',39, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',39, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',39, this);"  />
</p></div></td>
        <td><div class="39" data-id="39"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',39, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',39, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',39, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',39, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>38</td>
        <td>旺家牛</td>
        <td>TQA-00011</td>
        <td>4</td>
        <td><div class="38" data-id="38"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',38, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',38, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',38, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',38, this);"  />
</p></div></td>
        <td><div class="38" data-id="38"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',38, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',38, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',38, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',38, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>37</td>
        <td>鹿喜人间</td>
        <td>TQA-00010</td>
        <td>1</td>
        <td><div class="37" data-id="37"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',37, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',37, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',37, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',37, this);"  />
</p></div></td>
        <td><div class="37" data-id="37"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',37, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',37, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',37, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',37, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>36</td>
        <td>菊花碟</td>
        <td>TQA-00009</td>
        <td>1</td>
        <td><div class="36" data-id="36"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',36, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',36, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',36, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',36, this);"  />
</p></div></td>
        <td><div class="36" data-id="36"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',36, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',36, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',36, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',36, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>35</td>
        <td>崭露头角</td>
        <td>TQA-00007</td>
        <td>2</td>
        <td><div class="35" data-id="35"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',35, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',35, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',35, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',35, this);"  />
</p></div></td>
        <td><div class="35" data-id="35"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',35, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',35, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',35, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',35, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>34</td>
        <td>逐鹿顺意（小）</td>
        <td>TQA-00006</td>
        <td>1</td>
        <td><div class="34" data-id="34"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',34, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',34, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',34, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',34, this);"  />
</p></div></td>
        <td><div class="34" data-id="34"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',34, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',34, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',34, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',34, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>33</td>
        <td>小团圆</td>
        <td>TQA-00004</td>
        <td>5</td>
        <td><div class="33" data-id="33"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',33, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',33, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',33, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',33, this);"  />
</p></div></td>
        <td><div class="33" data-id="33"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',33, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',33, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',33, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',33, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>32</td>
        <td>功夫鸡祥套装</td>
        <td>TQA-00003</td>
        <td>9</td>
        <td><div class="32" data-id="32"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',32, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',32, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',32, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',32, this);"  />
</p></div></td>
        <td><div class="32" data-id="32"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',32, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',32, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',32, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',32, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>31</td>
        <td>五蝠捧寿盘</td>
        <td>TQA-00002</td>
        <td>3</td>
        <td><div class="31" data-id="31"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',31, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',31, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',31, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',31, this);"  />
</p></div></td>
        <td><div class="31" data-id="31"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',31, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',31, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',31, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',31, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>30</td>
        <td>双喜临门盘</td>
        <td>TQA-00001</td>
        <td>15</td>
        <td><div class="30" data-id="30"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',30, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',30, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',30, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',30, this);"  />
</p></div></td>
        <td><div class="30" data-id="30"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',30, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',30, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',30, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',30, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>29</td>
        <td>荷意年年方巾    （蓝色）</td>
        <td>SCA-00014</td>
        <td>83</td>
        <td><div class="29" data-id="29"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',29, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',29, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',29, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',29, this);"  />
</p></div></td>
        <td><div class="29" data-id="29"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',29, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',29, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',29, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',29, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>28</td>
        <td>荷意年年方巾    （深灰）</td>
        <td>SCA-00013</td>
        <td>81</td>
        <td><div class="28" data-id="28"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',28, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',28, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',28, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',28, this);"  />
</p></div></td>
        <td><div class="28" data-id="28"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',28, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',28, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',28, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',28, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>27</td>
        <td>荷意年年方巾（红）</td>
        <td>SCA-00012</td>
        <td>84</td>
        <td><div class="27" data-id="27"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',27, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',27, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',27, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',27, this);"  />
</p></div></td>
        <td><div class="27" data-id="27"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',27, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',27, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',27, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',27, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>26</td>
        <td>如意糖果盒-海水江崖</td>
        <td>SCA-00010</td>
        <td>40</td>
        <td><div class="26" data-id="26"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',26, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',26, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',26, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',26, this);"  />
</p></div></td>
        <td><div class="26" data-id="26"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',26, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',26, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',26, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',26, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>25</td>
        <td>如意糖果盒-夔龙八大晕</td>
        <td>SCA-00009</td>
        <td>40</td>
        <td><div class="25" data-id="25"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',25, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',25, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',25, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',25, this);"  />
</p></div></td>
        <td><div class="25" data-id="25"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',25, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',25, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',25, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',25, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>24</td>
        <td>如意纸巾盒-夔龙八大晕</td>
        <td>SCA-00008</td>
        <td>39</td>
        <td><div class="24" data-id="24"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',24, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',24, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',24, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',24, this);"  />
</p></div></td>
        <td><div class="24" data-id="24"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',24, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',24, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',24, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',24, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>23</td>
        <td>鹤舞青松丝巾-砖红色</td>
        <td>SCA-00007</td>
        <td>4</td>
        <td><div class="23" data-id="23"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',23, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',23, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',23, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',23, this);"  />
</p></div></td>
        <td><div class="23" data-id="23"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',23, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',23, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',23, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',23, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>22</td>
        <td>织锦化妆包—齐梅祝寿（小）</td>
        <td>SCA-00006</td>
        <td>180</td>
        <td><div class="22" data-id="22"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',22, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',22, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',22, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',22, this);"  />
</p></div></td>
        <td><div class="22" data-id="22"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',22, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',22, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',22, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',22, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>21</td>
        <td>织锦化妆包—齐梅祝寿（大）</td>
        <td>SCA-00005</td>
        <td>185</td>
        <td><div class="21" data-id="21"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',21, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',21, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',21, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',21, this);"  />
</p></div></td>
        <td><div class="21" data-id="21"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',21, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',21, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',21, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',21, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>20</td>
        <td>织锦加皮钱包—海水江崖（灰）</td>
        <td>SCA-00004</td>
        <td>185</td>
        <td><div class="20" data-id="20"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',20, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',20, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',20, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',20, this);"  />
</p></div></td>
        <td><div class="20" data-id="20"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',20, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',20, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',20, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',20, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>19</td>
        <td>织锦加皮钱包—海水江崖（金）</td>
        <td>SCA-00003</td>
        <td>182</td>
        <td><div class="19" data-id="19"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',19, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',19, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',19, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',19, this);"  />
</p></div></td>
        <td><div class="19" data-id="19"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',19, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',19, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',19, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',19, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>18</td>
        <td>如意纸巾盒—海水江崖（灰）</td>
        <td>SCA-00002</td>
        <td>39</td>
        <td><div class="18" data-id="18"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',18, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',18, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',18, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',18, this);"  />
</p></div></td>
        <td><div class="18" data-id="18"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',18, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',18, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',18, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',18, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>17</td>
        <td>织锦电脑包—海水江崖（灰）</td>
        <td>SCA-00001</td>
        <td>45</td>
        <td><div class="17" data-id="17"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',17, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',17, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',17, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',17, this);"  />
</p></div></td>
        <td><div class="17" data-id="17"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',17, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',17, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',17, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',17, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>16</td>
        <td>我佛慈悲</td>
        <td>YYA-00029</td>
        <td>67</td>
        <td><div class="16" data-id="16"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',16, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',16, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',16, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',16, this);"  />
</p></div></td>
        <td><div class="16" data-id="16"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',16, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',16, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',16, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',16, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>15</td>
        <td>如意琉璃压花名片夹</td>
        <td>ZHA-00021</td>
        <td>26</td>
        <td><div class="15" data-id="15"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',15, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',15, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',15, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',15, this);"  />
</p></div></td>
        <td><div class="15" data-id="15"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',15, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',15, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',15, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',15, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>14</td>
        <td>如意琉璃压花护照夹</td>
        <td>ZHA-00020</td>
        <td>24</td>
        <td><div class="14" data-id="14"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',14, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',14, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',14, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',14, this);"  />
</p></div></td>
        <td><div class="14" data-id="14"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',14, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',14, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',14, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',14, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>13</td>
        <td>海水江崖压花名片夹</td>
        <td>ZHA-00018</td>
        <td>32</td>
        <td><div class="13" data-id="13"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',13, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',13, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',13, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',13, this);"  />
</p></div></td>
        <td><div class="13" data-id="13"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',13, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',13, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',13, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',13, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>12</td>
        <td>海水江崖压花护照夹</td>
        <td>ZHA-00017</td>
        <td>10</td>
        <td><div class="12" data-id="12"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',12, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',12, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',12, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',12, this);"  />
</p></div></td>
        <td><div class="12" data-id="12"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',12, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',12, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',12, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',12, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>11</td>
        <td>故宫宫门钱包</td>
        <td>ZHA-00016</td>
        <td>89</td>
        <td><div class="11" data-id="11"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',11, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',11, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',11, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',11, this);"  />
</p></div></td>
        <td><div class="11" data-id="11"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',11, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',11, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',11, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',11, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>10</td>
        <td>故宫宫门钥匙扣</td>
        <td>ZHA-00026</td>
        <td>72</td>
        <td><div class="10" data-id="10"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',10, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',10, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',10, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',10, this);"  />
</p></div></td>
        <td><div class="10" data-id="10"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',10, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',10, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',10, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',10, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>9</td>
        <td>团扇（直柄竹丝圆扇-虞美人与蝴蝶）</td>
        <td>ZHA-00024</td>
        <td>44</td>
        <td><div class="9" data-id="9"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',9, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',9, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',9, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',9, this);"  />
</p></div></td>
        <td><div class="9" data-id="9"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',9, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',9, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',9, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',9, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>8</td>
        <td>团扇（直柄竹丝圆扇）-荷花与慈姑花</td>
        <td>ZHA-00023</td>
        <td>34</td>
        <td><div class="8" data-id="8"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',8, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',8, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',8, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',8, this);"  />
</p></div></td>
        <td><div class="8" data-id="8"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',8, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',8, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',8, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',8, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>7</td>
        <td>团扇（罗汉竹柄芭蕉扇）-罂栗花</td>
        <td>ZHA-00011</td>
        <td>36</td>
        <td><div class="7" data-id="7"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',7, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',7, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',7, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',7, this);"  />
</p></div></td>
        <td><div class="7" data-id="7"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',7, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',7, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',7, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',7, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>6</td>
        <td>团扇（罗汉竹柄芭蕉扇）-石竹</td>
        <td>ZHA-00010</td>
        <td>44</td>
        <td><div class="6" data-id="6"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',6, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',6, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',6, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',6, this);"  />
</p></div></td>
        <td><div class="6" data-id="6"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',6, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',6, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',6, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',6, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>5</td>
        <td>溪茗壶</td>
        <td>YYA-00028</td>
        <td>47</td>
        <td><div class="5" data-id="5"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',5, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',5, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',5, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',5, this);"  />
</p></div></td>
        <td><div class="5" data-id="5"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',5, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',5, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',5, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',5, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>4</td>
        <td>福海茶具</td>
        <td>TQA-00028</td>
        <td>3</td>
        <td><div class="4" data-id="4"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',4, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',4, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',4, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',4, this);"  />
</p></div></td>
        <td><div class="4" data-id="4"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',4, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',4, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',4, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',4, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>3</td>
        <td>紫禁城铜笔</td>
        <td>TQA-00027</td>
        <td>15</td>
        <td><div class="3" data-id="3"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',3, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',3, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',3, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',3, this);"  />
</p></div></td>
        <td><div class="3" data-id="3"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',3, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',3, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',3, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',3, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>2</td>
        <td>满庭芳枕套-蓝色</td>
        <td>SCA-00031</td>
        <td>30</td>
        <td><div class="2" data-id="2"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',2, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',2, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',2, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',2, this);"  />
</p></div></td>
        <td><div class="2" data-id="2"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',2, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',2, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',2, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',2, this);"  />
%</p></div></td>
      </tr>
            <tr>
        <td>1</td>
        <td>满庭芳枕套-粉色</td>
        <td>SCA-00030</td>
        <td>29</td>
        <td><div class="1" data-id="1"><p>有赞&nbsp;&nbsp;&nbsp;<input name="weights_yz" type="text" id="weights_yz" size="5" value="1"   onBlur="javascript:upWei('yz',1, this);"  />
</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="weights_xhs" type="text" id="weights_xhs" size="5" value="1"   onBlur="javascript:upWei('xhs',1, this);"  />
</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="weights_h5" type="text" id="weights_h5" size="5" value="1"   onBlur="javascript:upWei('h5',1, this);"  />
</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="weights_kzsc" type="text" id="weights_kzsc" size="5" value="0"   onBlur="javascript:upWei('kzsc',1, this);"  />
</p></div></td>
        <td><div class="1" data-id="1"><p>有赞&nbsp;&nbsp;&nbsp;<input name="proportion_yz" type="text" id="proportion_yz" size="5" value="33"   onBlur="javascript:up('yz',1, this);"  />
%</p><p>小红书&nbsp;&nbsp;&nbsp;<input name="proportion_xhs" type="text" id="proportion_xhs" size="5" value="33"   onBlur="javascript:up('xhs',1, this);"  />
%</p><p>H5自有站&nbsp;&nbsp;&nbsp;<input name="proportion_h5" type="text" id="proportion_h5" size="5" value="33"   onBlur="javascript:up('h5',1, this);"  />
%</p><p>空中网商城&nbsp;&nbsp;&nbsp;<input name="proportion_kzsc" type="text" id="proportion_kzsc" size="5" value="0"   onBlur="javascript:up('kzsc',1, this);"  />
%</p></div></td>
      </tr>
          </tbody>
    <tr>
      <td colspan="7" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
<span class="">下一页</span>&nbsp;<span class="">尾页</span>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=Channels_commoditys_channel_inventory&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option></select>&nbsp;页&nbsp;共1页&nbsp;99条</td>
    </tr>
  </table>
</form>
<script>
function up(ch, ids, obj){
    var sendUrl = "/ajax.jsp?action=manage_getCommoditys&exec=up_channel_inventory_proportion&ids="+ids+"&ch="+ch+"&pro="+$(obj).val();
		console.log("url="+sendUrl);
    $.ajax({
        url: sendUrl,
        type: "get",
        beforeSend: function(XMLHttpRequest){}, 
        success: function(res) {
//				if(res==AJAX_FAILED){
//					alert('总数超过100%，请重新设置');
//				}else{
//					alert('设置成功');
//				}
		},
			complete:function(XMLHttpRequest,textStatus){}
    });
}
function upWei(ch, ids, obj){
    var sendUrl = "/ajax.jsp?action=manage_getCommoditys&exec=up_channel_inventory_weights&ids="+ids+"&ch="+ch+"&wei="+$(obj).val();
		console.log("url="+sendUrl);
    $.ajax({
        url: sendUrl,
        type: "get",
        beforeSend: function(XMLHttpRequest){}, 
        success: function(res) {
//				if(res==AJAX_FAILED){
//					alert('总数超过100%，请重新设置');
//				}else{
//					alert('设置成功');
//				}
		},
			complete:function(XMLHttpRequest,textStatus){}
    });
}
</script>
 </div>
</div>
</body>
<script>
$(function(){
	$('#Channels').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>