<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
    <title>博物馆订单管理</title>
</head>

<%!
    public static final String ORDER_MODIFY = "pages/front/sale/order_modify.action" ;
%>
<body role="document">

<div id="mainDiv">
    <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">

        <form action="<%=ORDER_MODIFY%>" method="get" name="viewEdit" id="viewEdit">
            <table width="98%" class="table table-striped table-hover table-bordered">
                <thead>
                <tr>
                    <td colspan="2" align="center">订单详细信息</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>id</td>
                    <td>
                        <div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="${preEditOrder.id}" class="form-control" readonly/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>购买用户</td>
                    <td>
                            <div class="col-sm-5"><input name="uid" type="text" id="uid" size="10" value="${preEditOrder.mid}" class="form-control" readonly/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>支付订单号</td>
                    <td>
                        <div class="col-sm-5"><input name="payid" type="text" id="payid" size="50"
                                                     value="${preEditOrder.payid}" class="form-control" readonly/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>订单号</td>
                    <td>
                        <div class="col-sm-5"><input name="oid" type="text" id="oid" size="50"
                                                     value="${preEditOrder.oid}" class="form-control" readonly/>

                        </div>
                    </td>
                </tr>
                <tr>
                    <td>订单类型</td>
                    <td>
                        <div id="order_cls_div" class="col-sm-3">
                            <select name="ordertype" id="ordertype" class="form-control" >
                                <option value="">请选择</option>
                                <c:forEach items="${allOrderType}" var="orderType">
                                    <option	value="${orderType.id}" ${orderType.id==preEditOrder.ordertype ? "selected='selected' ":''}>
                                            ${orderType.title}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>商品信息</td>
                    <td>商品：金猴献瑞儿童套碗&nbsp;|&nbsp;数量：1&nbsp;|&nbsp;单价：265.00&nbsp;|&nbsp;颜色：金&nbsp;|&nbsp;规格：付款后45天发货<br/>
                    </td>
                </tr>
                <tr>
                    <td>用户备注</td>
                    <td>
                        <div class="col-sm-5"><input name="user_remarks" type="text" id="user_remarks" size="100" value="" class="form-control"/>

                        </div>
                    </td>
                </tr>
                <tr>
                    <td>订单状态</td>
                    <td>
                        <div id="state_div" class="col-sm-3">
                            <select name="state" id="state"  class="form-control" >
                                <option value="">请选择</option>

                                <c:forEach items="${allOrders_state}" var="orderstate">
                                    <option value="0" <c:if test="${preEditOrder.state==orderstate.id}">
                                        selected</c:if>>${orderstate.title}
                                    </option>
                                </c:forEach>
                                <%--<option value="-9">用户删除</option>
                                <option value="-1">关闭/退换</option>
                                <option value="0"><font color="#A00000">未发货</font></option>
                                <option value="0" <c:if test="${preEditOrder.ordertype==0}">
                                    selected</c:if>>确认
                                </option>
                                <option value="2">已发货</option>
                                <option value="3">已收货</option>
                                <option value="4">退货</option>
                                <option value="5">换货</option>
                                <option value="9">确认收货</option> --%>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>支付渠道</td>
                    <td>
                        <div id="pay_source_div" class="col-sm-3">
                            <select name="pay_source" id="pay_source" class="form-control">
                            <option value="">请选择</option>
                                <c:forEach items="${allPayChannel}" var="paychannel">
                                    <option value="0" <c:if test="${preEditOrder.paychannel==paychannel.id}">
                                        selected</c:if>>${paychannel.title}
                                    </option>
                                </c:forEach>
                            <%--<option value="1" selected>微信</option>
                            <option value="2">支付宝</option>
                            <option value="3">银行卡</option>
                            <option value="9">模拟测试</option>--%>
                        </select></div>
                    </td>
                </tr>
                <tr>
                    <td>支付方式</td>
                    <td>
                        <div id="pay_type_div" class="col-sm-3"><select name="pay_type" id="pay_type"
                                                                        class="form-control">
                            <option value="">请选择</option>
                            <%--<c:forEach items="${allPayState}" var="paystate">
                                <option value="0" <c:if test="${preEditOrder.paystate==paystate.id}">
                                    selected</c:if>>${paystate.title}
                                </option>
                            </c:forEach>--%>
                            <option value="1" selected>在线</option>
                            <option value="2">汇款</option>
                            <option value="3">转账</option>
                            <option value="4">到付</option>
                        </select></div>
                    </td>
                </tr>
                <tr>
                    <td>支付状态</td>
                    <td>
                        <div id="pay_state_div" class="col-sm-3">
                            <select name="paystate" id="paystate" class="form-control">
                            <option value="">请选择</option>
                                <c:forEach items="${allPayState}" var="paystate">
                                    <option value="0" <c:if test="${preEditOrder.paystate==paystate.id}">
                                        selected</c:if>>${paystate.title}
                                    </option>
                                </c:forEach>
                            <%--<option value="-2">${allPayState.title}</option>
                            <option value="-2">退款中</option>
                            <option value="-1">申请退款</option>
                            <option value="0" selected><font color="#A00000">未支付</font></option>
                            <option value="1"><font color="#2E9200">已支付</font></option>
                            <option value="2">赠品</option>
                            <option value="3">免费</option>
                            <option value="9">已对账确认</option>--%>
                        </select></div>
                    </td>
                </tr>
                <tr>
                    <td>送货信息</td>
                    <td>
                        <div class="col-sm-5"><input name="name" type="text" id="name" size="50"
                                                     value="收货人：${preEditOrder.name}" class="form-control"/>
                        </div>
                        <div class="col-sm-5"><input name="phone" type="text" id="phone" size="50"
                                                     value="收货电话：${preEditOrder.phone}" class="form-control"/>
                        </div>
                        <div class="col-sm-5"><input name="addr" type="text" id="addr" size="50"
                                                     value="收货地址：${preEditOrder.addr}" class="form-control"/>
                        </div>
                    </td>
                </tr>
                <%--物流、优惠、支付信息  暂时未做--%>
                <tr>
                    <td>物流信息</td>
                    <td>单号：&nbsp;|&nbsp;服务商：EMS&nbsp;|&nbsp;方式：普通快递&nbsp;|&nbsp;运费：18&nbsp;|&nbsp;状态：未发出<br/></td>
                </tr>
                <tr>
                    <td>优惠信息</td>
                    <td></td>
                </tr>
                <tr>
                    <td>支付信息</td>
                    <td>商品总金额：265.00&nbsp;|&nbsp;应付金额：283.00&nbsp;|&nbsp;优惠金额：0.00&nbsp;|&nbsp;支付渠道：微信&nbsp;|&nbsp;支付方式：在线&nbsp;|&nbsp;实际支付金额：0.00&nbsp;|&nbsp;付款状态：<font
                            color="#A00000">未支付</font></td>
                </tr>

                <tr>
                    <td>发票信息</td>
                    <c:forEach items="${allInvoice}" var="invoice">
                    <td>抬头：${invoice.id}|&nbsp;内容：${invoice.name}|&nbsp;金额：${invoice.price}|&nbsp;税号：${invoice.num}|&nbsp;
                        </c:forEach>
                        <div id="_div" class="col-sm-3">
                            <select name="" id="" class="form-control">
                                <option value="">请选择</option>
                                <c:forEach items="${allInvoiceState}" var="invoicState">
                                    <option value="${invoicState.title}" ${invoicState.id==preEditOrder.invoiceState ? "selected='selected' ":''}>${invoicState.title}</option>
                                </c:forEach>
                                <%--<option value="1">未开</option>
                                <option value="2">已开</option>
                                <option value="3">换票</option>
                                <option value="4">退票</option>--%>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>订单备注</td>
                    <td>
                        <div class="col-sm-5"><textarea name="note" id="note" cols="15" rows="5"
                                                        class="form-control">${preEditOrder.note}</textarea>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>创建时间</td>
                    <td>${preEditOrder.createdate}</td>
                </tr>
                <tr>
                    <td>修改时间</td>
                    <td>${preEditOrder.editdate}</td>
                </tr>
                <tr>
                    <td>操作员</td>
                    <td>${preEditOrder.operator}</td>

                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success"/>
                        &nbsp;&nbsp;&nbsp;
                        <input type="button" name="Submit" id="back" value="返回" onClick="javascript:history.back();"
                               class="btn btn-default"/>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
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