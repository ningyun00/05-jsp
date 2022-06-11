<%@ page import="onclass.entity.Teacher" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-11
  Time: 下午 05:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
    <head>
        <title>查询老师</title>
    </head>
    <body>
        <div style="margin: auto; width: 450px;">
            <table style="border: 1px solid red;width: 450px;">
                <form action="TeacherDeleteServlet" method="post">
                    <tr>
                        <th>教师编号</th>
                        <th>教师姓名</th>
                        <th>教师职业</th>
                        <th>执行选择</th>
                    </tr>
                    <%
                        List<Teacher> teacherArrayList = (List<Teacher>) request.getAttribute("teacherList");
                        for (Teacher teacher : teacherArrayList) {
                    %>
                    <tr style="text-align: center">
                        <td>
                            <%= teacher.getTID()%>
                        </td>
                        <td>
                            <%= teacher.getTName()%>
                        </td>
                        <td>
                            <%= teacher.getTSubject()%>
                        </td>
                        <td>
                            <button style="width: 60px;height: 20px;line-height: 20px;" name="TID" value="<%= teacher.getTID()%>">
                                删除
                            </button>
                        </td>
                    </tr>
                    <%}%>
                </form>
            </table>
        </div>
    </body>
</html>
