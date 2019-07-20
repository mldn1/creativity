<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="WEB-INF/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="WEB-INF/pages/plugins/include_head.jsp"/>
</head>
<body>
<div class="ct_wrapper" style="padding-top:60px;">
    <header>

        <div class="logo_nav_outer_wrap">
            <div class="container">
                <div class="logo_wrap">
                    <a href="#"><img src="assets/images/logo.png" alt="" width="65%"></a>
                </div>

                <nav class="main_navigation nav_lineHeiht">
                    <ul>
                        <li><a href="#">首页</a></li>
                        <li><a href="#about">关于我们</a></li>
                        <li><a href="#feature">我们的特色</a></li>
                        <li><a href="#show">商品展示</a></li>
                        <li><a href="#contactUs">联系我们</a></li>
                    </ul>
                </nav>
                <div id="kode-responsive-navigation" class="dl-menuwrapper">
                    <button class="dl-trigger">Open Menu</button>
                    <ul class="dl-menu">
                        <li class="active"><a href="#">首页</a></li>
                        <li><a href="#about">关于我们</a></li>
                        <li class="menu-item kode-parent-menu"><a href="#feature">我们的特色</a></li>
                        <li class="menu-item kode-parent-menu"><a href="#show">商品展示</a></li>
                        <li class="menu-item kode-parent-menu"><a href="#contactUs">联系我们</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <div class="banner_outer_wrap">
        <ul>
            <li>
                <img src="assets/images/ind_12.jpg" alt="">
            </li>
        </ul>
    </div>
    <div class="ct_content_wrap">
        <section id="about">
            <div class="container">
                <div class="get_started_outer_wrap">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="get_started_content_wrap ct_blog_detail_des_list">
                                <h3>关于我们</h3>
                                <p>故宫博物院文化创意馆，集中展销故宫博物院研发的文化创意产品中的竞品。</p>
                                <p>有丝绸馆、服饰馆、御窑馆、书画馆、铜器馆、木艺馆、陶艺馆、生活馆等主题馆组成。</p>
                                <p>以传播故宫文化、分享典雅生活为宗旨。</p>
                                <p>将宫廷文化元素与现代审美巧妙结合，为大众提供多元化的文化体验。</p>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="get_started_video">
                                <img src="assets/images/ind_13.jpg">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="feature">
            <div class="container">
                <div class="ct_heading_1_wrap">
                    <h3>我们的特色</h3>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="ct_news_wrap">
                            <img src="assets/images/ind_10.png">
                            <h5><a href="#">高品质设计</a></h5>
                            <p>采用故宫元素特有的祥云、如意、故宫色等作为基础，邀请知名设计师进行文创设计。</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="ct_news_wrap">
                            <img src="assets/images/ind_11.png">
                            <h5><a href="#">文化传承</a></h5>
                            <p>中国清宫文化的代表作，是您购买纪念品、礼品、自用的最佳选择。</p>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="ct_news_wrap">
                            <img src="assets/images/ind_3.png">
                            <h5><a href="#">贴心服务</a></h5>
                            <p>专业贴心的服务团队，帮您解决大客户配送、定制化包装等定制化问题。</p>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="teacher_bg" id="show">
            <div class="container">
                <div class="ct_heading_1_wrap">
                    <h3>商品展示</h3>
                </div>
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="ct_teacher_outer_wrap">
                            <figure>
                                <img src="assets/images/ind_4.png" alt="">
                            </figure>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="ct_teacher_outer_wrap">
                            <figure>
                                <img src="assets/images/ind_5.png" alt="">
                            </figure>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="ct_teacher_outer_wrap">
                            <figure>
                                <img src="assets/images/ind_6.png" alt="">
                            </figure>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="ct_teacher_outer_wrap">
                            <figure>
                                <img src="assets/images/ind_7.png" alt="">
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="ct_blog_simple_bg" id="contactUs">
            <div class="container">
                <div class="ct_heading_1_wrap">
                    <h3>联系我们</h3>
                    <p>&nbsp;</p>
                </div>
                <div class="get_started_outer_wrap">
                    <div class="row">
                        <div class="col-md-6">
                            <form class="form-horizontal" role="form">
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="姓名">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="邮箱">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <textarea class="form-control" placeholder="留言"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-success">提交</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <p style="font-size:16px; color:#666;">&nbsp;</p>
                            <div class="get_started_video">
                                <img src="assets/images/ind_18.png">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer style="text-align:center; height:100px; background-color:#f6f3ec;">
            <p style="font-size:16px; color:#666; line-height:100px;">&nbsp;</p>
        </footer>
    </div>

</div>
</body>
</html>
