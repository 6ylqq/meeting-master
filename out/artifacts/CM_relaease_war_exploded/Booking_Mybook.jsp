<%@ page import="java.util.List" %>
<%@ page import="com.design.Book.model.Meeting" %>
<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    
    <title>智能会议管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="styles/dajiao.css" rel="stylesheet" type="text/css"/>
    <link href="styles/main.min.css" rel="stylesheet" type="text/css"/>
</head>
<body class="home-template default-bg">
	
<nav class="navbar navbar-ghost navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display . span is for line in button.-->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#global-navbar">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="global-navbar">
	    	<ul class="nav navbar-nav">
		        <li><a href="Booking_main.jsp">预定端首页</a></li>
		        <li><a href="Booking_Notice.jsp">查看通知</a></li>
		        <li><a href="Booking_Meeting.jsp">预约会议室</a></li>
		        <li><a href="Booking_Mymt.jsp">我的会议</a></li>
		        <li class="active"><a href="Booking_Mybook.jsp">我的预订</a></li>
                <li><a href="Load.jsp"><font style="color:red" >退出登录</font></a></li>
			</ul>
	    </div>
	</div>
</nav>

<header id="logo" class="container">
	<div class="row">
		<div class="col-lg-8 col-lg-push-2">
			    <h1 class="blog-title">
			    	<a href="/">欢迎使用智能会议管理系统</a>
			    </h1>
		</div>
    </div>
</header>
<main class="container" role="main">
                    
	<div class="bookingRoom jumbotron">
        <table class="table">
            <thead>
                <tr>
                    <th>会议主题</th>
                    <th>会议室</th>
                    <th>起始时间</th>
					<th>结束时间</th>
                    <th>会议说明</th>
					<th>操作</th>
                </tr>
            </thead>
            <tbody>
                <%List list=(List)request.getSession().getAttribute("BookMeeting");
                if (list!=null){
                    for (int i = 0; i < list.size(); i++) {
                        Meeting meeting=(Meeting)list.get(i);
                %>
                <tr>
                    <td><%=meeting.getMeetingName()%></td>
                    <td><%=meeting.getRoomName()%></td>
                    <td>12:00</td>
                    <td>13:30</td>
                    <td><%=meeting.getDescription()%></td>
					<td class="text-center">
						<a href="#modify" class="btn btn-default" data-toggle="modal" >修改</a>
                    </td>
                </tr>
                <%}}%>
            </tbody>
        </table>

    </div>
	

</main>

	 <!-- 修改对话框开始 -->
    <div id="modify" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title text-center">信息更改</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="meetingTopic" class="control-label col-md-2">会议主题</label>
                            <div class="col-md-10">
                                <input type="text" id="meetingTopic" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="meetingRoom" class="control-label col-md-2">会议室</label>
                            <div class="col-md-10">
                                <input type="text" id="meetingRoom" class="form-control" />
                            </div>
                        </div>
						<div class="form-group">
							<label for="startTime" class="col-md-2 control-label">时间</label>
							<div class="col-md-4">
							<input type="time" id="startTime" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
                            <label for="description" class="control-label col-md-2">变更说明</label>
                            <div class="col-md-10">
                                <input type="text" id="description" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-5">
                                <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <!-- 修改对话框结束 -->


    <script src="scripts/jquery-1.11.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
