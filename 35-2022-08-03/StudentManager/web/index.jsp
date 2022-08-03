<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-08-03
  Time: 上午 09:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>学员信息管理系统</title>
        <style>
            div {
                margin: auto;
                width: 600px;
                background-color: #efefef;
            }

            #table1_tr3:nth-child(2n-1) {
                background-color: #2cec79;
            }

            #table1_tr3:nth-child(2n) {
                background-color: #b8acac;
            }
        </style>
    </head>
    <body>
        <div>
            <table cellpadding = "0" cellspacing = "0" border = "1px solid black" style = "width: 600px;text-align: center;">
                <tr>
                    <th colspan = "6"><p style = "font-size: 25px">学员编号</p></th>
                </tr>
                <tr>
                    <th>学员编号</th>
                    <th>学员姓名</th>
                    <th>学员性别</th>
                    <th>学员年龄</th>
                    <th>家庭住址</th>
                    <th>Email</th>
                </tr>
                <tbody>
                    <c:forEach items = "${requestScope.studentInfoList}" var = "student">
                        <tr id = "table1_tr3">
                            <td>
                                <a href = "IndexServlet?method=update&sid=${student.sid}">${student.sid}</a>
                            </td>
                            <td>${student.sname}</td>
                            <td>${student.sgender}</td>
                            <td>${student.sage}</td>
                            <td>${student.saddress}</td>
                            <td>${student.semaile}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <p style="text-align: center;font-size: 25px;color: red;font-family: '黑体'">
            <c:if test="${requestScope.state!=null}">${requestScope.state}</c:if>
        </p>
    </body>
</html>
