<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-08
  Time: 下午 04:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>第一题</title>
</head>
<body>
<%--1.写一个jsp数据，在jsp中写一个全局的方法,传入三个int的数据,返回最大值,然后在Java的代码区调用方法，用表达式将结果输出到客户端--%>
<%!
    public int Max(int one, int two, int three) {
        int max;
        max = Math.max(one, two);
        max = Math.max(max, three);
        return max;
    }
%>
<%= Max(12, 0, 10)%>
</body>
</html>
