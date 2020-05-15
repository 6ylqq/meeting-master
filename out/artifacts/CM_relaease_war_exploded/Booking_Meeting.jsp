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
    <title>���ܻ������ϵͳ</title>
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
                <li><a href="Booking_main.jsp">Ԥ������ҳ</a></li>
                <li><a href="Booking_Notice.jsp">�鿴֪ͨ</a></li>
                <li class="active"><a href="Booking_Meeting.jsp">ԤԼ������</a></li>
                <li><a href="Booking_Mymt.jsp">�ҵĻ���</a></li>
                <li><a href="Booking_Mybook.jsp">�ҵ�Ԥ��</a></li>
                <li><a href="Load.jsp"><font style="color:red" >�˳���¼</font></a></li>
            </ul>
        </div>
    </div>
</nav>

<header id="logo" class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-push-2">
            <h1 class="blog-title">
                <a href="/">��ӭʹ�����ܻ������ϵͳ</a>
            </h1>
        </div>
    </div>
</header>
<main class="container" role="main">

    <div class="bookingRoom jumbotron">
        <!-- ��������ʼ -->
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
                        <button type="submit" class="btn btn-primary">��ѯ���û�����</button>
                    </div>
                </div>
            </form>
        </div>
        <!-- ���������� -->
    </div>

    <div class="text-center jumbotron">
        <table class="table">
            <caption>
            </caption>
            <thead>
            <tr>
                <th class="text-center" >������</th>
                <th class="text-center" >˵��</th>
                <th class="text-center" >����</th>
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
                <td>�������ƣ�<input type="text" name="meetingname"></td>
                <td>����������<input type="text" name="Description"></td>
                <td class="text-center">
                    <button type="submit" class="btn btn-default">ԤԼ��������Ա</button>
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

