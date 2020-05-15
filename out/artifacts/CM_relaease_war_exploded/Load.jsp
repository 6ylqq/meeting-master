<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>Welcome to cm</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<style>
	body{
		background:url(images/bg.jpg);
		background-repeat:no-repeat ;
		background-size:100% 100%; 
		background-attachment: fixed;
	}
</style>
<body>
    <div class="dowebok" >
        <div class="form sign-in">
        <form action="/CM_relaease_war_exploded/loginServlet" method="post">
            <h2>�� ӭ �� ��</h2>
            <label>
                <span>�û���</span>
                <input type="text" name="employeeName"/>
            </label>

            <label>
                <span>����</span>
                <input type="password" name="password"/>
            </label>

             <div style="color: red; text-align:center" ><%=request.getAttribute("login_error") == null ? "" : request.getAttribute("login_error") %></div>

            <button type="submit" class="submit" >�� ¼</button>
        </form>

        </div>

        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h2>��δע�᣿</h2>
                    <p>����ע�ᣬ���ִ������ᣡ</p>
                </div>
                <div class="img__text m--in">
                    <h2>�����ʺţ�</h2>
                    <p>���ʺž͵�¼�ɣ��þò����ˣ�</p>
                </div>
                <div class="img__btn">
                    <span class="m--up">ע ��</span>
                    <span class="m--in">�� ¼</span>
                </div>
            </div>

            <div class="form sign-up">
            <form  action="/CM_relaease_war_exploded/RegisterServlet" method="post">
                <h2>����ע��</h2>
                <label>
                    <span>����</span>
                    <input type="text" name="employeename"/>
                </label>
                <label>
                    <span>����</span>
                    <input type="text" name="employeeid"/>
                </label>
				<label>
				    <span>�绰</span>
				    <input type="text" name="phone"/>
				</label>
                <label>
                    <span>����</span>
                    <input type="password" name="password"/>
                </label>
				<label>
				    <span>ȷ������</span>
				    <input type="password" name="password_sure"/>
				</label>
                <button type="submit" class="submit">ע ��</button>
            </form>
                <div style="color: red"><%=request.getAttribute("Register_error") == null ? "" : request.getAttribute("Register_error") %></div>
            </div>
        </div>
    </div>
    <script src="js/script.js"></script>

</body>

</html>