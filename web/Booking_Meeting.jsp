<%@ page import="jdk.dynalink.linker.LinkerServices" %>
<%@ page import="java.util.List" %>
<%@ page import="com.design.Book.model.MeetingRoom" %>
<%@ page import="com.design.Book.model.Employee" %>
<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>智能会议管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./styles/dajiao.css" rel="stylesheet" type="text/css"/>
    <link href="./styles/main.min.css" rel="stylesheet" type="text/css"/>
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
                <li class="active"><a href="Booking_Meeting.jsp">预约会议室</a></li>
                <li><a href="Booking_Mymt.jsp">我的会议</a></li>
                <li><a href="Booking_Mybook.jsp">我的预订</a></li>
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
        <!-- 搜索表单开始 -->
        <div class="container">
            <form action="/CM_relaease_war_exploded/BookmeetingRoomServlet">
                <div class="row">
                    <div class="col-lg-5">
                        <select class="form-control" name="weekday">
                            <option>Monday</option>
                            <option>Tuesday</option>
                            <option>Wednesday</option>
                            <option>Thursday</option>
                            <option>Friday</option>
                            <option>Saturday</option>
                            <option>Sunday</option>
                        </select>
                    </div>
                    <div class="col-lg-5 ">
                        <select class="form-control" name="date">
                            <option>9:00-12:00</option>
                            <option>15:00-18:00</option>
                            <option>19:00-22:00</option>
                        </select>
                    </div>
                    <div class="col-lg-2 ">
                        <button type="submit" class="btn btn-primary">查询可用会议室</button>
                    </div>
                </div>
            </form>
        </div>
        <!-- 搜索表单结束 -->
    </div>

    <div class="text-center jumbotron">
        <table class="table">
            <caption>
            </caption>
            <thead>
            <tr>
                <th class="text-center" >会议室</th>
                <th class="text-center" >说明</th>
                <th class="text-center" >操作</th>
            </tr>
            </thead>
            <tbody>
            <div style="color: red"><%=request.getAttribute("noMeetingRoom") == null ? "" : request.getAttribute("noMeetingRoom") %></div>
            <%List list=(List)request.getAttribute("meetingrooms");
            if (list!=null){
                for (int i = 0; i < list.size(); i++) {
                    MeetingRoom meetingRoom=(MeetingRoom)list.get(i);
            %>
            <form action="/CM_relaease_war_exploded/BookmeetingServlet" method="post">
            <tr>
                <td><input name="roomName" type="text" value=<%=meetingRoom.getRoomName()%>></td>
                <td><%=meetingRoom.getDescription()%></td>
                <td>会议名称：<input type="text" name="meetingname"></td>
                <td>会议描述：<input type="text" name="Description"></td>
                <td class="text-center">
                    <button type="submit" class="btn btn-default">预约并邀请人员</button>
                </td>
            </tr>
            </form>
            <%}}%>
            </tbody>
        </table>
    </div>

</main>

<script src="./scripts/jquery-1.11.0.min.js"></script>
<script src="./bootstrap/js/bootstrap.min.js"></script>
</body>
</html>

