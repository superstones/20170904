<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/5
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>登录</title>

    <link rel="stylesheet" href="css/common.css">
    <style>
        .td-img {
            width: 24px;
            height: 24px;
        }

        #div-login {
            margin-left: 40%;
            margin-top: 20px;
            height: 400px;
        }
    </style>
    <SCRIPT>
        function check(login) {
            var username = login.name.value;
            var password = login.pass.value;
            if (username === "") {
                alert("账户名不能为空");
                return false;
            } else if (password === "") {
                alert("密码不能为空");
                return false;
            } else {
                return true;
            }
        }
    </SCRIPT>
</head>
<body>


<div id="div-login">
    <form action="Login" method="post" name="login" onsubmit="return check(this)">
        <table cellspacing="20">
            <tr>

                <td>用户名：</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>

                <td>密 码：</td>
                <td><input type="password" name="pass"></td>
            </tr>
            <tr>
                <td>验证码：</td>
                <td><input type="text" name="check_code">
                    <img src="Servlet/CheckCode"></td>
            </tr>
            <tr>

                <td>验证码：</td>
                <td><input type="text" name="check_code"> &nbsp;
                    <img src="${pageContext.request.contextPath}/CheckCode"></td>
            </tr>
            <tr align="center">
                <td colspan="3">
                    <button type="submit">登录</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="reset">取消</button>
                </td>
            </tr>
        </table>
    </form>
</div>



</body>
</html>
