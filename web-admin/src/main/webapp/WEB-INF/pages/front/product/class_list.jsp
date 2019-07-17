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
<div style="width: 98%; margin-left: 1%;"> </div>
<form name="form_list" id="form_list" method="POST" action=""
	onsubmit="javascript:return confirm('你确定执行该操作吗!!!');">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <tbody>
      <tr>
        <td><div id="tree">
         <ul>
             <c:forEach items="${allCategoryAccordingToParent}" var="parent">
                 <li><a href="pages/front/product/class_edit_pre.action?cid=${parent.key.cid}">${parent.key.title}</a></li>
                 <table style="margin-bottom:25px;margin-left: 40px">
                    　　  <%int i = 1;%>
                    <c:forEach items="${parent.value}" var="son">
                        　　<% if (i % 2 == 1) {%>
                        　　<tr>
                        　　<%}%>
                        <td width="120" height="30" align="center"><a  href="pages/front/product/class_edit_pre.action?cid=${son.cid}">${son.title}</a></td>
                        　　<% if (i % 2 == 0) {%>
                        　　</tr>
                        　　<% }i++; %>
                    </c:forEach>
                </table>
             </c:forEach>
		 </ul>
        </div></td>
      </tr>
    </tbody>
    <tr>
      <td align="center" valign="middle" > <a href="pages/front/product/class_add_pre.action" class="btn btn-primary">添加分类</a></td>
    </tr>
  </table>
</form>

 

</div>
</div>
</body>
<script type="text/javascript" src="/WEB-INF/js/pages/front/product/class_list.js"></script>
</html>