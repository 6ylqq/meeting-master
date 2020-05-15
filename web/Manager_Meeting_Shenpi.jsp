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
		        <li><a href="Manager_main.jsp">�������ҳ</a></li>
		        <li><a href="Manager_zhuce_shenpi.jsp">ע������</a></li>
		        <li class="active"><a href="Manager_Meeting_Shenpi.jsp">��������</a></li>
		        <li><a href="#"><font style="color:red" >�˳���¼</font></a></li>
			</ul>
			
	    </div>

	</div>
</nav>

<header id="logo" class="container">
	<div class="row">
		<div class="col-lg-8 col-lg-push-2">
		    
			    <h1 class="blog-title">
			    	<a href="/">ע������</a>
			    </h1>
		</div>
    </div>
</header>

<main class="container" role="main">

	<div class="container jumbotron">
        <table class="table text-center">
   
            <thead>
                <tr>
                    <th class="text-center">����</th>
                    <th class="text-center">ʱ��</th>
                    <th class="text-center">�ص�</th>
					<th class="text-center">��ע</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Τ׳��</td>
                    <td>201131000518</td>
					<td>������</td>
					<td>1111</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-default">ͨ��</a>
						<a href="#" class="btn btn-default" onclick="return confirm('���Ҫ�ܾ���/����');">�ܾ�</a>
                    </td>
                </tr>
				<tr>
                    <td>������</td>
                    <td>201131000504</td>
					<td>ѧϰ��</td>
					<td>22222</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-default">ͨ��</a>
						<a href="#" class="btn btn-default" onclick="return confirm('���Ҫ�ܾ���/����');">�ܾ�</a>
                    </td>
                </tr>
				<tr>
                    <td>������</td>
                    <td>201131000507</td>
					<td>�߻���</td>
					<td>33333</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-default">ͨ��</a>
						<a href="#" class="btn btn-default" onclick="return confirm('���Ҫ�ܾ���/����');">�ܾ�</a>
                    </td>
                </tr>
				<tr>
                    <td>������</td>
                    <td>201131000521</td>
					<td>��֯��</td>
					<td>44444</td>
                    <td class="text-center">
                        <a href="#" class="btn btn-default">ͨ��</a>
						<a href="#" class="btn btn-default" onclick="return confirm('���Ҫ�ܾ���/����');">�ܾ�</a>
                    </td>
                </tr>

            </tbody>
        </table>
    </div>
</main>



    <script src="scripts/jquery-1.11.0.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
