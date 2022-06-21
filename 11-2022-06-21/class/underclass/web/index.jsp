<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-21
  Time: 下午 09:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>作业</title>
        <link rel = "stylesheet" href = "css/index.css">
        <script type = "text/javascript" src = "js/jquery-1.12.4.js"></script>
        <script type = "text/javascript" src = "js/index.js"></script>
    </head>
    <body>
        <div id = "div1_bottom">
            <div id = "div2_div1">
                <form action = "">
                    <table id = "table1_div1">
                        <thead id = "thead1_table1">
                            <tr>
                                <th colspan = "3"><font style = "font-size: 25px">注册</font></th>
                            </tr>
                        </thead>
                        <tbody id = "tbody1_thead1">
                            <tr>
                                <td id = "td1_UName">用户名：</td>
                                <td id = "td2_UName">
                                    <input id = "input1_UName" type = "text" name = "UName" style = "width: 200px;" onblur = "UserPost()">
                                </td>
                                <td id = "td3_UName"><span id = "span_UName" style = "color: red"></span></td>
                            </tr>
                            <tr>
                                <td id = "td1_UPassword">密码：</td>
                                <td id = "td2_UPassword">
                                    <input type = "text" id = "input1_UPassword" name = "UPassword" style = "width: 200px;">
                                </td>
                                <td><span id = "span_UPassword"></span></td>
                            </tr>
                            <tr>
                                <td colspan = "3">
                                    省份：
                                    <select name = "province" id = "province" onchange = "selectCity()">
                                        <option value = "0"></option>
                                    </select>
                                    城市：
                                    <select name = "city" id = "city">
                                        <option value = "0"></option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan = "3">
                                    <input type = "submit" id = "id_submit">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
