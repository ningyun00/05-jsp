<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-11
  Time: 下午 04:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
    <head>
        <title>添加老师</title>
    </head>
    <body>
        <h3 style="text-align: center;">添加老师</h3>
        <div style="border: 1px solid red; background-color: aqua;width: 450px;margin: 0px auto;height: 150px; text-align: center;">
            <form action="/class/TeacherAddServlet" method="post">
                <p>老师姓名：<input type="text" name="TName"></p>
                <p>老师职业：<input type="text" name="TSubject"></p>
                <p><input type="submit" value="提交"></p>
            </form>
        </div>
    </body>
</html>
