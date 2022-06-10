<%@ page import="underclass.dao.realize.ProductRealizeDao" %>
<%@ page import="underclass.entity.Product" %>
<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-11
  Time: 上午 01:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
    <head>
        <title>查询结果</title>
    </head>
    <body>
        <%
            ProductRealizeDao productRealizeDao = new ProductRealizeDao();
        %>
        <h3 style="text-align:center">查询结果 <a href="/class/index.jsp">回到主页</a></h3>
        <div style="margin:0px auto;width: 400px;">
            <table style="border: 2px  solid black;width: 400px;">
                <tr style="text-align: center;">
                    <td>商品编号</td>
                    <td>商品名称</td>
                    <td>商品价格</td>
                    <td>商品描述</td>
                    <td>是否删除</td>
                </tr>
                <% for (Product product : productRealizeDao.selectAll()) {%>
                <form action="/class/DeleteProductServlet" method="post">
                    <tr style="text-align: center;">
                        <td>
                            <input type="text" value="<%= product.getPid()%>" name="sid" style="border: 1px;width: 30px;text-align: center;" readonly="readonly">
                        </td>
                        <td><%= product.getPname()%>
                        </td>
                        <td><%= product.getPrice()%>
                        </td>
                        <td><%= product.getPdesc()%>
                        </td>
                        <td><button name="id" value="<%= product.getPid()%>">删除</button></td>
                    </tr>
                    <%}%>
                </form>
            </table>
        </div>
    </body>
</html>
