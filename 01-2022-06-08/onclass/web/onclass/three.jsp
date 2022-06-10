<%@ page import="javax.xml.xpath.XPath" %>
<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-08
  Time: 下午 06:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>第三题</title>
</head>
<body>
<%--3. 在jsp页面中定义一个方法，传入一个int 类型的数组，返回数组的最大值，然后在java代码区调用方法，用表达式将结果输出到客户端。--%>
<%!
    public static int max(int A[]) {
        int max = 0;
        for (int i : A) {
            max = Math.max(max, i);
        }
        return max;
    }
%>
<%=max(new int[]{1, 2, 3, 4, 2, 1, 4, 56, 123})%>
</body>
</html>
