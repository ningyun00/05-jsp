<%@ page import = "ning.ying.dao.FurloughApplyRealizeDao" %>
<%@ page import = "java.util.List" %>
<%@ page import = "ning.ying.entity.FurloughApply" %>
<%@ page import = "java.util.Collections" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.security.Timestamp" %><%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-16
  Time: 上午 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %><%--标签库--%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %><%--格式化标签库--%>
<html>
    <head>
        <title>请假申请系统</title>
        <link rel = "stylesheet" type = "text/css" href = "css/index.css">
    </head>
    <body>
        <div id = "div1_bottom" class = "div1">
            <div id = "div2_div1" class = "div2">
                <form action = "" method = "post">
                    <table id = "table1_div2" class = "table1">
                        <%--表头--%>
                        <thead id = "thead1_table1" class = "thead1">
                            <tr id = "tr1_thead1">
                                <th colspan = "6"><h3>请假申请系统</h3></th>
                            </tr>
                        </thead>
                        <%--表身--%>
                        <tbody id = "tbody1_table1" class = "tbody1">
                            <tr id = "tr1_tbody1">
                                <th id = "th1_tr2">申请人</th>
                                <th id = "th2_tr2">部门</th>
                                <th id = "th3_tr2">申请日期</th>
                                <th id = "th4_tr2">开始日期及时间</th>
                                <th id = "th5_tr2">结束日期及时间</th>
                                <th id = "th6_tr2">休假类型</th>
                            </tr>
                        </tbody>
                        <tbody id = "tbody2_table1" class = "tbody2">
                            <%--内容--%>
                            <%
                                FurloughApplyRealizeDao furloughApplyRealizeDao = new FurloughApplyRealizeDao();
                                List<FurloughApply> furloughApplyList = furloughApplyRealizeDao.selectFurloughApply();
                                request.setAttribute("furloughApplyList", furloughApplyList);
                            %>
                            <c:forEach items = "${requestScope.furloughApplyList}" var = "furloughList" varStatus = "i">
                                <tr id = "tr1_tbody2">
                                    <td>${furloughList.proposer}</td>
                                    <td>${furloughList.dept}</td>
                                    <td>${furloughList.applyDate}</td>
                                    <td>${furloughList.startTime}</td>
                                    <td>${furloughList.lasTime}</td>
                                    <td>${furloughList.type}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                        <tfoot id = "tfoot1_table1">
                            <tr id = "tr1_tfoot1">
                                <td colspan = "6">
                                    <button formaction = "add.jsp" id = "button1_td1">
                                        添加请假申请
                                    </button>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
