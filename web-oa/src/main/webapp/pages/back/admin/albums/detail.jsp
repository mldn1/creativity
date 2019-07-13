<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
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
            <!--toggle button end-->
            <!--search start-->
            <!--search end-->
            <jsp:include page="/pages/plugins/include_userinfo.jsp"/>
        </div>
        <!-- header section end-->
        <!-- page heading start-->
        <div class="page-heading">
            <h3> 精彩文件 </h3>
            <ul class="breadcrumb pull-left">
                <li><a href="/user/show/"></a></li>
                <li><a href="/album/manage">全部文件</a></li>
                <li class="active"> 文件</li>
            </ul>
        </div>
        <div class="clearfix"></div>
        <!-- page heading end-->
        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="profile-desk">
                                    <h1>图片标题</h1>
                                    <span class="designation">图片信息摘要 @<a href="/user/show/"></a></span>
                                    <p><img class="img-responsive" src="upload/2017-3/28/0.jpg"></p>
                                    <a class="btn p-follow-btn js-album-laud" href="javascript:;"
                                       data-id="{{.album.Id}}"> <i class="fa fa-heart"></i></a>&nbsp; <a
                                        class="btn p-follow-btn" href="#commenta"> <i class="fa fa-envelope-o"></i></a>&nbsp;
                                    <a class="btn p-follow-btn" href="javascript:;"> <i class="fa fa-eye"></i></a>
                                    <ul class="p-social-link pull-right bdsharebuttonbox">
                                        <li><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a></li>
                                        <li><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a></li>
                                        <li><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <header class="panel-heading"> 精彩点评 <span class="tools pull-right"> <a
                                    class="fa fa-chevron-down" href="javascript:;"></a> </span></header>
                            <div class="panel-body">
                                <ul class="activity-list">
                                    <li>
                                        <div class="activity-desk"><h5>&nbsp;</h5>
                                            <p class="text-muted">&nbsp;</p>
                                        </div>
                                    </li>
                                </ul>
                                <form class="form-horizontal" id="album-comment-form" action="/album/comment/add">
                                    <a name="commenta"></a>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <textarea name="comment" rows="6" class="form-control"
                                                      placeholder="精彩评论不断……"></textarea>
                                            <br/>
                                            <input type="hidden" name="albumid" value="">
                                            <button type="submit" class="btn btn-primary pull-right">我来点评</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
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
<jsp:include page="/pages/plugins/include_foot.jsp"/>

</body>
</html>
