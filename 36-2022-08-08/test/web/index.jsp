<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-08-09
  Time: 上午 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>学生管理系统</title>
        <style>
            * {
                margin: 0px;
                padding: 0px;
            }

            a {
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div style = "width: 700px;margin: auto;padding: 0;">
            <form action = "" method = "post">
                <p style = "font-size: 25px;height: 50px;text-align: center;line-height: 50px;">学生管理系统</p>
                <table style = "text-align: center;" cellpadding = "0" cellspacing = "0" border = "1px solid #123456" width = "700px">
                    <thead>
                        <tr>
                            <th>编号</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>年龄</th>
                            <th>家庭住址</th>
                            <th>邮箱</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.Students}" var="students">
                            <tr style="height: 30px;">
                                <td width="10%">
                                    <a href = "IndexServlet?method=selectId&sid=${students.sid}">${students.sid}</a>
                                </td>
                                <td width="10%">${students.sname}</td>
                                <td width="10%">${students.sgender}</td>
                                <td width="10%">${students.sage}</td>
                                <td width="30%">${students.saddress}</td>
                                <td width="30%">${students.semaile}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                    <p style="text-align: center">

                    </p>
                </table>
            </form>
        </div>
    </body>
</html>
