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
		        <li class="active"><a href="Booking_Notice.jsp">查看通知</a></li>
		        <li><a href="Booking_Meeting.jsp">预约会议室</a></li>
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

<div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h2 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" onclick="badgeDispose(event)" >
         <h3>会议邀请<span class="badge">2</span></h3>
        </a>
      </h2>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
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
                <tr>
                    <td>软件学院实习相关事项</td>
                    <td>第一会议室</td>
                    <td>12:00</td>
                    <td>13:30</td>
                    <td>大家注意安全</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-default">同意</a>
                        <a href="#" class="btn btn-default" onclick="return confirm('确实要拒绝该会议吗？');">拒绝</a>
						<a href="#" class="btn btn-default" onclick="return confirm('确实要忽略该会议吗？');">忽略</a>
                    </td>
                </tr>
				<tr>
                    <td>毕业晚会</td>
                    <td>第二会议室</td>
                    <td>12:00</td>
                    <td>13:30</td>
                    <td>大家注意安全</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-default">同意</a>
                        <a href="#" class="btn btn-default" onclick="return confirm('确实要拒绝该会议吗？');">拒绝</a>
						<a href="#" class="btn btn-default" onclick="return confirm('确实要忽略该会议吗？');">忽略</a>
                    </td>
                </tr>

            </tbody>
        </table>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h2 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
         <h3>会议变更<span class="badge">2</span></h3>
        </a>
      </h2>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse">
      <div class="panel-body">
	  <table class="table">
            <thead>
                <tr>
                    <th>会议主题</th>
                    <th>会议室</th>
                    <th>起始时间</th>
					<th>结束时间</th>
                    <th>变更说明</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>软件学院实习相关事项</td>
                    <td>第一会议室</td>
                    <td>12:00</td>
                    <td>13:30</td>
                    <td>有事延期</td>
                </tr>
				<tr>
                    <td>毕业晚会</td>
                    <td>第二会议室</td>
                    <td>12:00</td>
                    <td>13:30</td>
                    <td>有事提前</td>
                </tr>
            </tbody>
        </table>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h2 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
        <h3>会议总结<span class="badge">2</span></h3>
        </a>
      </h2>
    </div>
    <div id="collapseThree" class="panel-collapse collapse">
      <div class="panel-body">
	  <table class="table">
            <thead>
                <tr>
                    <th>会议主题</th>
                    <th>总结人</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>软件学院实习相关事项</td>
                    <td>程序员</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-default">查看</a>
                    </td>
                </tr>
				<tr>
                    <td>毕业晚会</td>
                    <td>校长</td>
					<td class="text-center">
                        <a href="#" class="btn btn-default">查看</a>
                    </td>
                </tr>
            </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

</main>
    <script src="scripts/jquery-1.11.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
