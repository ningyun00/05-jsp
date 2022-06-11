<%@ page import="onclass.entity.Teacher" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-12
  Time: 上午 02:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
    <head>
        <title>修改老师</title>
    </head>
    <body>
        <div style="width: 318px;height: auto;margin: auto;text-align: center;">
            <form action="/class/TeacherUpdateServlet" method="post">
                <table style="text-align: center; border: 2px solid red;">
                    <tr style="text-align: center;">
                        <th>教师编号</th>
                        <th>教师姓名</th>
                        <th>教师职业</th>
                    </tr>
                    <tr style="text-align: center;">
                        <td>
                            <select style="width: 100px;height: 20px;" name="TID" id="">
                                <%
                                    List<Teacher> teacherArrayList = (List<Teacher>) request.getAttribute("teacherList");
                                    for (Teacher teacher : teacherArrayList) {
                                %>
                                <option value="<%=teacher.getTID()%>"><%=teacher.getTID()%>
                                </option>
                                <%}%>
                            </select>
                        </td>
                        <td><input type="text" name="TName" style="width: 100px;height: 20px;margin: 0;padding: 0;">
                        </td>
                        <td><input type="text" name="TSubject" style="width: 100px;height: 20px;margin: 0;padding: 0;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center"><input type="submit" value="修改"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
