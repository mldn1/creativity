<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%--
    系统首页用于进行信息显示页面
--%>
<%!
    public static final String PROFILE_URL = "pages/back/authz/users/profile.jsp";
    public static final String PROFILE_FORM_URL = "pages/back/authz/users/profile-form.jsp";
    public static final String AVATAR_URL = "pages/back/authz/users/avatar.jsp";
    public static final String PROFILE_PASSWORD_URL = "pages/back/authz/users/profile-pwd.jsp";
    public static final String TASK_URL = "pages/back/authz/projects/mytask.jsp";
    public static final String LOGOUT_URL = "logout";
%>
<!--notification menu start -->
<div class="menu-right">
    <ul class="notification-menu">
        <li>
            <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                <i class="fa fa-envelope-o"></i>

                <span class="badge">2</span>

            </a>
            <div class="dropdown-menu dropdown-menu-head pull-right">
                <h5 class="title">你有3个 最新信息</h5>
                <ul class="dropdown-list normal-list">

                    <li>
                        <a href="#" class="js-msg-status" data-id="">
                            <span class="thumb"></span>
                            <span class="desc">
                                          <span class="name">&nbsp;
                                              <!--span class="badge badge-success">new</span--></span>
                                          <span class="msg"> &nbsp;</span>                                        </span>
                        </a></li>

                    <li class="text-center">目前还没有最新消息</li>

                    <li class="new"><a href="pages/back/admin/messages/index.jsp">查看更多</a></li>
                </ul>
            </div>
        </li>

        <li><img src="static/img/avatar-mini.jpg" alt=""/> <a href="javascript:;"
                                                                    class="btn btn-default dropdown-toggle"
                                                                    data-toggle="dropdown"> 测试用户 <span
                class="caret"></span> </a>
            <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                <li><a href="<%=PROFILE_URL%>"><i class="fa fa-user"></i> 个人主页</a></li>
                <li><a href="<%=PROFILE_FORM_URL%>"><i class="fa fa-cog"></i> 基本资料</a></li>
                <li><a href="<%=AVATAR_URL%>"><i class="fa fa-camera"></i> 更换头像</a></li>
                <li><a href="<%=PROFILE_PASSWORD_URL%>"><i class="fa fa-cog"></i> 更换密码</a></li>
                <li><a href="<%=TASK_URL%>"><i class="fa fa-th-list"></i> 我的任务</a></li>
                <li><a href="<%=LOGOUT_URL%>"><i class="fa fa-sign-out"></i> 退出</a></li>
            </ul>
        </li>
    </ul>
</div>
<!--notification menu end -->
