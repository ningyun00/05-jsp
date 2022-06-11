<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-12
  Time: 下午 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
    <head>
        <title>title</title>
        <link rel="stylesheet" type="text/css" href="css/home.css">
    </head>
    <body>
        <div id="div1_underlying">
            <div id="div2_underlying">
                <h2 id="h2_div2_underlying">主界面</h2>
                <form id="form1_div2" action="">
                    <table id="table1_h2_div2">
                        <thead id="thead1_table1_h2" style="border: 1px">
                            <tr id="tr1_thead1">
                                <th>商品编号</th>
                                <th>商品名称</th>
                                <th>商品原价</th>
                                <th>商品现价</th>
                                <th>
                                    <a href="">商品类型</a>
                                </th>
                                <th>
                                    商品状态
                                </th>
                                <th>
                                    删除商品
                                </th>
                            </tr>
                        </thead>
                        <tbody id="tbody1_thead1_table1">
                            <%
                                for (int i = 1; i <= 100; i++) {
                            %>
                            <tr id="tr<%=i%>_tbody1">
                                <td>
                                    <a href="?id<%=i%>"><%=i%>-1</a>
                                </td>
                                <td><%=i%>-2</td>
                                <td><%=i%>-3</td>
                                <td><%=i%>-4</td>
                                <td>
                                    <a href="">1-6</a>
                                </td>
                                <td>
                                    <select name="" id="select<%=i%>_tbody1">
                                        <option>上架</option>
                                        <option selected="selected">下架</option>
                                    </select>
                                </td>
                                <td>
                                    <button id="button<%=i%>_tbody1" value="删除">删除</button>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
