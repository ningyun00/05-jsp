<%@ page import = "ning.ying.dao.realize.RealizeEmpDao" %>
<%@ page import = "ning.ying.entity.Emp" %>
<%@ page import = "java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-13
  Time: 上午 09:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" pageEncoding = "utf-8" %>
<html>
    <head>
        <title>员工管理系统</title>
        <link rel = "stylesheet" href = "css/index.css" type = "text/css">
        <script type = "text/javascript" src = "Jquery/jquery-1.12.4.js"></script>
        <script type = "text/javascript" src = "Jquery/index.js"></script>
    </head>
    <body>
        <div id = "div1_bottom">
            <div id = "div2_div1">
                <table id = "table1_div2">
                    <thead id = "thead1_table1">
                        <tr><%--标题--%>
                            <th colspan = "8">
                                <h2>员工管理系统</h2>
                            </th>
                        </tr>
                        <tr><%--表头--%>
                            <th id = "th0_thead1">批量选择</th>
                            <th id = "th1_thead1">员工编号</th>
                            <th id = "th2_thead1">员工姓名</th>
                            <th id = "th3_thead1">员工性别</th>
                            <th id = "th4_thead1">电话号码</th>
                            <th id = "th5_thead1">入职日期</th>
                            <th colspan = "2" id = "th6_thead1">选择</th>
                        </tr>
                    </thead>
                    <tbody id = "tbody2_table1"><%--表身--%>
                        <form action = "/ning.ying/selectEmpServlet" method = "post">
                            <tr>
                                <td>
                                    <p>
                                        全选
                                        <input type = "checkbox" id = "ckall"><br>
                                        <input type = "checkbox" id = "reverse">
                                        反选
                                    </p>
                                </td>
                                <td colspan = "5">
                                    <p>请输入姓名进行模糊查询：<input id = "input1_tbody2" type = "text" name = "nameObscure">
                                    </p>
                                </td>
                                <td colspan = "2">
                                    <input id = "button4_tfoot1" type = "submit" value = "查询">
                                </td>
                            </tr>
                        </form>
                    </tbody>
                    <tbody id = "tbody3_table1" style = "color: red"><%--表身--%>
                        <form action = "/ning.ying/updateEmpServlet" method = "post">
                            <%
                                String ID = request.getParameter("update1_tbody1");
                                if (ID != null) {
                                    int EID = Integer.parseInt(request.getParameter("update1_tbody1"));//查寻ID
                                    RealizeEmpDao realizeEmpDao1 = new RealizeEmpDao();
                                    Emp emp = (Emp) realizeEmpDao1.select(EID);
                            %>
                            <tr>
                                <td></td>
                                <td>
                                    <p>
                                        <%=emp.getEID()%>
                                    </p>
                                </td>
                                <td>
                                    <input type = "text" style = "color: red" id = "input2_tfoot2" name = "EName"
                                           value = "<%= emp.getEName()%>">
                                </td>
                                <td>
                                    <% if ("男".equals(emp.getESex())) {%>
                                    <input type = "radio" style = "color: red" name = "ESex" value = "女">女
                                    <input type = "radio" style = "color: red" name = "ESex" checked = "checked" value = "男">男
                                    <%} else {%>
                                    <input type = "radio" style = "color: red" name = "ESex" checked = "checked" value = "女">女
                                    <input type = "radio" style = "color: red" name = "ESex" value = "男">男
                                    <%}%>
                                </td>
                                <td>
                                    <input type = "text" style = "color: red" id = "input3_tfoot2" width = "50"
                                           name = "ETelephone"
                                           value = "<%= emp.getETelephone()%>">
                                </td>
                                <td>
                                    <input width = "50" style = "color: red" type = "date" value = "<%= emp.getEHireDate()%>"
                                           name = "EHireDate">
                                </td>
                                <td colspan = "2">
                                    <button type = "submit" style = "color: black;background-color: red;"
                                            id = "button3_tfoot2" name = "EID"
                                            value = "<%=emp.getEID()%>"
                                            onclick = "return confirm('确定修改吗?')">
                                        修改
                                    </button>
                                </td>
                            </tr>
                            <%}%>
                        </form>
                    </tbody>
                    <form id = "form1_tbody1" action = "/ning.ying/deleteEmpServlet" method = "post">
                        <tbody id = "tbody1_table1"><%--表身--%>
                            <%
                                RealizeEmpDao realizeEmpDao = new RealizeEmpDao();
                                List<Object> o = realizeEmpDao.select();
                                if (request.getAttribute("objectList") != null) {
                                    o = (List<Object>) request.getAttribute("objectList");
                                } else if (request.getAttribute("objectList") == null) {
                                    o = realizeEmpDao.select();
                                }
                                for (Object object : o) {
                                    Emp emp = (Emp) object;
                            %>
                            <tr>
                                <td><%--选择框--%>
                                    <input type = "checkbox" value = " <%= emp.getEID()%>" name = "hobby" id = "checkbox1_form1">
                                </td>
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
                                    <button id = "button1_tbody1" name = "update1_tbody1" onclick = "return confirm('确定修改吗?')" formaction = "/ning.ying/index.jsp" value = "<%= emp.getEID()%>">
                                        修改
                                    </button>
                                </td>
                                <td>
                                    <button id = "button2_tbody1" name = "delete1_tbody1" onclick = "return confirm('确定删除吗?')" value = "<%= emp.getEID()%>">
                                        删除
                                    </button>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                        <tbody id = "tbody4_table1">
                            <form action = "" method = "post">
                                <tr>
                                    <%--批量删除--%>
                                    <td>
                                        <button form = "form1_tbody1" value = "" id = "button1_tfoot1" onclick = "return confirm('确定删除吗?')">
                                            批量删除
                                        </button>
                                    </td>
                                    <%
                                        int oneLimit = 1;
                                        int bulkMaxRow = 1;
                                        if (request.getAttribute("oneLimit") != null && request.getAttribute("bulkMaxRow") != null) {
                                            oneLimit = Integer.parseInt(String.valueOf(request.getAttribute("oneLimit")));
                                            bulkMaxRow = Integer.parseInt(String.valueOf(request.getAttribute("bulkMaxRow")));
                                        }
                                    %>
                                    <% if (oneLimit > 1) {%>
                                    <td>
                                        <button formaction = "/ning.ying/" value = "" id = "button1_tbody4" name = "start">
                                            首页
                                        </button>
                                    </td>
                                    <td>
                                        <button formaction = "/ning.ying/selectEmpServlet" value = "<%=oneLimit-1%>" id = "button2_tbody4" name = "Last">
                                            上一页
                                        </button>
                                    </td>
                                    <%} else {%>
                                    <td>
                                        <button formaction = "/ning.ying/" value = "" id = "button6_tbody4" name = "start">
                                            首页
                                        </button>
                                    </td>
                                    <td>
                                        <button formaction = "/ning.ying/" value = "" id = "button7_tbody4" name = "Last">
                                            上一页
                                        </button>
                                    </td>
                                    <%}%>
                                    <td colspan = "3">
                                        <input type = "text" id = "input1_tbody4" value = "请输入页数" name = "inputLimit">
                                        <button formaction = "/ning.ying/selectEmpServlet" id = "button3_tbody4">
                                            build
                                        </button>
                                    </td>
                                    <%
                                        if (oneLimit < bulkMaxRow) {
                                    %>
                                    <td>
                                        <button formaction = "/ning.ying/selectEmpServlet" value = "<%=oneLimit+1%>" id = "button4_tbody4" name = "next">
                                            下一页
                                        </button>
                                    </td>
                                    <td>
                                        <button formaction = "/ning.ying/selectEmpServlet" value = "<%=bulkMaxRow%>" id = "button5_tbody4" name = "next">
                                            尾页
                                        </button>
                                    </td>
                                    <%} else {%>
                                    <td>
                                        <button formaction = "/ning.ying/selectEmpServlet" value = "<%=bulkMaxRow%>" id = "button8_tbody4" name = "next">
                                            下一页
                                        </button>
                                    </td>
                                    <td>
                                        <button formaction = "/ning.ying/selectEmpServlet" value = "<%=bulkMaxRow%>" id = "button9_tbody4" name = "next">
                                            尾页
                                        </button>
                                    </td>
                                    <%}%>
                                </tr>
                            </form>
                        </tbody>
                        <%--表尾--%>
                        <tfoot id = "tfoot1_table1">
                            <tr>
                                <td>
                                    <p>NEXT</p>
                                </td>
                                <%--添加--%>
                                <%
                                    int max = realizeEmpDao.maxLimit();
                                %>
                                <form action = "/ning.ying/addEmpServlet?EID=<%=max+1%>" method = "post">
                                    <td>
                                        <p style = "color:red;">
                                            <%=max + 1%>
                                        </p>
                                    </td>
                                    <td>
                                        <input type = "text" id = "input2_tfoot1" name = "EName" value = "请输姓名">
                                    </td>
                                    <td>
                                        <input type = "radio" name = "ESex" value = "女" checked = "checked">女
                                        <input type = "radio" name = "ESex" value = "男">男
                                    </td>
                                    <td>
                                        <input type = "text" id = "input3_tfoot1" width = "50" name = "ETelephone" value = "请输入电话号码">
                                    </td>
                                    <td>
                                        <input id = "EHireDate" width = "50" type = "date" value = "" name = "EHireDate">
                                    </td>
                                    <td colspan = "2">
                                        <input type = "submit" id = "button3_tfoot1" value = "添加">
                                    </td>
                                </form>
                            </tr>
                        </tfoot>
                    </form>
                </table>
            </div>
        </div>
    </body>
</html>
