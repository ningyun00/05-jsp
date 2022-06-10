<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-10
  Time: 下午 04:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%
    String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<html>
    <head>
        <title>03-2022-06-10</title>
    </head>
    <body>
        <h4 style="text-align: center">主界面</h4>
        <h3 style="text-align: center">上机</h3>
        <div style="margin: 0px auto;width: 250px;height: 200px;text-align: center;">
            <a href="/class/StudentServletSelectAll">查询学生信息</a>
            <br>
            <a href="/class/onclass/add.jsp">添加学生信息</a>
            <br>
            <form action="/class/StudentServletDelete" method="post">
                <p>请输入要删除的编号：<input type="text" name="index_Sid"></p>
                <input type="submit" value="删除">
            </form>
            <form action="/class/StudentServletSelectAll" method="post">
                <input type="submit" value="查询所有学生">
            </form>
        </div>
        <h3 style="text-align: center">课后</h3>
        <div style="margin: 0px auto;width: 200px;text-align: center;">
            <form action="/class/underclass/select.jsp" method="post">
                <a href="/class/underclass/add.jsp">添加商品</a><br><br>
                <input type="submit" value="查询所有商品">
            </form>
        </div>
    </body>
</html>
