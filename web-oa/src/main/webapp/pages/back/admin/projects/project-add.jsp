<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>OA管理系统</title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
    <link href="static/js/bootstrap-datepicker/css/datepicker-custom.css" rel="stylesheet"/>
</head>
<body class="sticky-header">
<section>
    <jsp:include page="/pages/plugins/include_menuitem.jsp"/>
    <!-- main content start-->
    <div class="main-content">
        <!-- header section start-->
        <div class="header-section">
            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <jsp:include page="/pages/plugins/include_userinfo.jsp"/>
        </div>
        <!-- header section end-->
        <!-- page heading start-->
        <div class="page-heading">
            <h3> 项目管理 </h3>
            <ul class="breadcrumb pull-left">
                <li><a href="/user/show/{{.LoginUserid}}"></a></li>
                <li><a href="pages/back/admin/projects/project_list_pre.action">项目管理</a></li>
                <li class="active"> 项目</li>
            </ul>
            <div class="pull-right"><a href="pages/back/admin/projects/project_add_pre.action"
                                       class="btn btn-success">添加新项目</a></div>
        </div>
        <!-- page heading end-->
        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading"></header>
                        <div class="panel-body">
                            <form class="form-horizontal adminex-form" id="project-form"
                                  action="pages/back/admin/projects/project_add.action">
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label"><span>*</span>项目名称</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="title" value="" class="form-control"
                                               placeholder="请填写名称">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label"><span>*</span>项目别名</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="alias" value="" class="form-control"
                                               placeholder="取个代号">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label">开始和结束日期</label>
                                    <div class="col-sm-10">
                                        <div class="input-group input-large custom-date-range" data-date="2016-07-07"
                                             data-date-format="yyyy-mm-dd">
                                            <input type="text" class="form-control dpd1" name="startdate"
                                                   placeholder="开始日期" value="">
                                            <span class="input-group-addon">To</span>
                                            <input type="text" class="form-control dpd2" name="enddate" placeholder="结束日期"
                                                   value="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label"><span>*</span>描述</label>
                                    <div class="col-sm-10">
                                        <textarea name="description" placeholder="请填写描述" style="height:300px;"
                                                  class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label">项目负责人</label>
                                    <div class="col-sm-10">
                                        <select name="head" class="form-control">
                                            <option>请选择项目负责人</option>
                                            <c:forEach items="${allEmps}" var="emp">
                                                <option value="${emp.eid}">${emp.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label">产品负责人</label>
                                    <div class="col-sm-10">
                                        <select name="pl" class="form-control">
                                            <option>请选择产品负责人</option>
                                            <c:forEach items="${allEmps}" var="emp">
                                                <option value="${emp.eid}">${emp.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label">测试负责人</label>
                                    <div class="col-sm-10">
                                        <select name="tl" class="form-control">
                                            <option>请选择测试负责人</option>
                                            <c:forEach items="${allEmps}" var="emp">
                                                <option value="${emp.eid}">${emp.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label">发布负责人</label>
                                    <div class="col-sm-10">
                                        <select name="founder" class="form-control">
                                            <option>请选择产品发布人</option>
                                            <c:forEach items="${allEmps}" var="emp">
                                                <option value="${emp.eid}">${emp.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-2 col-sm-2 control-label"></label>
                                    <div class="col-lg-10">
                                        <button type="submit" class="btn btn-primary">提 交</button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 col-sm-2 control-label"></label>
                                    <div class="col-lg-10">
                                        ${error}
                                    </div>
                                </div>
                            </form>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!--body wrapper end-->
        <!--footer section start-->
        <jsp:include page="/pages/plugins/include_footinfo.jsp"/>
        <!--footer section end-->
    </div>
    <!-- main content end-->
</section>
<div aria-hidden="true" aria-labelledby="projectModalLabel" role="dialog" tabindex="-1" id="projectModal"
     class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">新建项目成功，请先按项目流程设置</h4>
            </div>
            <div class="modal-body">


            </div>
            <div class="modal-footer">
                <a href="/project/manage" class="btn btn-primary">去设置管理</a>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/pages/plugins/include_foot.jsp"/>
<script src="static/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="static/keditor/kindeditor-min.js"></script>
<script>
    $(function () {
        var editor = KindEditor.create('textarea[name="desc"]', {
            uploadJson: "/kindeditor/upload",
            allowFileManager: true,
            filterMode: false,
            afterBlur: function () {
                this.sync();
            }
        });

        var nowTemp = new Date();
        var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

        var checkin = $('.dpd1').datepicker({
            format: 'yyyy-mm-dd',
            onRender: function (date) {
                return date.valueOf() < now.valueOf() ? 'disabled' : '';
            }
        }).on('changeDate', function (ev) {
            if (ev.date.valueOf() > checkout.date.valueOf()) {
                var newDate = new Date(ev.date)
                newDate.setDate(newDate.getDate() + 1);
                checkout.setValue(newDate);
            }
            checkin.hide();
            $('.dpd2')[0].focus();
        }).data('datepicker');
        var checkout = $('.dpd2').datepicker({
            format: 'yyyy-mm-dd',
            onRender: function (date) {
                return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
            }
        }).on('changeDate', function (ev) {
            checkout.hide();
        }).data('datepicker');
    })
</script>
</body>
</html>
