<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-15
  Time: 下午 04:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <%
            if (session.getAttribute("userName") == null) {
                out.print("<script>alert('您没有权限访问，请先登录！');location.href='login.jsp'</script>");
            }
        %>
    </body>
</html>
