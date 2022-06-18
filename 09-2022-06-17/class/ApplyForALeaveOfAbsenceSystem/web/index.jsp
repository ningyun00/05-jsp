<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-18
  Time: 下午 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title>请假查询系统</title>
        <script type = "text/javascript" src = "Jquery/jquery-1.12.4.js"></script>
        <script type = "text/javascript" src = "Jquery/index.js"></script>
        <link rel = "stylesheet" href = "css/index.css" type = "text/css">
    </head>
    <body>
        <div id = "div1_bottom">
            <div id = "div2_div1">
                <form action = "selectFurServlet" method = "post">
                    <table id = "table1_div2">
                        <thead id = "thead1_table1">
                            <tr>
                                <th colspan = "6" id = "th1_tr1"><p id = "p1_th1">休假申请信息</p></th>
                            </tr>
                            <tr>
                                <th id = "th1_tr2">申请人</th>
                                <th id = "th2_tr2">部门</th>
                                <th id = "th3_tr2">申请日期</th>
                                <th id = "th4_tr2">开始日期及时间</th>
                                <th id = "th5_tr2">结束日期及时间</th>
                                <th id = "th6_tr2">休假类型</th>
                            </tr>
                        </thead>
                        <tbody id = "tbody1_table1" class = "tbody1">
                            <c:forEach items = "${requestScope.furArrayList}" var = "furArrayList">
                                <tr>
                                    <td>${furArrayList.proposer}</td>
                                    <td>${furArrayList.dept}</td>
                                    <td>${furArrayList.applyDate}</td>
                                    <td>
                                        <fmt:formatDate value = "${furArrayList.startTime}" pattern = "yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
                                    </td>
                                    <td>
                                        <fmt:formatDate value = "${furArrayList.lasTime}" pattern = "yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
                                    <td>${furArrayList.type} </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                        <tfoot id = "tfoot1_table1">
                            <tr>
                                <td colspan = "6" id = "td1_tfoot1">
                                    <input type = "submit" value = "申请" formaction = "add.jsp" id = "input1_td1">
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
