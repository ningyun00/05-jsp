<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-11
  Time: 上午 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
    <head>
        <title>添加商品</title>
    </head>
    <body>
        <div style="margin: 0px auto;width: 300px;text-align: center;">
            <form action="/class/AddProductServlet" method="post">
                <p>商品名称：<input type="text" name="pname"></p>
                <p>商品价格：<input type="text" name="price"></p>
                <p>商品描述：<input type="text" name="pdesc"></p>
                <input type="submit" value="提交">
            </form>
        </div>
    </body>
</html>
