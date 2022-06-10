<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-10
  Time: 下午 04:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%
    String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<html>
    <head>
        <title>添加学生</title>
    </head>
    <body>
        <div style="margin: 0px auto;width: 500px;height: 200px;background-color: red;">
            <div style="width: 250px;height: 200px;background-color:aqua;text-align: center;">
                <form action="<%=path%>/StudentServletAdd" method="post">
                    <p>姓名：<input type="text" name="SName"></p>
                    <p>性别：
                        <input type="radio" name="SSex" value="女" checked="checked">女
                        <input type="radio" name="SSex" value="男">男</p>
                    <p>生日：<input type="text" name="SDate"></p>
                    <input type="submit" value="提交">
                </form>
            </div>
        </div>
    </body>
</html>
