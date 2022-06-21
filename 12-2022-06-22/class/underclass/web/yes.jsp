<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-22
  Time: 下午 03:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>登录成功</title>
    </head>
    <body>
        <form action = "YesServlet" method = "post">
            请输入动态验证密码：<input type = "text" name = "six"><input type = "submit" value = "提交">
        </form>
    </body>
</html>
