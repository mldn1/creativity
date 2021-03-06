<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
    <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">

        <form action="pages/front/product/class_add_do.action" method="post" name="viewAdd"
              id="viewAdd">
            <table width="98%" class="table table-striped table-hover table-bordered">
                <thead>
                <tr>
                    <td colspan="2" align="center">详细信息</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>id</td>
                    <td>
                        <div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="${id}"
                                                     class="form-control" readonly/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>分类级别</td>
                    <td>
                        <div id="pid_div" class="col-sm-3"><select name="grade" id="grade" class="form-control">
                            <option value="">请选择</option>
                            <option value="0">一级类</option>
                            <c:forEach items="${categorys}" var="category">
                                <option value="${category.cid}">${category.title}</option>
                            </c:forEach>
                        </select></div>
                    </td>
                </tr>
                <tr>
                    <td>分类名称</td>
                    <td>
                        <div class="col-sm-5"><input name="title" type="text" id="title" size="50" value=""
                                                     class="form-control" required="required"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>分类ICON</td>
                    <td>
                        <div class="col-sm-5">
                            <textarea class="form-control" rows="3" id="icon" name="icon"></textarea>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td>分类排序</td>
                    <td>
                        <div class="col-sm-5"><input name="sort" type="text" id="sort" size="50" value="99"
                                                     class="form-control"/>
                        </div>
                        注：数字越小越靠前
                    </td>
                </tr>
                <tr>
                    <td>站点显示title</td>
                    <td>
                        <div class="col-sm-5"><input name="stitle" type="text" id="stitle" size="50" value=""
                                                     class="form-control"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>站点显示description</td>
                    <td>
                        <div class="col-sm-5"><input name="sdescription" type="text" id="sdescription" size="50"
                                                     value="" class="form-control"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>站点显示keywords</td>
                    <td>
                        <div class="col-sm-5"><input name="skeywords" type="text" id="skeywords" size="50" value=""
                                                     class="form-control"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>分类状态</td>
                    <td>
                        <div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control">
                            <option value="">请选择</option>
                            <option value="0">打开</option>
                            <option value="1">关闭</option>
                            <option value="2">推荐</option>
                        </select></div>
                    </td>
                </tr>
                <tr>
                    <td>操作员</td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="Submit" id="Submit" value="提交"
                                                          class="btn btn-success"/>
                        &nbsp;&nbsp;&nbsp;
                        <input type="button" name="Submit" id="Submit" value="返回" onClick="javascript:history.back();"
                               class="btn btn-default"/>

                </tr>
                </tbody>
            </table>
        </form>


    </div>
</div>
</body>
<script type="text/javascript" src="/WEB-INF/js/pages/front/product/class_add.js"></script>
</html>