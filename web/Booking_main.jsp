<%@ page import="com.design.Book.model.Employee" %>
<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%Employee emp = (Employee)session.getAttribute("emp"); %>
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
		        <li class="active"><a href="Booking_main.jsp">预定端首页</a></li>
		        <li><a href="Booking_Notice.jsp">查看通知</a></li>
		        <li><a href="Booking_Meeting.jsp">预约会议室</a></li>
		        <li><a href="Booking_Mymt.jsp">我的会议</a></li>
		        <li><a href="/CM_relaease_war_exploded/MymtServelet">我的预订</a></li>
		        <li><a href="Load.jsp"><font style="color:red" >退出登录</font></a></li>
			</ul>
	    </div>
	</div>
</nav>

<header id="logo" class="container">
	<div class="row">
		<div class="col-lg-8 col-lg-push-2">
			    <h1 class="blog-title">
			    	<a href="#">欢迎使用智能会议管理系统</a>
			    </h1>
				<h2 class="blog	-desc">
					<a href="#">用户，欢迎你！</a>
				</h2>	
		</div>
    </div>
</header>
    <script src="scripts/jquery-1.11.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
