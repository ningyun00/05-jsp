<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-17
  Time: 上午 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>手机品牌</title>
        <link rel = "stylesheet" href = "css/index.css" type = "text/css">
    </head>
    <body>
        <div id = "div1_bottom">
            <div id = "div2_div1">
                <form action = "selectPhoneServlet" method = "post" id = "form1_div2">
                    <table id = "table1_form1">
                        <thead id = "thead1_table1">
                            <tr>
                                <th colspan = "6">
                                    <p id = "p1_th1">手机列表</p>
                                </th>
                            </tr>
                            <tr>
                                <th colspan = "6" id = "th1_tr2">手机品牌：
                                    <select name = "brand" id = "">
                                        <option value = "请选择">请选择</option>
                                        <option value = "NOKIA">NOKIA</option>
                                        <option value = "VIVO">VIVO</option>
                                        <option value = "OPPO">OPPO</option>
                                    </select>
                                    <label>
                                        <input type = "submit" value = "查询" id = "input1_th1" name = "select">
                                    </label>
                                </th>
                            </tr>
                            <tr>
                                <td id = "td1_tr3">序号</td>
                                <td id = "td2_tr3">型号</td>
                                <td id = "td3_tr3">品牌</td>
                                <td id = "td4_tr3">公司</td>
                                <td id = "td5_tr3">介绍</td>
                                <td id = "td6_tr3">操作</td>
                            </tr>
                        </thead>
                        <tbody id = "tbody1_table1">
                            <c:forEach items = "${requestScope.phoneArrayList}" var = "phoneList">
                                <tr id = "tr1_tbody1">
                                    <td>${phoneList.id}</td>
                                    <td>${phoneList.type}</td>
                                    <td>${phoneList.brand}</td>
                                    <td>${phoneList.company}</td>
                                    <td>${phoneList.introduciton}</td>
                                    <td>
                                        <button formaction = "deletePhoneServlet" formmethod = "post" value = "${phoneList.id}" name = "delete" onclick = "return confirm('是否删除吗？')" class = "button1">
                                            删除
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
