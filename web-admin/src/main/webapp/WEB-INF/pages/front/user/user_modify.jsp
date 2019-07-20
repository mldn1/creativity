<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body role="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;"> 

<form action="pages/front/user/user_modify_do.action" method="post" name="viewEdit" id="viewEdit">
  <table width="98%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr>
        <td colspan="2" align="center">用户详细信息</td>
      </tr>
    </thead>
    <tbody>
            <tr>
        <td>id</td>
        <td><div class="col-sm-5"><input name="id" type="text" id="id" size="50" value="${member.id}"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>用户名</td>
        <td><div class="col-sm-5"><input name="mid" type="text" id="mid" size="50" value="${member.mid}"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>用户昵称</td>
        <td><div class="col-sm-5"><input name="name" type="text" id="name" size="50" value="${member.name}"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>用户唯一标识</td>
        <td>${member.phone}</td>
      </tr>
            <tr>
        <td>密码</td>
        <td><div class="col-sm-5"><input name="password" type="password" id="password" size="50"  class="form-control" />
</div>注：不修改请留空</td>
      </tr>
            <tr>
        <td>性别</td>
        <td><div id="sex_div" class="col-sm-3"><select name="sex" id="sex" class="form-control" disabled>
            <option value="">请选择</option>
            <option value="0" selected>未知</option>
            <option value="1">男</option>
            <option value="2">女</option>
        </select></div>
</td>
      </tr>
            <tr>
        <td>来源</td>
        <td><div id="source_div" class="col-sm-3"><select name="source" id="source" class="form-control" disabled>
            <option value="">请选择</option>
            <c:forEach items="${allChannels}" var="channel">
                <option value="${channel.channel}" ${channel.channel==member.source? "selected":""}>${channel.title}</option>
            </c:forEach>
</select></div>
</td>
      </tr>
            <tr>
        <td>手机号</td>
        <td>${member.phone}</td>
      </tr>
            <tr>
        <td>级别</td>
        <td><div id="ulvl_div" class="col-sm-3"><select name="grade" id="grade" class="form-control" >
            <option value="">请选择</option>
            <c:forEach items="${allGrades}" var="grade">
                <option value="${grade.id}" ${grade.id==member.grade? "selected":""}>${grade.title}</option>
            </c:forEach>

</select></div>
</td>
      </tr>
            <tr>
        <td>余额</td>
        <td><div class="col-sm-5"><input name="money" type="text" id="money" size="50" value="${member.money}"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>积分</td>
        <td><div class="col-sm-5"><input name="integral" type="text" id="integral" size="50" value="${member.integral}"  class="form-control"   readonly />
</div></td>
      </tr>
            <tr>
        <td>状态</td>
        <td><div id="state_div" class="col-sm-3"><select name="state" id="state" class="form-control" >
            <option value="">请选择</option>
            <c:forEach items="${allStates}" var="state">
                <option value="${state.id}" ${state.id==member.state? "selected":""}>${state.title}</option>
            </c:forEach>
</select></div>
</td>
      </tr>
            <tr>
        <td>注册时间</td>
        <td>${member.regist}</td>
      </tr>
            <tr>
        <td>最近登陆时间</td>
        <td>${member.lastrecord}</td>
      </tr>
            <tr>
        <td>操作员</td>
        <td>${member.eid}</td>
      </tr>
            <tr>
        <td>更多操作</td>
        <td><a href="?action=main&exec=Users_user_couponss&fun=viewEdit&adduserid=1983&t_uniq="  target="_blank" >发卷</a>
            &nbsp;&nbsp;&nbsp;<a href="?action=main&exec=Users_user_messages&fun=viewEdit&&adduserid=1983&t_uniq="  target="_blank" >发消息</a></td>
      </tr>
            <tr>
        <td colspan="2" align="center">
            <input type="hidden" name="phone" id="phone" value="${member.phone}">
            <input type="submit" name="Submit" id="Submit" value="提交" class="btn btn-success" />
            <input type="button" name="back" id="back" value="返回" onclick="javascript:history.back();" class="btn btn-default" /></td>
      </tr>
    </tbody>
  </table>
</form>
 
</div>
</div>
</body>
<script>
$(function(){
	$('#Users').addClass('active');
});
$('#myModal').modal({
	backdrop: "static",
	show: false
})
</script>
</html>