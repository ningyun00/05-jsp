<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-19
  Time: 上午 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title>请假申请</title>
        <link rel = "stylesheet" href = "css/add.css" type = "text/css">
        <script type = "text/javascript" src = "Jquery/jquery-1.12.4.js"></script>
        <script type = "text/javascript" src = "Jquery/add.js"></script>
    </head>
    <body>
        <div id = "div1_bottom">
            <div id = "div2_div1">
                <form action = "addFurServlet" method = "post">
                    <table id = "table1_div2">
                        <thead id = "thead1_table1">
                            <tr>
                                <th colspan = "3"><p id = "p1_th1">休假申请</p></th>
                            </tr>
                        </thead>
                        <tbody id = "tbody1_table1">
                            <tr>
                                <td id = "td1_tbody1" class = "td_tbody"><p>申请人：</p></td>
                                <td id = "td2_tbody1" colspan = "2">
                                    <label>
                                        <input type = "text" name = "proposer" id = "proposer_id">
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td class = "td_tbody"><p>部门：</p></td>
                                <td colspan = "2">
                                    <select name = "dept" id = "select1_td">
                                        <option value = "请选择">请选择</option>
                                        <option value = "人事部">人事部</option>
                                        <option value = "大人部">大人部</option>
                                        <option value = "大狗部">大狗部</option>
                                        <option value = "知道部">知道部</option>
                                    </select>
                                </td>

                            </tr>
                            <tr>
                                <td class = "td_tbody"><p>申请日期：</p></td>
                                <td colspan = "2">
                                    <label>
                                        <input type = "date" id = "date_input" readonly name = "applyDate">
                                    </label>
                                    如：yyyy-MM-dd
                                </td>
                            </tr>
                            <tr>
                                <td class = "td_tbody"><p>开始日期及时间：</p></td>
                                <td colspan = "2">
                                    <label>
                                        <input type = "datetime-local" step = "1" id = "startTime_input" name = "startTime">
                                    </label>
                                    如：yyyy-MM-dd HH:mm:ss
                                </td>
                            </tr>
                            <tr>
                                <td class = "td_tbody"><p>结束日期及时间：</p></td>
                                <td colspan = "2">
                                    <label>
                                        <input type = "datetime-local" step = "1" id = "lastTime_input" name = "lastTime">
                                    </label>
                                    如：yyyy-MM-dd HH:mm:ss
                                </td>
                            </tr>
                            <tr>
                                <td class = "td_tbody"><p>休假类型：</p></td>
                                <td colspan = "2">
                                    <select name = "type" id = "select2_td">
                                        <option value = "请选择">请选择</option>
                                        <option value = "事假">事假</option>
                                        <option value = "病假">病假</option>
                                        <option value = "孕价">孕价</option>
                                        <option value = "无条件请假">无条件请假</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan = "3" id = "td1_tr7_tbody1">
                                    <input type = "submit" name="submit" value = "申请" id = "input1_td" class = "input_td1">
                                    <input type = "reset" value = "重置" class = "input_td1">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
