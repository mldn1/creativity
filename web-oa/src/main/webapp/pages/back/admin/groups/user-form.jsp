<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
<link href="static/css/jquery-ui-1.10.3.css"  rel="stylesheet" />
</head><body class="sticky-header">
<section> <jsp:include page="/pages/plugins/include_menuitem.jsp"/>
  <!-- main content start-->
  <div class="main-content" >
    <!-- header section start-->
    <div class="header-section">
      <!--toggle button start-->
      <a class="toggle-btn"><i class="fa fa-bars"></i></a> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <div class="page-heading">
      <h3> 组织管理     <jsp:include page="/pages/plugins/include_nav.jsp"/></h3>
      <ul class="breadcrumb pull-left">
        <li> <a href="/user/show/{{.LoginUserid}}"></a> </li>
<%--        <li> <a href="/group/user/{{.group.Id}}"></a> </li>--%>
        <li> <a href="pages/back/admin/groups/group_user.action?gid=${param.gid}"> 组员管理 </a> </li>
        <li class="active"> 成员 </li>
      </ul>
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-lg-12">
          <section class="panel">
            <header class="panel-heading">添加组成员</header>
            <div class="panel-body">
              <form class="form-horizontal adminex-form" id="group-user-form">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">姓名</label>
                  <div class="col-sm-10">
                    <input type="text" name="username" id="team-username" class="form-control js-search-username" placeholder="请输入姓名或用户名匹配">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 col-sm-2 control-label"></label>
                  <div class="col-lg-10">
<%--                    <input type="hidden" name="groupid" id="groupid" value="${gid}">--%>
                    <input type="hidden" name="gid" id="gid" value="${param.gid}">
                    <input type="hidden" name="userid" id="userid">
                    <button type="submit" class="btn btn-primary">添加组成员</button>
                  </div>
                </div>
              </form>
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
<script src="static/js/jquery-ui-1.10.3.min.js"></script>
</body>

<script>
  $(function () {
    $("#group-user-form").validate({
      debug : true , // 此配置描述的是当前的表单不允许直接提交
      submitHandler: function(form) { //  针对于表单的提交进行的处理
        // form.submit() ; // 手工提交表单
        console.log("我被调用了**************")
        key = $("#team-username").val();
        gid = $("#gid").val();
        console.log("我被调用了**************" + key);
        console.log("我被调用了**************" + gid);
        $.getJSON("pages/back/admin/groups/group_user_add.action", {"key":key, "gid":gid}, function (data) {
          console.log("我被调用了**************");
          $("footer").empty();
            switch(data){
                case 0 :
                    //语句
                    $("footer").append("用户不存在！");
                    break; //可选
                case 1 :
                    //语句
                    $("footer").append("组成员添加成功！");
                    $("footer").attr("class","text-success") ;
                    break; //可选
                //你可以有任意数量的case语句
                case 2 :
                    //语句
                    $("footer").append("输入内容匹配多名用户，请使用用户名进行唯一匹配！！");
                    break; //可选
                case 3 :
                    //语句
                    $("footer").append("组中已经存在当前用户，不允许重复添加！");
                    break; //可选
                //你可以有任意数量的case语句
                default : //可选
                    $("footer").append("组成员添加失败，请稍后再试！");
                //语句
            }
        });
      },
      highlight: function(element,errorClass) { // 进行高亮显示的配置
        elementId = element.id ; // 获取组件的id内容
        if (elementId.indexOf(".")) {
          elementId = elementId.replace(".","\\.") ; // 进行“.”的替换
        }
        divId = elementId + "Div" ; // 设置层的元素的id名称
        $("#" + divId).attr("class","form-group has-error") ; // 设置错误信息的样式
      },
      unhighlight : function(element,errorClass) {
        elementId = element.id ; // 获取组件的id内容
        if (elementId.indexOf(".")) {
          elementId = elementId.replace(".","\\.") ; // 进行“.”的替换
        }
        divId = elementId + "Div" ; // 设置层的元素的id名称
        $("#" + divId).attr("class","form-group has-success") ; // 设置错误信息的样式
      } ,
      errorPlacement : function(error,element) {
        elementId = $(element).attr("id") ; // 获取元素的id
        if (elementId.indexOf(".")) {
          elementId = elementId.replace(".","\\.") ; // 进行“.”的替换
        }
        msgId = elementId + "Msg" ; // 获取错误文本的显示元素
        $("#" + msgId).empty() ; // 清空已有内容
        $(error).attr("class","text-danger") ;
        $("#" + msgId).append(error) ; // 追加错误信息
      } ,
      // success : function(error,element) {  // 操作成功
      //   elementId = $(element).attr("id") ; // 获取元素的id
      //   if (elementId.indexOf(".")) {
      //     elementId = elementId.replace(".","\\.") ; // 进行“.”的替换
      //   }
      //   msgId = elementId + "Msg" ; // 获取错误文本的显示元素
      //   $("#" + msgId).empty() ; // 清空已有内容
      //   $("#" + msgId).append("<span class='h2'><span class='text-success glyphicon glyphicon-ok'/></span>") ; // 追加错误信息
      // } ,
      rules: {        // 定义所有要使用的验证规则
        "team-username" : {  // 要验证表单的id名称
          required: true   // 该内容不允许为空
        } ,
        "summary": {
          required : true , // 该自动内容不允许为空
        }
      }
    });
  })
</script>

</html>
