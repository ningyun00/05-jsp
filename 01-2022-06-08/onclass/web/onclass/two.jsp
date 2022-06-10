<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-08
  Time: 下午 06:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>第二题</title>
    </head>
    <body>
        <%--2.写一个jsp，声明一个ArryList的集合，存放5个数据（类型随意）,然后 Java的代码区,遍历集合,用表达式输出到客户端--%>
        <%
            List list = new ArrayList();
            list.add("阿斯蒂芬");
            list.add("阿斯蒂芬");
            list.add("阿斯蒂sdfghj芬");
            list.add("阿斯蒂芬fghjk");
        %>
        <%= list%>
    </body>
</html>
