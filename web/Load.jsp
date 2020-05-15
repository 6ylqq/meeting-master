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
            <h2>欢 迎 回 来</h2>
            <label>
                <span>用户名</span>
                <input type="text" name="employeeName"/>
            </label>

            <label>
                <span>密码</span>
                <input type="password" name="password"/>
            </label>

             <div style="color: red; text-align:center" ><%=request.getAttribute("login_error") == null ? "" : request.getAttribute("login_error") %></div>

            <button type="submit" class="submit" >登 录</button>
        </form>

        </div>

        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h2>还未注册？</h2>
                    <p>立即注册，发现大量机会！</p>
                </div>
                <div class="img__text m--in">
                    <h2>已有帐号？</h2>
                    <p>有帐号就登录吧，好久不见了！</p>
                </div>
                <div class="img__btn">
                    <span class="m--up">注 册</span>
                    <span class="m--in">登 录</span>
                </div>
            </div>

            <div class="form sign-up">
            <form  action="/CM_relaease_war_exploded/RegisterServlet" method="post">
                <h2>立即注册</h2>
                <label>
                    <span>姓名</span>
                    <input type="text" name="employeename"/>
                </label>
                <label>
                    <span>工号</span>
                    <input type="text" name="employeeid"/>
                </label>
				<label>
				    <span>电话</span>
				    <input type="text" name="phone"/>
				</label>
                <label>
                    <span>密码</span>
                    <input type="password" name="password"/>
                </label>
				<label>
				    <span>确认密码</span>
				    <input type="password" name="password_sure"/>
				</label>
                <button type="submit" class="submit">注 册</button>
            </form>
                <div style="color: red"><%=request.getAttribute("Register_error") == null ? "" : request.getAttribute("Register_error") %></div>
            </div>
        </div>
    </div>
    <script src="js/script.js"></script>

</body>

</html>