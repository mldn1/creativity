<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
</head>
<body class="sticky-header">
<section> <jsp:include page="/pages/plugins/include_menuitem.jsp"/>
  <!-- main content start-->
  <div class="main-content" >
    <!-- header section start-->
    <div class="header-section">
      <!--toggle button start-->
      <a class="toggle-btn"><i class="fa fa-bars"></i></a>
      <!--toggle button end-->
      <!--search start-->
      <form class="searchform" action="/group/manage" method="get">
        上次登录
        <button type="submit" class="btn btn-primary">搜索</button>
      </form>
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 组织管理     <jsp:include page="/pages/plugins/include_nav.jsp"/></h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
<%--        <li> <a href="pages/back/admin/groups/index.jsp">组管理</a> </li>--%>
        <li> <a href="pages/back/admin/groups/group_list.action">组管理</a> </li>
        <li class="active"> 组权限 </li>
      </ul>
      <div class="pull-right"> <a href="pages/back/admin/groups/form.jsp" class="btn btn-success">+新增组</a> </div>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 组管理 / 总数：${allRecorders}</header>
            <div class="panel-body">
              <table class="table table-bordered table-striped table-condensed">
                <thead>
                  <tr>
                    <th>名称</th>
                    <th class="hidden-phone hidden-xs">描述</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
                    <c:forEach items="${allGroups}" var="group">
                        <tr>
                            <td>&nbsp;${group.title} </td>
                            <td class="hidden-phone hidden-xs">&nbsp;${group.description}</td>
                            <td><div class="btn-group">
                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 操作<span class="caret"></span> </button>
                                <ul class="dropdown-menu">
                                    <li><a href="pages/back/admin/groups/group-permission.jsp">权限</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="pages/back/admin/groups/user.jsp">成员</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="pages/back/admin/groups/user-form.jsp">编辑</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="javascript:;" class="js-group-delete" data-op="delete" data-id="${group.gid}">删除</a></li>
                                </ul>
                            </div></td>
                        </tr>
                    </c:forEach>
      
<%--                <tr>--%>
<%--                  <td>&nbsp; </td>--%>
<%--                  <td class="hidden-phone hidden-xs">&nbsp;</td>--%>
<%--                  <td><div class="btn-group">--%>
<%--                      <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 操作<span class="caret"></span> </button>--%>
<%--                      <ul class="dropdown-menu">--%>
<%--                        <li><a href="pages/back/admin/groups/group-permission.jsp">权限</a></li>--%>
<%--                        <li role="separator" class="divider"></li>--%>
<%--                        <li><a href="pages/back/admin/groups/user.jsp">成员</a></li>--%>
<%--                        <li role="separator" class="divider"></li>--%>
<%--                        <li><a href="pages/back/admin/groups/user-form.jsp">编辑</a></li>--%>
<%--                        <li role="separator" class="divider"></li>--%>
<%--                        <li><a href="javascript:;" class="js-group-delete" data-op="delete" data-id="">删除</a></li>--%>
<%--                      </ul>--%>
<%--                    </div></td>--%>
<%--                </tr>--%>
                
                <c:if test="${allGroups == null}">
                    <tr>
                        <td colspan="7">你还没有添加组</td>
                    </tr>
                </c:if>
                
                </tbody>
                
              </table>
               <jsp:include page="/pages/plugins/split_page_bar_plugin.jsp"/> </div>
          </section>
        </div>
      </div>
    </div>
    <!--body wrapper end-->
    <!--footer section start-->    <jsp:include page="/pages/plugins/include_footinfo.jsp"/>
    <!--footer section end-->
  </div>
  <!-- main content end-->
</section>
<jsp:include page="/pages/plugins/include_foot.jsp"/>
</body>

<script>
    $(function(){
        $("a[data-id]").each(function(){
            $(this).on("click",function(){
                gid = $(this).attr("data-id")
                console.log(gid) ;
                $.getJSON("pages/back/admin/groups/group_delete.action", {"gid":gid}, function (data) {
                    console.log("我被调用了**************")
                    if (data==(true)) {
                        $("footer").append("组删除成功，5秒后自动刷新页面");
                        setTimeout(window.location.reload(),5);
                    }else {
                        $("footer").append("组删除失败！");
                    }

                });
            }) ;
        }) ;
    })

</script>

</html>