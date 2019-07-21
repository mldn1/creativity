<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.alibaba.fastjson.JSONObject" %>
<%@ page import="com.alibaba.fastjson.JSONArray" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>OA管理系统</title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
    <script src="static/js/echarts.common.min.js"></script>

    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
    <script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=1vq0TkSX6qwqaCTdcrpnwNqlG5MrMDRI&__ec_v__=20190126"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>

    <style>
        .pie-chart {
            width: 620px;
            height: 400px;
        }

        @media screen and (max-width: 768px) {
            .pie-chart {
                width: 384px;
                height: 430px;
            }
        }
    </style>
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
            <h3> 项目管理 </h3>
            <ul class="breadcrumb pull-left">
                <li><a href="/user/show/{{.LoginUserid}}"></a></li>
                <li><a href="/project/{{.project.Id}}"></a></li>
                <li class="active"> 报表</li>
            </ul>
            <div class="pull-right"><a href="pages/back/admin/projects/team.action?proid=${proid}"
                                       class="btn btn-success">团队team</a> <a href="pages/back/admin/projects/needs.jsp"
                                                                             class="btn btn-success">需求</a> <a
                    href="pages/back/admin/projects/task.jsp" class="btn btn-success">任务</a> <a
                    href="pages/back/admin/projects/test.jsp" class="btn btn-success">Bug</a> <a
                    href="pages/back/admin/projects/project-chart.jsp" class="btn btn-warning">报表</a></div>
        </div>
        <div class="clearfix"></div>
        <!-- page heading end-->
        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-6">
                    <section class="panel">
                        <header class="panel-heading">
                            项目成员职称比例
                            <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                        </header>
                        <div class="panel-body">
                            <div id="chartTeam" class="pie-chart">
                            </div>
                        </div>
                    </section>
                </div>
                <div class="col-sm-6">
                    <section class="panel">
                        <header class="panel-heading">
                            项目需求接受人比例
                            <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                        </header>
                        <div class="panel-body">
                            <div id="chartNeedsAccept" class="pie-chart">
                            </div>
                        </div>
                    </section>
                </div>
                <div class="col-sm-6">
                    <section class="panel">
                        <header class="panel-heading">
                            项目需求创建人比例
                            <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                        </header>
                        <div class="panel-body">
                            <div id="chartNeedsUser" class="pie-chart">
                            </div>
                        </div>
                    </section>
                </div>

                <div class="col-sm-6">
                    <section class="panel">
                        <header class="panel-heading">
                            项目需求来源比例
                            <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                        </header>
                        <div class="panel-body">
                            <div id="chartNeedsSource" class="pie-chart">
                            </div>
                        </div>
                    </section>
                </div>

                <div class="col-sm-6">
                    <section class="panel">
                        <header class="panel-heading">
                            项目任务接受人比例
                            <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                        </header>
                        <div class="panel-body">
                            <div id="chartTasksAccept" class="pie-chart">
                            </div>
                        </div>
                    </section>
                </div>
                <div class="col-sm-6">
                    <section class="panel">
                        <header class="panel-heading">
                            项目任务创建人比例
                            <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                        </header>
                        <div class="panel-body">
                            <div id="chartTasksUser" class="pie-chart">
                            </div>
                        </div>
                    </section>
                </div>

                <div class="col-sm-6">
                    <section class="panel">
                        <header class="panel-heading">
                            项目任务完成人比例
                            <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                        </header>
                        <div class="panel-body">
                            <div id="chartTasksComplete" class="pie-chart">
                            </div>
                        </div>
                    </section>
                </div>

                <div class="col-sm-6">
                    <section class="panel">
                        <header class="panel-heading">
                            项目任务类型比例
                            <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                        </header>
                        <div class="panel-body">
                            <div id="chartTasksSource" class="pie-chart">
                            </div>
                        </div>
                    </section>
                </div>


                <div class="col-sm-6">
                    <section class="panel">
                        <header class="panel-heading">
                            项目Bug接受人比例
                            <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                        </header>
                        <div class="panel-body">
                            <div id="chartTestsAccept" class="pie-chart">
                            </div>
                        </div>
                    </section>
                </div>
                <div class="col-sm-6">
                    <section class="panel">
                        <header class="panel-heading">
                            项目Bug创建人比例
                            <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                        </header>
                        <div class="panel-body">
                            <div id="chartTestsUser" class="pie-chart">
                            </div>
                        </div>
                    </section>
                </div>

                <div class="col-sm-6">
                    <section class="panel">
                        <header class="panel-heading">
                            项目Bug完成人比例
                            <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                        </header>
                        <div class="panel-body">
                            <div id="chartTestsComplete" class="pie-chart">
                            </div>
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
<jsp:include page="/pages/plugins/include_foot.jsp"/>
<script>
    $(function () {
        option = {
            title: {
                text: '项目团队人员',
                subtext: '职称比例',
                x: 'center'
            },
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                left: 'left',
                //data:['职称比例']
            },
            series: [
                {
                    name: '职称比例',
                    type: 'pie',
                    radius: '55%',
                    center: ['50%', '60%'],
                    data:${teamJob},
                    itemStyle: {
                        emphasis: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        var chartTeam = echarts.init(document.getElementById('chartTeam'));
        chartTeam.setOption(option);


    //
    //     option = {
    //         title: {
    //             text: '项目需求指派人',
    //             subtext: '需求指派比例',
    //             x: 'center'
    //         },
    //         tooltip: {
    //             trigger: 'item',
    //             formatter: "{a} <br/>{b} : {c} ({d}%)"
    //         },
    //         legend: {
    //             orient: 'vertical',
    //             left: 'left',
    //             data: [
    //                 {{range $k, $v: = .chartNeedsAccept}
    //         }
    //     {
    //         {
    //             if lt $k
    //             $.chartNeedsAcceptNum
    //         }
    //     }
    // ,
    //
    // ]
    // },
    //     series : [
    //         {
    //             name: '需求指派比例',
    //             type: 'pie',
    //             radius: '55%',
    //             center: ['50%', '60%'],
    //             data: [
    //                 {{range $k, $v: = .chartNeedsAccept}
    //         }
    //         {value: {{$v.Value}
    // },
    //     name:}
    //     {
    //         {
    //             if lt $k
    //             $.chartNeedsAcceptNum
    //         }
    //     }
    // ,
    //
    // ],
    //     itemStyle: {
    //         emphasis: {
    //             shadowBlur: 10,
    //                 shadowOffsetX
    //         :
    //             0,
    //                 shadowColor
    //         :
    //             'rgba(0, 0, 0, 0.5)'
    //         }
    //     }
    // }
    // ]
    // }
    //     ;
    //     var chartNeedsAccept = echarts.init(document.getElementById('chartNeedsAccept'));
    //     chartNeedsAccept.setOption(option);
    //
    //     option = {
    //         title: {
    //             text: '项目需求创建人',
    //             subtext: '需求创建人比例',
    //             x: 'center'
    //         },
    //         tooltip: {
    //             trigger: 'item',
    //             formatter: "{a} <br/>{b} : {c} ({d}%)"
    //         },
    //         legend: {
    //             orient: 'vertical',
    //             left: 'left',
    //             data: [
    //                 {{range $k, $v: = .chartNeedsUser}
    //         }
    //     {
    //         {
    //             if lt $k
    //             $.chartNeedsUserNum
    //         }
    //     }
    // ,
    //
    // ]
    // },
    //     series : [
    //         {
    //             name: '需求创建人比例',
    //             type: 'pie',
    //             radius: '55%',
    //             center: ['50%', '60%'],
    //             data: [
    //                 {{range $k, $v: = .chartNeedsUser}
    //         }
    //         {value: {{$v.Value}
    // },
    //     name:}
    //     {
    //         {
    //             if lt $k
    //             $.chartNeedsUserNum
    //         }
    //     }
    // ,
    //
    // ],
    //     itemStyle: {
    //         emphasis: {
    //             shadowBlur: 10,
    //                 shadowOffsetX
    //         :
    //             0,
    //                 shadowColor
    //         :
    //             'rgba(0, 0, 0, 0.5)'
    //         }
    //     }
    // }
    // ]
    // }
    //     ;
    //     var chartNeedsUser = echarts.init(document.getElementById('chartNeedsUser'));
    //     chartNeedsUser.setOption(option);
    //
    //     option = {
    //         title: {
    //             text: '项目需求来源',
    //             subtext: '需求来源比例',
    //             x: 'center'
    //         },
    //         tooltip: {
    //             trigger: 'item',
    //             formatter: "{a} <br/>{b} : {c} ({d}%)"
    //         },
    //         legend: {
    //             orient: 'vertical',
    //             left: 'left',
    //             data: [
    //                 {{range $k, $v: = .chartNeedsSource}
    //         }
    //     {
    //         {
    //             getNeedsSource
    //             $v.Name
    //         }
    //     }
    //     {
    //         {
    //             if lt $k
    //             $.chartNeedsSourceNum
    //         }
    //     }
    // ,
    //
    // ]
    // },
    //     series : [
    //         {
    //             name: '需求来源比例',
    //             type: 'pie',
    //             radius: '55%',
    //             center: ['50%', '60%'],
    //             data: [
    //                 {{range $k, $v: = .chartNeedsSource}
    //         }
    //         {value: {{$v.Value}
    // },
    //     name:{
    //         {
    //             getNeedsSource
    //             $v.Name
    //         }
    //     }
    // }
    //     {
    //         {
    //             if lt $k
    //             $.chartNeedsSourceNum
    //         }
    //     }
    // ,
    //
    // ],
    //     itemStyle: {
    //         emphasis: {
    //             shadowBlur: 10,
    //                 shadowOffsetX
    //         :
    //             0,
    //                 shadowColor
    //         :
    //             'rgba(0, 0, 0, 0.5)'
    //         }
    //     }
    // }
    // ]
    // }
    //     ;
    //     var chartNeedsSource = echarts.init(document.getElementById('chartNeedsSource'));
    //     chartNeedsSource.setOption(option);
    //
    //
    //     option = {
    //         title: {
    //             text: '项目任务指派人',
    //             subtext: '任务指派比例',
    //             x: 'center'
    //         },
    //         tooltip: {
    //             trigger: 'item',
    //             formatter: "{a} <br/>{b} : {c} ({d}%)"
    //         },
    //         legend: {
    //             orient: 'vertical',
    //             left: 'left',
    //             data: [
    //                 {{range $k, $v: = .chartTasksAccept}
    //         }
    //     {
    //         {
    //             if lt $k
    //             $.chartTasksAcceptNum
    //         }
    //     }
    // ,
    //
    // ]
    // },
    //     series : [
    //         {
    //             name: '任务指派比例',
    //             type: 'pie',
    //             radius: '55%',
    //             center: ['50%', '60%'],
    //             data: [
    //                 {{range $k, $v: = .chartTasksAccept}
    //         }
    //         {value: {{$v.Value}
    // },
    //     name:}
    //     {
    //         {
    //             if lt $k
    //             $.chartTasksAcceptNum
    //         }
    //     }
    // ,
    //
    // ],
    //     itemStyle: {
    //         emphasis: {
    //             shadowBlur: 10,
    //                 shadowOffsetX
    //         :
    //             0,
    //                 shadowColor
    //         :
    //             'rgba(0, 0, 0, 0.5)'
    //         }
    //     }
    // }
    // ]
    // }
    //     ;
    //     var chartTasksAccept = echarts.init(document.getElementById('chartTasksAccept'));
    //     chartTasksAccept.setOption(option);
    //
    //     option = {
    //         title: {
    //             text: '项目任务创建人',
    //             subtext: '任务创建人比例',
    //             x: 'center'
    //         },
    //         tooltip: {
    //             trigger: 'item',
    //             formatter: "{a} <br/>{b} : {c} ({d}%)"
    //         },
    //         legend: {
    //             orient: 'vertical',
    //             left: 'left',
    //             data: [
    //                 {{range $k, $v: = .chartTasksUser}
    //         }
    //     {
    //         {
    //             if lt $k
    //             $.chartTasksUserNum
    //         }
    //     }
    // ,
    //
    // ]
    // },
    //     series : [
    //         {
    //             name: '任务创建人比例',
    //             type: 'pie',
    //             radius: '55%',
    //             center: ['50%', '60%'],
    //             data: [
    //                 {{range $k, $v: = .chartTasksUser}
    //         }
    //         {value: {{$v.Value}
    // },
    //     name:}
    //     {
    //         {
    //             if lt $k
    //             $.chartTasksUserNum
    //         }
    //     }
    // ,
    //
    // ],
    //     itemStyle: {
    //         emphasis: {
    //             shadowBlur: 10,
    //                 shadowOffsetX
    //         :
    //             0,
    //                 shadowColor
    //         :
    //             'rgba(0, 0, 0, 0.5)'
    //         }
    //     }
    // }
    // ]
    // }
    //     ;
    //     var chartTasksUser = echarts.init(document.getElementById('chartTasksUser'));
    //     chartTasksUser.setOption(option);
    //
    //     option = {
    //         title: {
    //             text: '项目任务完成人',
    //             subtext: '任务完成人比例',
    //             x: 'center'
    //         },
    //         tooltip: {
    //             trigger: 'item',
    //             formatter: "{a} <br/>{b} : {c} ({d}%)"
    //         },
    //         legend: {
    //             orient: 'vertical',
    //             left: 'left',
    //             data: [
    //                 {{range $k, $v: = .chartTasksComplete}
    //         }
    //     {
    //         {
    //             if lt $k
    //             $.chartTasksCompleteNum
    //         }
    //     }
    // ,
    //
    // ]
    // },
    //     series : [
    //         {
    //             name: '任务完成人比例',
    //             type: 'pie',
    //             radius: '55%',
    //             center: ['50%', '60%'],
    //             data: [
    //                 {{range $k, $v: = .chartTasksComplete}
    //         }
    //         {value: {{$v.Value}
    // },
    //     name:}
    //     {
    //         {
    //             if lt $k
    //             $.chartTasksCompleteNum
    //         }
    //     }
    // ,
    //
    // ],
    //     itemStyle: {
    //         emphasis: {
    //             shadowBlur: 10,
    //                 shadowOffsetX
    //         :
    //             0,
    //                 shadowColor
    //         :
    //             'rgba(0, 0, 0, 0.5)'
    //         }
    //     }
    // }
    // ]
    // }
    //     ;
    //     var chartTasksComplete = echarts.init(document.getElementById('chartTasksComplete'));
    //     chartTasksComplete.setOption(option);
    //
    //     option = {
    //         title: {
    //             text: '项目任务类型',
    //             subtext: '任务类型比例',
    //             x: 'center'
    //         },
    //         tooltip: {
    //             trigger: 'item',
    //             formatter: "{a} <br/>{b} : {c} ({d}%)"
    //         },
    //         legend: {
    //             orient: 'vertical',
    //             left: 'left',
    //             data: [
    //                 {{range $k, $v: = .chartTasksSource}
    //         }
    //     {
    //         {
    //             getTaskType
    //             $v.Name
    //         }
    //     }
    //     {
    //         {
    //             if lt $k
    //             $.chartTasksSourceNum
    //         }
    //     }
    // ,
    //
    // ]
    // },
    //     series : [
    //         {
    //             name: '任务类型比例',
    //             type: 'pie',
    //             radius: '55%',
    //             center: ['50%', '60%'],
    //             data: [
    //                 {{range $k, $v: = .chartTasksSource}
    //         }
    //         {value: {{$v.Value}
    // },
    //     name:{
    //         {
    //             getTaskType
    //             $v.Name
    //         }
    //     }
    // }
    //     {
    //         {
    //             if lt $k
    //             $.chartTasksSourceNum
    //         }
    //     }
    // ,
    //
    // ],
    //     itemStyle: {
    //         emphasis: {
    //             shadowBlur: 10,
    //                 shadowOffsetX
    //         :
    //             0,
    //                 shadowColor
    //         :
    //             'rgba(0, 0, 0, 0.5)'
    //         }
    //     }
    // }
    // ]
    // }
    //     ;
    //     var chartTasksSource = echarts.init(document.getElementById('chartTasksSource'));
    //     chartTasksSource.setOption(option);
    //
    //
    //     option = {
    //         title: {
    //             text: '项目Bug指派人',
    //             subtext: 'Bug指派比例',
    //             x: 'center'
    //         },
    //         tooltip: {
    //             trigger: 'item',
    //             formatter: "{a} <br/>{b} : {c} ({d}%)"
    //         },
    //         legend: {
    //             orient: 'vertical',
    //             left: 'left',
    //             data: [
    //                 {{range $k, $v: = .chartTestsAccept}
    //         }
    //     {
    //         {
    //             if lt $k
    //             $.chartTestsAcceptNum
    //         }
    //     }
    // ,
    //
    // ]
    // },
    //     series : [
    //         {
    //             name: 'Bug指派比例',
    //             type: 'pie',
    //             radius: '55%',
    //             center: ['50%', '60%'],
    //             data: [
    //                 {{range $k, $v: = .chartTestsAccept}
    //         }
    //         {value: {{$v.Value}
    // },
    //     name:}
    //     {
    //         {
    //             if lt $k
    //             $.chartTestsAcceptNum
    //         }
    //     }
    // ,
    //
    // ],
    //     itemStyle: {
    //         emphasis: {
    //             shadowBlur: 10,
    //                 shadowOffsetX
    //         :
    //             0,
    //                 shadowColor
    //         :
    //             'rgba(0, 0, 0, 0.5)'
    //         }
    //     }
    // }
    // ]
    // }
    //     ;
    //     var chartTestsAccept = echarts.init(document.getElementById('chartTestsAccept'));
    //     chartTestsAccept.setOption(option);
    //
    //     option = {
    //         title: {
    //             text: '项目Bug创建人',
    //             subtext: 'Bug创建人比例',
    //             x: 'center'
    //         },
    //         tooltip: {
    //             trigger: 'item',
    //             formatter: "{a} <br/>{b} : {c} ({d}%)"
    //         },
    //         legend: {
    //             orient: 'vertical',
    //             left: 'left',
    //             data: [
    //                 {{range $k, $v: = .chartTestsUser}
    //         }
    //     {
    //         {
    //             if lt $k
    //             $.chartTestsUserNum
    //         }
    //     }
    // ,
    //
    // ]
    // },
    //     series : [
    //         {
    //             name: 'Bug创建人比例',
    //             type: 'pie',
    //             radius: '55%',
    //             center: ['50%', '60%'],
    //             data: [
    //                 {{range $k, $v: = .chartTestsUser}
    //         }
    //         {value: {{$v.Value}
    // },
    //     name:}
    //     {
    //         {
    //             if lt $k
    //             $.chartTestsUserNum
    //         }
    //     }
    // ,
    //
    // ],
    //     itemStyle: {
    //         emphasis: {
    //             shadowBlur: 10,
    //                 shadowOffsetX
    //         :
    //             0,
    //                 shadowColor
    //         :
    //             'rgba(0, 0, 0, 0.5)'
    //         }
    //     }
    // }
    // ]
    // }
    //     ;
    //     var chartTestsUser = echarts.init(document.getElementById('chartTestsUser'));
    //     chartTestsUser.setOption(option);
    //
    //     option = {
    //         title: {
    //             text: '项目Bug完成人',
    //             subtext: 'Bug完成人比例',
    //             x: 'center'
    //         },
    //         tooltip: {
    //             trigger: 'item',
    //             formatter: "{a} <br/>{b} : {c} ({d}%)"
    //         },
    //         legend: {
    //             orient: 'vertical',
    //             left: 'left',
    //             data: [
    //                 {{range $k, $v: = .chartTestsComplete}
    //         }
    //     {
    //         {
    //             if lt $k
    //             $.chartTestsCompleteNum
    //         }
    //     }
    // ,
    //
    // ]
    // },
    //     series : [
    //         {
    //             name: 'Bug完成人比例',
    //             type: 'pie',
    //             radius: '55%',
    //             center: ['50%', '60%'],
    //             data: [
    //                 {{range $k, $v: = .chartTestsComplete}
    //         }
    //         {value: {{$v.Value}
    // },
    //     name:}
    //     {
    //         {
    //             if lt $k
    //             $.chartTestsCompleteNum
    //         }
    //     }
    // ,
    //
    // ],
    //     itemStyle: {
    //         emphasis: {
    //             shadowBlur: 10,
    //                 shadowOffsetX
    //         :
    //             0,
    //                 shadowColor
    //         :
    //             'rgba(0, 0, 0, 0.5)'
    //         }
    //     }
    // }
    // ]
    // }
    //     ;
    //     var chartTestsComplete = echarts.init(document.getElementById('chartTestsComplete'));
    //     chartTestsComplete.setOption(option);
    //
     });
</script>
</body>
</html>
