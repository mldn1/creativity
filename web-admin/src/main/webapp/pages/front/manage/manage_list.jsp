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
    <input type="hidden" name="exec" id="exec" value="adminuser">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="key">搜索关键词：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="key" name="key" value=""
					placeholder="搜索关键词">
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
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-lg-2" for="state">状态：</label>
              <div class="col-lg-7">
                <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
<option value="">请选择</option>
<option value="0"><span style="color:#C00; font-weight:bold">关闭</span></option>
<option value="1" selected><span style="color:#3C0; font-weight:bold">打开</span></option>
<option value="9"><span style="color:#30F; font-weight:bold">置顶</span></option>
</select></div>

              </div>
            </div></td>
        </tr>        <tr>
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
        <td width="2%">id</td>
        <td width="13%">Email</td>
        <td width="6%">昵称</td>
        <td width="37%">级别</td>
        <td width="5%">状态</td>
        <td width="10%">登陆次数</td>
        <td width="12%">最后登陆IP</td>
        <td width="15%">最后登陆时间</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td><b><a href="pages/front/manage/manage_modify.jsp">21</a></b></td>
        <td><a href="pages/front/manage/manage_modify.jsp">xxx@abc.com</a></td>
        <td>xxx</td>
        <td>财务(2)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>3</td>
        <td>1.1.1.1</td>
        <td>2020-1-1 13:00 </td>
      </tr>
            <tr>
        <td><b><a href="pages/front/manage/manage_modify.jsp">20</a></b></td>
        <td><a href="pages/front/manage/manage_modify.jsp">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=36"></a></td>
        <td>xxx</td>
        <td>采购商(20)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>4</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=35">19</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=35"></a></td>
        <td>xxx</td>
        <td>经理(8)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>0</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=26">18</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=26"></a></td>
        <td>xxx</td>
        <td>经理(8)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>10</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=25">17</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=25"></a></td>
        <td>xxx</td>
        <td>高级管理员(0)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>10</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=24">16</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=24"></a></td>
        <td>xxx</td>
        <td>经理(8)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>89</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=22">15</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=22"></a></td>
        <td>xxx</td>
        <td>客服(30)，渠道(7)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>2</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=21">14</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=21"></a></td>
        <td>xxx</td>
        <td>客服(30)，商务(4)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>24</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=20">13</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=20"></a></td>
        <td>xxx</td>
        <td>经理(8)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>0</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=17">12</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=17"></a></td>
        <td>xxx</td>
        <td>商务(4)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>0</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=12">11</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=12"></a></td>
        <td>xxx</td>
        <td>编辑人员(1)，客服经理(3)，客服(30)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>321</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=9">8</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=9"></a></td>
        <td>xxx</td>
        <td>编辑人员(1)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>16</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=6">5</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=6"></a></td>
        <td>xxx人</td>
        <td>商务(4)，渠道(7)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>0</td>
        <td></td>
        <td></td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=4">4</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=4"></a></td>
        <td>xxxx</td>
        <td>财务(2)，客服经理(3)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>3</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=2">2</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=2"></a></td>
        <td>xxx</td>
        <td>经理(8)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>296</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
            <tr>
        <td><b><a href="?action=main&exec=adminuser&fun=viewEdit&id=1">1</a></b></td>
        <td><a href="?action=main&exec=adminuser&fun=viewEdit&id=37">xxx@abc.com</a><a href="?action=main&exec=adminuser&fun=viewEdit&id=1"></a></td>
        <td>xxx</td>
        <td>高级管理员(0)，</td>
        <td><span style="color:#3C0; font-weight:bold">打开</span></td>
        <td>362</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
          </tbody>
    <tr>
      <td colspan="9" align="center" valign="middle"><span class="">首页</span>&nbsp;<span class="">上一页</span>[<span class="">1</span>]
<span class="">下一页</span>&nbsp;<span class="">尾页</span>&nbsp;转到第&nbsp;<select name="PB_Page_Select" onChange="window.location.href='/manage.jsp?action=main&exec=adminuser&page='+this.options[this.selectedIndex].value"><option value="1" selected>1</option></select>&nbsp;页&nbsp;共1页&nbsp;16条&nbsp;&nbsp;&nbsp;<a href="pages/front/manage/manage_add.jsp" class="btn btn-primary">添加用户</a></td>
    </tr>
  </table>
</form>
 

</div>
</div>
</body>
<script>
$(function(){
	$('#adminuser').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>