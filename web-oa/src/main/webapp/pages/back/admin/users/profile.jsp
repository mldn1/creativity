<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
<link href="static/css/clndr.css" rel="stylesheet">
<link href="static/css/table-responsive.css" rel="stylesheet">
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/include_meta.jsp"/>
</head>
</head>
<body class="sticky-header">
<section> <jsp:include page="/pages/plugins/include_menuitem.jsp"/>
  <!-- main content start-->
  <div class="main-content" >
    <!-- header section start-->
    <div class="header-section"> <a class="toggle-btn"><i class="fa fa-bars"></i></a> 
	<jsp:include page="/pages/plugins/include_userinfo.jsp"/> </div>
    <!-- header section end-->
    <!-- page heading start-->
    <!--<div class="page-heading">-->
    <!--Page Tittle goes here-->
    <!--</div>-->
    <!-- page heading end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="col-md-4">
          <div class="row">
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-body">
                  <div class="profile-pic text-center"> <img alt="" src=""> </div>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-body">
                  <ul class="p-info">
                    <li>
                      <div class="title">姓名</div>
                      <div class="desk"></div>
                    </li>
                    <li>
                      <div class="title">性别</div>
                      <div class="desk">{男女</div>
                    </li>
                    <li>
                      <div class="title">生日</div>
                      <div class="desk"></div>
                    </li>
                    <li>
                      <div class="title">电话</div>
                      <div class="desk"></div>
                    </li>
                    <li>
                      <div class="title">部门</div>
                      <div class="desk"></div>
                    </li>
                    <li>
                      <div class="title">职称</div>
                      <div class="desk"></div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
			<!--div class="col-md-12">
              <div class="panel">
                <div class="panel-body p-states">
                  <h4 class="title">打卡</h4>
                  <div class="text-center">
				<a href="javascript:;" id="js-clock" class="btn btn-info">打卡<br/><span></span></a>
				
					</div>
                </div>
              </div>
            </div-->
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-body p-states">
                  <h4 class="title">公告</h4>
                  <ul class="dropdown-list normal-list"><li class="new"> <a href="" data-toggle="modal" data-content=""> <span class="label label-danger"><i class="fa fa-bolt">XXXX</i></span> <span class="name"> </span> <em class="small">XXXX</em> </a> </li>
                    
                    <!--li class="new"><a href="">See All Notifications</a></li-->
                  </ul>
                </div>
              </div>
            </div>			  
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-body">
                  <div class="calendar-block ">
                    <div class="cal1"> </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-8">
          <div class="row">
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-body">
                  <div class="profile-desk">
                    <h1>项目<a class="pull-right" style="font-size:16px;" href="pages/back/admin/projects/project.jsp">更多</a></h1>
                    <table class="table table-bordered table-striped table-condensed cf">
                      <thead class="cf">
                        <tr>
                          <th>项目名称</th>
                          <th>结束日期</th>
                          <th class="numeric">状态</th>
                          <th class="numeric">项目负责人</th>
                        </tr>
                      </thead>
                      <tbody>
                      
                  
                      <td><a href="/project/"></a></td>
                        <td> </td>
                        <td> 挂起  延期 进行 结束</td>
                        <td></td>
                      </tr>
                      
                      </tbody>
                      
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-body">
                  <div class="profile-desk">
                    <h1>任务<a class="pull-right" style="font-size:16px;" href="pages/back/admin/projects/mytask.jsp">更多</a></h1>
                    <table class="table table-bordered table-striped table-condensed cf">
                      <thead class="cf">
                        <tr>
                          <th>任务名称</th>
                          <th>结束日期</th>
                          <th class="numeric">状态</th>
                          <th class="numeric">预计工时</th>
                        </tr>
                      </thead>
                      <tbody>
                      
                      
                      <tr>
                        <td><a href="/task/show/"></a></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td></td>
                      </tr>
                      
                      </tbody>
                      
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-body">
                  <div class="profile-desk">
                    <h1>Bug<a class="pull-right" style="font-size:16px;" href="pages/back/admin/projects/test.jsp">更多</a></h1>
                    <table class="table table-bordered table-striped table-condensed cf">
                      <thead class="cf">
                        <tr>
                          <th>Bug标题</th>
                          <th>创建日期</th>
                          <th class="numeric">状态</th>
                          <th>创建人</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>  
                          <td><a href="/test/show/"></a></td>
                          <td></td>
                          <td></td>
                          <td><a href="/user/show/{{$v.Userid}}"></a></td>
                        </tr>
                      
                      </tbody>
                      
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!--div class="row">
            <div class="col-md-12">
              <div class="panel">
                <form>
                  <textarea class="form-control input-lg p-text-area" rows="2" placeholder="Whats in your mind today?"></textarea>
                </form>
                <footer class="panel-footer">
                  <button class="btn btn-post pull-right">Post</button>
                  <ul class="nav nav-pills p-option">
                    <li> <a href="#"><i class="fa fa-user"></i></a> </li>
                    <li> <a href="#"><i class="fa fa-camera"></i></a> </li>
                    <li> <a href="#"><i class="fa fa-location-arrow"></i></a> </li>
                    <li> <a href="#"><i class="fa fa-meh-o"></i></a> </li>
                  </ul>
                </footer>
              </div>
            </div>
          </div-->
          <div class="row">
            <div class="col-md-12">
              <div class="panel">
                <header class="panel-heading"> 知识 <span class="pull-right"> <a href="pages/back/admin/knowledges/index.jsp">更多</a></span> </header>
                <div class="panel-body">
                  <ul class="activity-list"><li>
                      <div class="avatar"> <img src="{{getAvatarUserid $v.Userid}}" alt=""> </div>
                      <div class="activity-desk">
                        <h5><a href="/user/show/{{$v.Userid}}"></a> <span><a href="/knowledge/" style="color:#2a323f"></a></span></h5>
                        <p class="text-muted">&nbsp;</p>
                        <p class="pull-right text-muted"><i class="fa fa-eye"></i>  &nbsp;&nbsp;&nbsp;<i class="fa fa-heart"></i> &nbsp;&nbsp;&nbsp;<i class="fa fa-envelope-o"></i> &nbsp;&nbsp;&nbsp; </p>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="panel">
                <header class="panel-heading"> 相册 <span class="pull-right"> <a href="pages/back/admin/albums/index.jsp">更多</a></span> </header>
                <div class="panel-body"><div id="gallery" class="media-gal">
                  <div class="images item " >
                                    <a href="/album/" title="">
                                        <img src=" " alt="" />
                                    </a>
                                   
									
									
                    </div>
				
				
                  
                   </div></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--body wrapper end-->
    <!--footer section start--><jsp:include page="/pages/plugins/include_notice-dialog.jsp"/>    <jsp:include page="/pages/plugins/include_footinfo.jsp"/>	
    <!--footer section end-->
  </div>
  <!-- main content end-->
</section>
<jsp:include page="/pages/plugins/include_foot.jsp"/>
<script src="static/js/calendar/clndr.js"></script>
<script src="static/js/calendar/evnt.calendar.init.js"></script>
<script src="static/js/calendar/moment-2.2.1.js"></script>
<script src="static/js/underscore-min.js"></script>
<script>
$(function(){
	$('#noticeModal').on('show.bs.modal', function (e) {
		$('#notice-box').html($(e.relatedTarget).attr('data-content'))
	});	
})
</script>
</body>
</html>
