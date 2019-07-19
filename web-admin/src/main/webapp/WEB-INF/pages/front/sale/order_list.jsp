<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>

    <script type="text/javascript" src="mvcjs/sale/order_list.js"></script>
    <title>博物馆电商 订单列表</title>
</head>

<%!
    public static final String ORDER_MODIFY = "pages/front/sale/preEditOrder.action" ;
%>
<body role="document">

<div id="mainDiv">
    <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">
        <div style="width: 98%; margin-left: 1%;">
            <form name="form_simple" id="form_simple" method="post" action="pages/front/sale/order_list_search.action">
                <input type="hidden" name="action" id="action" value="main">
                <input type="hidden" name="exec" id="exec" value="Marketing_orderss">
                <table class="table table-hover table-bordered">
                    <tbody>

                    <tr>
                        <td style="text-align:left; vertical-align:bottom;">
                            <div class="form-group">
                                <label class="col-md-2" for="oid">搜索订单号：</label>
                                <div class="col-md-10">
                                    <input type="input" class="form-control" id="oid" name="oid" value=""
                                           placeholder="Index Search">
                                </div>
                            </div>
                        </td>
                        <td style="text-align:left; vertical-align:bottom;">
                            <div class="form-group">
                                <label class="col-md-2" for="uaddr">姓名/手机号：</label>
                                <div class="col-sm-5"><input name="uaddr" type="text" id="uaddr" size="50" value=""
                                                             class="form-control"/>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left; vertical-align:bottom;">
                            <div class="form-group">
                                <label class="col-md-2" for="gid">商品ID：</label>
                                <div class="col-sm-5"><input name="gid" type="text" id="gid" size="50" value=""
                                                             class="form-control"/>
                                </div>
                            </div>
                        </td>
                        <td style="text-align:left; vertical-align:bottom;">
                            <div class="form-group">
                                <label class="col-md-2" for="sdate">时间范围：</label>
                                <div class="col-md-10 form-inline">
                                    <input name="sdate" type="date" id="sdate" size="20" value="2019-06-23"/>
                                    至<input name="edate" type="date" id="edate" size="20" value="2019-06-26"/>
                                    &nbsp;&nbsp;&nbsp;<input type="button" name="button" id="button" value="近七天"
                                                             onClick="selectDay('2019-06-19|2019-06-26');">&nbsp;&nbsp;&nbsp;<input
                                        type="button" name="button" id="" value="近三十天"
                                        onClick="selectDay('2019-05-27|2019-06-26');">
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left; vertical-align:bottom;">
                            <div class="form-group">
                                <label class="col-md-2" for="state">订单状态：</label>
                                <div id="state_div" class="col-sm-3">
                                    <select name="state" id="state" class="form-control">
                                    <option value="">请选择</option>
                                    <option value="-9">用户删除</option>
                                    <option value="-1">关闭/退换</option>
                                    <option value="0"><font color="#A00000">未发货</font></option>
                                    <option value="1">确认</option>
                                    <option value="2">已发货</option>
                                    <option value="3">已收货</option>
                                    <option value="4">退货</option>
                                    <option value="5">换货</option>
                                    <option value="9">确认收货</option>
                                </select></div>

                            </div>
                        </td>
                        <td style="text-align:left; vertical-align:bottom;">
                            <div class="form-group">
                                <label class="col-md-2" for="paystate">支付状态：</label>
                                <div id="pay_state_div" class="col-sm-3">
                                    <select name="paystate" id="paystate"
                                                                                 class="form-control">
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
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left; vertical-align:bottom;">
                            <div class="form-group">
                                <label class="col-md-2" for="order_child_id_div">订单渠道：</label>
                                <div id="order_child_id_div" class="col-sm-3">
                                    <select name="order_channel_id" id="order_channel_id" class="form-control">
                                    <option value="">请选择</option>
                                    <option value="B1001">官方H5</option>
                                    <option value="B1002">微信小程序</option>
                                </select></div>

                            </div>
                        </td>
                        <td style="text-align:left; vertical-align:bottom;">
                            <div class="form-group">
                                <label class="col-md-2" for="filter_test">过滤测试：</label>
                                <input name="filter_test" type="radio"  value="0" checked/>否&nbsp;&nbsp;&nbsp;<input
                                    name="filter_test" type="radio" id="filter_test" value="1"/>是
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left; vertical-align:bottom;">
                            <div class="form-group">
                                <label class="col-md-2" for="lineSize">个/页：</label>
                                <div class="col-md-2">
                                    <input type="number" class="form-control" id="lineSize" name="lineSize" value="20" min="20"
                                           max="500" step="20">
                                </div>
                            </div>
                        </td>
                        <td style="text-align:left; vertical-align:bottom;"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center" valign="middle">
                            <input type="submit" name="submit" id="submit" value="查询" class="btn btn-success"/>
                            <%--<button id="seach" name="seach" class="btn btn-success" value="">查询</button>--%>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
        <form name="form_list" id="form_list" class="form-inline" role="form" method="POST" action=""
              onsubmit="javascript:return confirm('你确定执行该操作吗!!!');">
            <table width="98%" class="table table-striped table-hover table-bordered">
                <thead>
                <tr>
                    <td colspan="11" align="center" valign="middle"><input type="checkbox"
                                                                           onClick="javascript:allcheckbox(this, 'id[]');">全选&nbsp;&nbsp;&nbsp;<input
                            type="button" name="fileout" id="fileout" value="导出" onClick="javascript:outXML();"
                            class="btn btn-info"/></td>
                </tr>
                <tr>
                    <td colspan="11" align="center" valign="middle"><span class="">首页</span>&nbsp;<span
                            class="">上一页</span>[<span class="">1</span>]
                        [<a href="/manage.jsp?action=main&exec=Marketing_orderss&page=2">2</a>]
                        [<a href="/manage.jsp?action=main&exec=Marketing_orderss&page=3">3</a>]
                        [<a href="/manage.jsp?action=main&exec=Marketing_orderss&page=4">4</a>]
                        <a href="/manage.jsp?action=main&exec=Marketing_orderss&page=2">下一页</a>&nbsp;<a
                                href="/manage.jsp?action=main&exec=Marketing_orderss&page=77">尾页</a>&nbsp;转到第&nbsp;<select
                                name="PB_Page_Select"
                                onChange="window.location.href='/manage.jsp?action=main&exec=Marketing_orderss&page='+this.options[this.selectedIndex].value">
                            <option value="1" selected>1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>&nbsp;页&nbsp;共5页&nbsp;1537条
                    </td>
                </tr>
                <tr style="font-weight:bold;">
                    <td>id</td>
                    <td>支付订单号</td>
                    <td>订单号</td>
                    <td>下单渠道</td>
                    <td>商品</td>
                    <td>订单状态</td>
                    <td>支付状态</td>
                    <td>支付渠道</td>
                    <td>订单时间</td>
                    <td>修改时间</td>
                    <td>操作人员</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${allOrders}" var="orders" >
                <tr>
                    <td><input name="id[]" type="checkbox" id="id[]" value="16550"/>&nbsp;&nbsp;<b><a
                            href="?action=main&exec=Marketing_orderss&fun=viewEdit&id=16550">${orders.id}</a></b></td>
                    <td>${orders.payid}</td>
                    <td><span id="${orders.oid}"><a href="<%=ORDER_MODIFY%>?oid=${orders.oid}">${orders.oid}</a></span></td>
                    <td>${orders.channel}</td>
                    <td>商品：金猴献瑞儿童套碗&nbsp;|&nbsp;数量：1&nbsp;|&nbsp;单价：265.00&nbsp;|&nbsp;颜色：金&nbsp;|&nbsp;规格：付款后45天发货<br/>
                    </td>
                    <td>${orders.state}</td>
                    <td><font color="#A00000">${order.paystate}</font></td>
                    <td>${orders.payment}</td>
                    <td>${orders.createdate}</td>
                    <td>${orders.editdate}</td>
                    <td>小王</td>
                </tr>
                </c:forEach>
                </tbody>
                <tr>
                    <td colspan="11" align="center" valign="middle"><span class="">首页</span>&nbsp;<span
                            class="">上一页</span>[<span class="">1</span>]
                        [<a href="/manage.jsp?action=main&exec=Marketing_orderss&page=2">2</a>]
                        [<a href="/manage.jsp?action=main&exec=Marketing_orderss&page=3">3</a>]
                        [<a href="/manage.jsp?action=main&exec=Marketing_orderss&page=4">4</a>]
                        <a href="/manage.jsp?action=main&exec=Marketing_orderss&page=2">下一页</a>&nbsp;<a
                                href="/manage.jsp?action=main&exec=Marketing_orderss&page=77">尾页</a>&nbsp;转到第&nbsp;<select
                                name="PB_Page_Select"
                                onChange="window.location.href='/manage.jsp?action=main&exec=Marketing_orderss&page='+this.options[this.selectedIndex].value">
                            <option value="1" selected>1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>&nbsp;页&nbsp;共5页&nbsp;100条
                    </td>
                </tr>
                <tr>
                    <td colspan="11" align="center" valign="middle"><input type="checkbox"
                                                                           onClick="javascript:allcheckbox(this, 'id[]');">全选&nbsp;&nbsp;&nbsp;<input
                            type="button" name="out" id="out" value="导出" onClick="javascript:outXML();"
                            class="btn btn-info"/></td>
                </tr>
            </table>
        </form>
        <script>
            function selectDay(dateLimit) {
                var _tmp = dateLimit.split('|');
                $("#sdate").val(_tmp[0]);
                $("#edate").val(_tmp[1]);
                $('#form_simple').submit();
            }

            function allcheckbox(allObj, name) {
                var chk = document.getElementsByName(name);
                var _tmp = [];
                for (i = 0; i < chk.length; i++) {
                    chk[i].checked = allObj.checked;
                }
            }

            var checkbox = [];

            function getData() {
                var sendUrl = "/ajax.jsp?action=manage_getOrderss&index=" + checkbox.join('|');
                console.log('sendUrl=' + sendUrl);
                $.ajax({
                    type: 'GET',
                    url: sendUrl,
                    dataType: 'html',
                    async: false,
                    success: function (data) {
                        console.log("data=" + data);
                        if (data) {
                            window.location.href = data;
                        } else {
                        }
                    },
                    error: function (xhr, type) {
                    }
                });
            }

            function outXML() {
                var list = $("input[name='id[]']:checked");
                checkbox = [];
                list.each(function () {
                    if ($(this).is(':checked')) {
                        checkbox.push($(this).val());
                    }
                });
                console.log('checkbox=' + checkbox);
                if (checkbox.length > 0) {
                    getData();
                }
            }
        </script>


    </div>
</div>
</body>
<script>
    $(function () {
        $('#Marketing').addClass('active');
    });
    $('#myModal').modal({
        backdrop: "static",
        show: false
    })
</script>
</html>