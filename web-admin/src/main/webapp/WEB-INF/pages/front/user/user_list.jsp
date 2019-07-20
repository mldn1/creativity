<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/WEB-INF/pages/plugins/include_head.jsp"/>
</head>le="document">

<div id="mainDiv">
  <div style="width: 98%; margin-left:auto; margin-right:auto; text-align:left;">
<div style="width: 98%; margin-left: 1%;">
  <form name="form_simple" method="post" action="pages/front/user/user_list.action">
    <input type="hidden" name="action" id="action" value="main">
    <input type="hidden" name="exec" id="exec" value="Users_userss">
    <table class="table table-hover table-bordered">
      <tbody>
        <tr>
          <td colspan="2" style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="keyword">搜索关键词：</label>
              <div class="col-md-7">
                <input type="input" class="form-control" id="keyword" name="keyword" value="${keyword}"
					placeholder="搜索关键词">
              </div>
            </div></td>
        </tr>
        <tr>
           </td>                		
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="source">用户来源: </label>
                <div id="source_div" class="col-sm-3">
                    <select name="source" id="source" class="form-control" >
                        <option value="">请选择</option>
                            <c:forEach items="${allChannels}" var="channels">
                                <option value="${channels.channel}" ${channels.channel == source? "selected":""}>${channels.title}</option>
                            </c:forEach>
                    </select></div>

            </div>
          </td>
          <td style="text-align:left; vertical-align:bottom;"><div class="form-group">
              <label class="col-md-2" for="linesize">个/页：</label>
              <div class="col-md-2">
                <input type="number" class="form-control" id="linesize" name="linesize" value="20" min="20" max="100" step="20">
              </div>
            </div>
           </td>
        </tr>      <tr>
        <td colspan="2" align="center" valign="middle"><input
				type="submit" name="Submit" id="Submit" value="查询" class="btn btn-success" /></td>
      </tr>
        </tbody>
      
    </table>
  </form>
</div>
<form name="form_list" id="form_list" method="POST" action=""
	onsubmit="javascript:return confirm('你确定执行该操作吗!!!');">
  <table width="99%" class="table table-striped table-hover table-bordered">
    <thead>
      <tr style="font-weight:bold;">
        <td>id</td>
        <td>用户名</td>
        <td>唯一ID</td>
        <td>性别</td>
        <td>用户级别</td>
        <td>来源</td>
        <td>状态</td>
        <td>注册时间</td>
        <td>最近登陆时间</td>
        <td>最后操作人员</td>
        <td>&nbsp;</td>
      </tr>
    </thead>
    <tbody>
        <c:forEach items="${allMembers}" var="member">
            <tr>
                <td><b>${member.id}</b></td>
                <td>${member.mid}</td>
                <td><a href="pages/front/user/user_modify.action?phone=${member.phone}">${member.phone}</a></td>
                <td>${member.sex}</td>
                <td>${allM_grades[member.grade]}</td>
                <td>${Channels[member.source]}</td>
                <td>${allStates[member.state]}</td>
                <td>${member.regist}</td>
                <td>${member.lastrecord}</td>
                <td>${member.eid}</td>
                <td><a href="pages/front/user/send_coupon.jsp"  target="_blank" >发卷</a>&nbsp;&nbsp;&nbsp;<a href="pages/front/user/send_ms.jsp"  target="_blank" >发消息</a>&nbsp;&nbsp;&nbsp;<a href="?action=main&exec=Users_userss&fun=viewEdit&id=2003&t_uniq=" ></a></td>
            </tr>
        </c:forEach>
        </tbody>
    <tr>
        <td colspan="12" align="center" valign="middle">
            <div id="splitBarDiv" style="float:right">
                <jsp:include page="/WEB-INF/pages/plugins/split_page_bar_plugin.jsp"/>
            </div>&nbsp;共&nbsp;${allRecorders}条&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
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