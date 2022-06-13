<%@ page import="ning.ying.dao.realize.RealizeEmpDao" %>
<%@ page import="ning.ying.entity.Emp" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-13
  Time: 上午 09:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
    <head>
        <title>员工管理系统</title>
        <link rel="stylesheet" href="css/index.css" type="text/css">
    </head>
    <body>
        <div id="div1_bottom">
            <div id="div2_div1">
                <table id="table1_div2">
                    <thead id="thead1_table1">
                        <tr><%--标题--%>
                            <th colspan="7">
                                <h2>员工管理系统</h2>
                            </th>
                        </tr>
                        <tr><%--表头--%>
                            <th id="th1_thead1">员工编号</th>
                            <th id="th2_thead1">员工姓名</th>
                            <th id="th3_thead1">员工性别</th>
                            <th id="th4_thead1">电话号码</th>
                            <th id="th5_thead1">入职日期</th>
                            <th colspan="2" id="th6_thead1">选择</th>
                        </tr>
                    </thead>
                    <tbody id="tbody2_table1"><%--表身--%>
                        <form action="/ning.ying/selectEmpServlet" method="post">
                            <tr>
                                <td colspan="5">
                                    <p>请输入姓名进行模糊查询：<input id="input1_tbody2" type="text" name="nameObscure"></p>
                                </td>
                                <td colspan="2">
                                    <input id="button4_tfoot1" type="submit" value="查询">
                                </td>
                            </tr>
                        </form>
                    </tbody>
                    <tbody id="tbody3_table1" style="color: red"><%--表尾--%>
                        <form action="/ning.ying/updateEmpServlet" method="post">
                            <%
                                String ID = request.getParameter("update1_tbody1");
                                if (ID != null) {
                                    int EID = Integer.parseInt(request.getParameter("update1_tbody1"));//查寻ID
                                    RealizeEmpDao realizeEmpDao1 = new RealizeEmpDao();
                                    Emp emp = (Emp) realizeEmpDao1.select(EID);
                            %>
                            <tr>
                                <td>
                                    <p>
                                        <%=emp.getEID()%>
                                    </p>
                                </td>
                                <td>
                                    <input type="text" style="color: red" id="input2_tfoot2" name="EName"
                                           value="<%= emp.getEName()%>">
                                </td>
                                <td>
                                    <% if ("男".equals(emp.getESex())) {%>
                                    <input type="radio" style="color: red" name="ESex" value="女">女
                                    <input type="radio" style="color: red" name="ESex" checked="checked" value="男">男
                                    <%} else {%>
                                    <input type="radio" style="color: red" name="ESex" checked="checked" value="女">女
                                    <input type="radio" style="color: red" name="ESex" value="男">男
                                    <%}%>
                                </td>
                                <td>
                                    <input type="text" style="color: red" id="input3_tfoot2" width="50"
                                           name="ETelephone"
                                           value="<%= emp.getETelephone()%>">
                                </td>
                                <td>
                                    <input width="50" style="color: red" type="date" value="<%= emp.getEHireDate()%>"
                                           name="EHireDate">
                                </td>
                                <td colspan="2">
                                    <button type="submit" style="color: black;background-color: red;"
                                            id="button3_tfoot2" name="EID"
                                            value="<%=emp.getEID()%>">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <%}%>
                        </form>
                    </tbody>
                    <tbody id="tbody1_table1"><%--表身--%>
                        <%
                            int i = 0;
                            RealizeEmpDao realizeEmpDao = new RealizeEmpDao();
                            List<Object> o = realizeEmpDao.select();
                            if (request.getAttribute("objectList") != null) {
                                o = (List<Object>) request.getAttribute("objectList");
                            }
                            if (request.getAttribute("objectList") == null) {
                                o = realizeEmpDao.select();
                            }
                            for (Object object : o) {
                                Emp emp = (Emp) object;
                        %>
                        <form id="form1_tbody1" action="/ning.ying/deleteEmpServlet" method="get">
                            <tr>
                                <td>
                                    <%= emp.getEID()%>
                                </td>
                                <td>
                                    <%= emp.getEName()%>
                                </td>
                                <td>
                                    <%= emp.getESex()%>
                                </td>
                                <td>
                                    <%= emp.getETelephone()%>
                                </td>
                                <td>
                                    <p>
                                        <%= emp.getEHireDate()%>
                                    </p>
                                </td>
                                <td>
                                    <button id="button1_tbody1" name="update1_tbody1" formaction="/ning.ying/index.jsp"
                                            value="<%= emp.getEID()%>">
                                        修改
                                    </button>
                                </td>
                                <td>
                                    <button id="button2_tbody1" name="delete1_tbody1" value="<%= emp.getEID()%>">
                                        删除
                                    </button>
                                </td>
                            </tr>
                        </form>
                        <%
                                i = emp.getEID();
                            }
                        %>
                    </tbody>
                    <tfoot id="tfoot1_table1"><%--表尾--%>
                        <form action="/ning.ying/addEmpServlet?EID=<%=i +=1%>" method="post">
                            <tr>
                                <td>
                                    <p>
                                        <%=i%>
                                    </p>
                                </td>
                                <td>
                                    <input type="text" id="input2_tfoot1" name="EName" value="请输姓名">
                                </td>
                                <td>
                                    <input type="radio" name="ESex" value="女" checked="checked">女
                                    <input type="radio" name="ESex" value="男">男
                                </td>
                                <td>
                                    <input type="text" id="input3_tfoot1" width="50" name="ETelephone" value="请输入电话号码">
                                </td>
                                <td>
                                    <input id="EHireDate" width="50" type="date" value="" name="EHireDate">
                                </td>
                                <td colspan="2">
                                    <input type="submit" id="button3_tfoot1" value="添加">
                                </td>
                            </tr>
                        </form>
                    </tfoot>
                </table>
            </div>
        </div>
    </body>
    <script type="text/javascript">
        $(document).ready(function () {
            // 显示默认日期
            const time = new Date()
            const day = ("0" + time.getDate()).slice(-2)
            const month = ("0" + (time.getMonth() + 1)).slice(-2)
            const today = time.getFullYear() + "-" + (month) + "-" + (day)
            $("#EHireDate").val(today);
        });
    </script>
</html>
