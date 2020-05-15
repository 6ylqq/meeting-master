<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    
    <title>���ܻ������ϵͳ</title>
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
		        <li><a href="Booking_main.jsp">Ԥ������ҳ</a></li>
		        <li class="active"><a href="Booking_Notice.jsp">�鿴֪ͨ</a></li>
		        <li><a href="Booking_Meeting.jsp">ԤԼ������</a></li>
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

<div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h2 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" onclick="badgeDispose(event)" >
         <h3>��������<span class="badge">2</span></h3>
        </a>
      </h2>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
      <table class="table">
            <thead>
                <tr>
                    <th>��������</th>
                    <th>������</th>
                    <th>��ʼʱ��</th>
					<th>����ʱ��</th>
                    <th>����˵��</th>
                    <th>����</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>���ѧԺʵϰ�������</td>
                    <td>��һ������</td>
                    <td>12:00</td>
                    <td>13:30</td>
                    <td>���ע�ⰲȫ</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-default">ͬ��</a>
                        <a href="#" class="btn btn-default" onclick="return confirm('ȷʵҪ�ܾ��û�����');">�ܾ�</a>
						<a href="#" class="btn btn-default" onclick="return confirm('ȷʵҪ���Ըû�����');">����</a>
                    </td>
                </tr>
				<tr>
                    <td>��ҵ���</td>
                    <td>�ڶ�������</td>
                    <td>12:00</td>
                    <td>13:30</td>
                    <td>���ע�ⰲȫ</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-default">ͬ��</a>
                        <a href="#" class="btn btn-default" onclick="return confirm('ȷʵҪ�ܾ��û�����');">�ܾ�</a>
						<a href="#" class="btn btn-default" onclick="return confirm('ȷʵҪ���Ըû�����');">����</a>
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
         <h3>������<span class="badge">2</span></h3>
        </a>
      </h2>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse">
      <div class="panel-body">
	  <table class="table">
            <thead>
                <tr>
                    <th>��������</th>
                    <th>������</th>
                    <th>��ʼʱ��</th>
					<th>����ʱ��</th>
                    <th>���˵��</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>���ѧԺʵϰ�������</td>
                    <td>��һ������</td>
                    <td>12:00</td>
                    <td>13:30</td>
                    <td>��������</td>
                </tr>
				<tr>
                    <td>��ҵ���</td>
                    <td>�ڶ�������</td>
                    <td>12:00</td>
                    <td>13:30</td>
                    <td>������ǰ</td>
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
        <h3>�����ܽ�<span class="badge">2</span></h3>
        </a>
      </h2>
    </div>
    <div id="collapseThree" class="panel-collapse collapse">
      <div class="panel-body">
	  <table class="table">
            <thead>
                <tr>
                    <th>��������</th>
                    <th>�ܽ���</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>���ѧԺʵϰ�������</td>
                    <td>����Ա</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-default">�鿴</a>
                    </td>
                </tr>
				<tr>
                    <td>��ҵ���</td>
                    <td>У��</td>
					<td class="text-center">
                        <a href="#" class="btn btn-default">�鿴</a>
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
