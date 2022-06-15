<%@ page import = "ning.ying.dao.FurloughApplyRealizeDao" %><%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-16
  Time: 下午 04:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %><%--标签库--%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %><%--格式化标签库--%>
<html>
    <head>
        <title>添加请假申请</title>
        <link rel = "stylesheet" href = "css/add.css" type = "text/css">
        <script>
            function fz() {
                if (document.getElementById("Name").value === "") {
                    alert("请输入姓名");
                    return false;
                }
                if (document.getElementById("fa").value === "") {
                    alert("请选时间");
                    return false;
                }
                if (document.getElementById("fl").value === "") {
                    alert("请选择开始时间");
                    return false;
                }
                if (document.getElementById("fs").value === "") {
                    alert("请选择结束时间");
                    return false;
                }
            }
        </script>
        <script src="Jquery/jquery-1.12.4.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                // 显示默认日期
                const time = new Date()
                const day = ("0" + time.getDate()).slice(-2)
                const month = ("0" + (time.getMonth() + 1)).slice(-2)
                const today = time.getFullYear() + "-" + (month) + "-" + (day)
                $("#EHireDate").val(today);
            });
        </script>
    </head>
    <body>
        <div id = "div1_bottom">
            <div id = "div2_div1">
                <form action = "/ning.ying/addFurloughApplyServlet" method = "post" id = "add1">
                    <table id = "table1_div2">
                        <thead id = "thead1_table1">
                            <tr>
                                <th colspan = "3"><h2>添加请假申请</h2></th>
                            </tr>
                        </thead>
                        <tbody id = "tbody1_table1">
                            <tr>
                                <td>请假申请人姓名：</td>
                                <td>
                                    <label>
                                        <input type = "text" name = "fProposer" id = "Name">
                                    </label>
                                </td>
                                <td name = "fError"></td>
                            </tr>
                            <tr>
                                <td>请假部门：</td>
                                <td>
                                    <label>
                                        <select name = "fDept">
                                            <option>人事部</option>
                                            <option>芭莎部</option>
                                            <option>暗示部</option>
                                            <option>二日部</option>
                                            <option>偶尔部</option>
                                        </select>
                                    </label>
                                </td>

                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>申请日期：</td>
                                <td>
                                    <label>
                                        <input name = "fApplyDate" type = "date" id = "fa">
                                    </label>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>开始日期及时间：</td>
                                <td>
                                    <label>
                                        <input name = "fStartTime" type="datetime-local" id = "fs">
                                    </label>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>结束日期及时间：</td>
                                <td>
                                    <label>
                                        <input name = "fLasTime" type = "datetime-local" id = "fl">
                                    </label>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>休假类型：</td>
                                <td>
                                    <label>
                                        <select name = "fType">
                                            <option>孕假</option>
                                            <option>节假</option>
                                            <option>国假</option>
                                            <option>家假</option>
                                            <option>炒假</option>
                                            <option>人假</option>
                                        </select>
                                    </label>
                                </td>
                                <td></td>
                            </tr>
                            <tr id = "tr6_tbody1">
                                <td colspan = "2" id = "td1_tr6">
                                    <input type = "submit" value = "提交" name = "addFurloughApply" id = "input1_td1" onclick = "return fz()">
                                </td>
                                <td id = "td7_tr6">
                                    <input type = "reset" value = "重置" id = "input1_td2">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
