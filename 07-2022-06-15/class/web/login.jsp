<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-15
  Time: 上午 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>登录页面</title>
        <link rel = "stylesheet" href = "css/login.css">
    </head>
    <body>
        <%--提交表单--%>
        <form action = "/ning.ying/selectEmpServlet" method = "post">
            <%--底部--%>
            <div id = "div1_bottom">
                <%--上层--%>
                <div id = "div2_div1">
                    <%--表格--%>
                    <table id = "table1_div2">
                        <%--表头--%>
                        <thead id = "thead1_table1">
                            <tr>
                                <th colspan = "2"><h2>员工管理系统</h2></th>
                            </tr>
                        </thead>
                        <tbody id = "tbody1_table1">
                            <%--用户名--%>
                            <tr>
                                <td>
                                    <p id = "p2_table1">用户名：</p>
                                </td>
                                <td>
                                    <label>
                                        <input id = "input1_tbody1" name = "userName" type = "text">
                                    </label>
                                </td>
                            </tr>
                            <%--密码--%>
                            <tr>
                                <td><p id = "p3_table1">密&nbsp;&nbsp;&nbsp;码：</p></td>
                                <td>
                                    <label>
                                        <input id = "input2_tbody1" name = "userPassword" type = "password">
                                    </label>
                                </td>
                            </tr>
                        </tbody>
                        <%--登录--%>
                        <tr>
                            <td colspan = "2">
                                <label>
                                    <input id = "input3_tbody1" name = "login" type = "submit" value = "登录">
                                </label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
    </body>
</html>
