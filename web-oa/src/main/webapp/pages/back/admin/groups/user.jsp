<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
<link href="static/css/table-responsive.css" rel="stylesheet">
</head><body class="sticky-header">
<section> <jsp:include page="/pages/plugins/include_menuitem.jsp"/>
  <!-- main content start-->
  <div class="main-content" >
    <!-- header section start-->
    <div class="header-section">
      <!--toggle button start-->
      <a class="toggle-btn"><i class="fa fa-bars"></i></a>
      <!--toggle button end-->
      <!--search start-->
      <!--search end--> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 组织管理     <jsp:include page="/pages/plugins/include_nav.jsp"/></h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
        <li> <a href="pages/back/admin/groups/group_list.action">组管理</a> </li>
        <li class="active">  </li>
      </ul>
      <div class="pull-right"><a href="pages/back/admin/groups/user-form.jsp?gid=${gid}" class="btn btn-success">+新成员</a></div>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-sm-12">
          <section class="panel">
            <header class="panel-heading"> 组成员 / 总数：${allRecorders}<span class="tools pull-right"><a href="javascript:;" class="fa fa-chevron-down"></a>
              <!--a href="javascript:;" class="fa fa-times"></a-->
              </span> </header>
            <div class="panel-body">
              <section id="unseen">
                <form id="project-form-list">
                  <table class="table table-bordered table-striped table-condensed">
                    <thead>
                      <tr>
                        <th>成员</th>
                        <th>职称</th>
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>

                    <c:forEach var="emp" items="${allEmps}">
                      <tr>
                        <td><a href="/user/show/{{$v.Userid}}">${emp.name}</a></td>
                        <td>${emp.job}</td>
                        <td><a href="javascript:confirm('确定要删除组成员吗！');" class="js-group-user-single" data-id="${gid}:${emp.eid}">删除</a></td>
                      </tr>
                    </c:forEach>

<%--                    {{range $k,$v := .users}}--%>
<%--                    <tr>--%>
<%--                      <td><a href="/user/show/{{$v.Userid}}"></a></td>--%>
<%--                      <td></td>--%>
<%--                      <td><a href="javascript:;" class="js-group-user-single" data-id="">删除</a></td>--%>
<%--                    </tr>--%>
                    
                    </tbody>
                    
                  </table>
                </form>
                 <jsp:include page="/pages/plugins/split_page_bar_plugin.jsp"/>
				 </section>
            </div>
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
        ids = $(this).attr("data-id").split(":");
        gid = ids[0];
        eid = ids[1];
        console.log(gid + ", " + eid) ;
        $.getJSON("pages/back/admin/groups/group_user_delete.action", {"gid":gid,"eid":eid}, function (data) {
          console.log("我被调用了**************")
          if (data==(true)) {
            // $("footer").append("组员删除成功，5秒后自动刷新页面");
            // setTimeout(window.location.reload(),5);
            alert("组员删除成功！")
            window.location.reload();
          }else {
            $("footer").append("组员删除失败！");
          }

        });
      }) ;
    }) ;
  })

</script>

</html>
