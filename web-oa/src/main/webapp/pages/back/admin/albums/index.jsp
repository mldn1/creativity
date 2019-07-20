<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
    <link href="static/css/table-responsive.css" rel="stylesheet">
    <link href="static/js/lightbox/css/lightbox.min.css" media="all" rel="stylesheet" type="text/css"/>
</head>
<body class="sticky-header">
<%!
    public static final String UPLOAD_URL = "pages/back/admin/albums/upload.jsp" ;
%>
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
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading"> 精彩文件
                        <div class="pull-right"><a href="pages/back/admin/albums/index.jsp" class="btn btn-warning">我的文件</a>&nbsp;
						<a href="pages/back/admin/albums/index.jsp?" class="btn btn-success">全部文件</a>&nbsp;
                            <a href="<%=UPLOAD_URL%>" class="btn btn-success">+上传文件</a>                        </div>
                    </header>
                    <div class="panel-body">
                        <div id="gallery" class="media-gal">
                            <div class="images item ">
                                <a href="{{$v.Picture}}" data-lightbox="example-set" data-title="{{$v.Summary}}">
                                    <img src="" alt=""/>
                                </a>
                                <p>&nbsp;</p>
                                <p>
                                    <a href="javascript:;" title="编辑" class="js-album-edit" data-id="" data-title=""
                                       data-summary="{{$v.Summary}}" data-status="{{$v.Status}}"><i
                                            class="fa fa-edit"></i></a>

                                    <a href="javascript:;" class="js-album-delete" data-id="" title="删除"><i
                                            class="fa fa-trash-o"></i></a>
                                    <!--a href="javascript:;" class="btn btn-default">{{if $v.Status}}正常屏蔽</a--></p>
                            </div>
                            <h2 class="text-center">我的还有上传过文件,现在就<a href="<%=UPLOAD_URL%>">上传文件</a></h2>
                        </div>
                        <div class="clearfix"></div>
                        <jsp:include page="/pages/plugins/split_page_bar_plugin.jsp"/>
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
<jsp:include page="/pages/plugins/include_foot.jsp"/>
<script src="static/js/lightbox/js/lightbox.min.js" type="text/javascript"></script>
</body>
</html>
