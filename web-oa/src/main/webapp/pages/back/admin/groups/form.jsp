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
      <a class="toggle-btn"><i class="fa fa-bars"></i></a> <jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
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
    </div>
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-lg-12">
          <section class="panel">
            <header class="panel-heading"> </header>
            <div class="panel-body">
                <form class="form-horizontal adminex-form" id="group-form">
                <div class="form-group" id="nameDiv">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>需求名称</label>
                  <div class="col-sm-10">
                    <input type="text" name="name" id="name" value="" class="form-control" placeholder="请输入组名称">
                  </div>
                </div>
                <div class="form-group" id="summaryDiv">
                  <label class="col-sm-2 col-sm-2 control-label"><span>*</span>描述</label>
                  <div class="col-sm-10">
                    <textarea name="summary" id="summary" placeholder="请填写描述" style="height:300px;" class="form-control"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 col-sm-2 control-label"></label>
                  <div class="col-lg-10">
                    <input type="hidden" name="id" id="groupid" value="{{.group.Id}}">
                    <button type="submit" class="btn btn-primary">提交保存</button>
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
</body>

<script>
  $(function () {
    $("#group-form").validate({
      debug : true , // 此配置描述的是当前的表单不允许直接提交
      submitHandler: function(form) { //  针对于表单的提交进行的处理
        // form.submit() ; // 手工提交表单
        console.log("我被调用了**************")
        title = $("#name").val();
        description = $("#summary").val();
        console.log("我被调用了**************" + title);
        console.log("我被调用了**************" + description);
        $.getJSON("pages/back/admin/groups/group_add.action", {"title":title, "description":description}, function (data) {
          console.log("我被调用了**************")
          if (data==(true)) {
            $("footer").append("组添加成功");
            $("#name").val("");
            $("#summary").val("");
            // alert("组添加成功！")
          }else {
            // alert("组添加失败！")
            $("footer").append("组添加失败！");
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
      success : function(error,element) {  // 操作成功
        elementId = $(element).attr("id") ; // 获取元素的id
        if (elementId.indexOf(".")) {
          elementId = elementId.replace(".","\\.") ; // 进行“.”的替换
        }
        msgId = elementId + "Msg" ; // 获取错误文本的显示元素
        $("#" + msgId).empty() ; // 清空已有内容
        $("#" + msgId).append("<span class='h2'><span class='text-success glyphicon glyphicon-ok'/></span>") ; // 追加错误信息
      } ,
      rules: {        // 定义所有要使用的验证规则
        "name" : {  // 要验证表单的id名称
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


