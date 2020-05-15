<%@ page import="java.util.List" %>
<%@ page import="com.design.Book.model.Employee" %>
<%@ page import="com.design.Book.dao.EmployeeDao" %>
<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%EmployeeDao employeeDao=new EmployeeDao();


%>
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
	    <table class="table">
	        <thead>
	            <tr>
	                <th>��Ա����</th>
	                <th>����</th>
	            </tr>
	        </thead>
	        	<tbody>
				<%List list=employeeDao.findAllEmp();
				if (list!=null){
					for (int i = 0; i < list.size(); i++) {
						Employee employee=(Employee)list.get(i);
				%>
				<form action="/CM_relaease_war_exploded/RelationOfMeServlet" method="post">
	        	    <tr>
						<td><%=employee.getEmployeeName()%></td>
						<td><input name="employeeid" type="text" value=<%=employee.getEmployeeID()%>></td>
						<td class="text-center">
							<button type="submit" class="btn btn-success">ѡ�вλ�</button>
	        	        </td>
	        	    </tr>
				</form>
				<%}}%>
	        	</tbody>
	    </table>
		<td class="text-center">
			<a href="Booking_Mybook.jsp" class="btn btn-primary" >���</a>
		</td>
	</div>
	
</main>

    <script src="./scripts/jquery-1.11.0.min.js"></script>
    <script src="./bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
