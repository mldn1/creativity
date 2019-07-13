<!-- left side start-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
    页面功能：定义功能菜单页
--%>
<%!
    public static final String PROFILE_URL = "pages/back/admin/users/profile.jsp" ;
    public static final String PROJECT_URL = "pages/back/admin/projects/project.jsp" ;
    public static final String CHECKWORKS_URL = "pages/back/admin/checkworks/index.jsp" ;
    public static final String APPROVAL_URL = "pages/back/admin/leaves/approval-index.jsp" ;
    public static final String KNOWLEDGES_URL = "pages/back/admin/knowledges/index.jsp" ;
    public static final String ALBUMS_URL = "pages/back/admin/albums/index.jsp" ;
    public static final String RESUMES_URL = "pages/back/admin/resumes/index.jsp" ;
    public static final String ORGANIZATION_URL = "pages/back/admin/groups/index.jsp" ;
    public static final String SHOW_USER_URL = "pages/back/admin//user/show/" ;
    public static final String LOGOUT_URL = "logout" ;
%>
<div class="left-side sticky-left-side">
    <!--logo and iconic logo start-->
    <div class="logo"> <a href="/"><img src="static/img/logo-left.png" alt="管理系统"></a> </div>
    <div class="logo-icon text-center"> <a href="/"><img src="static/img/logo_icon.png" style="width:40px;" alt="管理系统"></a> </div>
    <!--logo and iconic logo end-->
    <div class="left-side-inner">
        <!-- visible to small devices only -->
        <div class="visible-xs hidden-sm hidden-md hidden-lg">
            <div class="media logged-user"> <img alt=" " src=" " class="media-object">
                <div class="media-body">
                    <h4><a href="/user/show/">用户1</a></h4>
                    <span>系统</span> </div>
            </div>
            <h5 class="left-nav-title">控制台</h5>
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li><a href="/user/profile"><i class="fa fa-user"></i> <span>个人设置</span></a></li>
                <li><a href="/logout"><i class="fa fa-sign-out"></i> <span>退出</span></a></li>
            </ul>
        </div>
        <!--sidebar nav start-->

        <ul class="nav nav-pills nav-stacked custom-nav js-left-nav">


            <li><a href="<%=PROFILE_URL%>"><i class="fa fa-home"></i> <span>我的主页</span></a></li>
            <li><a href="<%=PROJECT_URL%>"><i class="fa fa-book"></i> <span>项目管理</span></a></li>
            <li><a href="<%=CHECKWORKS_URL%>"><i class="fa fa-tasks"></i> <span>考勤管理</span></a></li>
            <li><a href="<%=APPROVAL_URL%>"><i class="fa fa-suitcase"></i> <span>审批管理</span></a></li>
            <li><a href="<%=KNOWLEDGES_URL%>"><i class="fa fa-tasks"></i> <span>知识分享</span></a></li>
            <li><a href="<%=ALBUMS_URL%>"><i class="fa fa-plane"></i> <span>员工相册</span></a></li>
            <li><a href="<%=RESUMES_URL%>"><i class="fa fa-laptop"></i> <span>简历管理</span></a></li>
            <li><a href="<%=ORGANIZATION_URL%>"><i class="fa fa-user"></i> <span>组织管理</span></a></li>


        </ul>


        <!--sidebar nav end-->
    </div>
</div>
<!-- left side end-->
