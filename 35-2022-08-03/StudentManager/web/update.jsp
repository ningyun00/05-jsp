<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-08-03
  Time: 上午 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>修改学员信息</title>
        <style>
            div {
                margin: auto;
                width: 270px;
                text-align: center;
            }

            tbody tr {
                height: 40px;
            }

            tbody tr input {
                width: 190px;
                height: 30px;
                margin: auto;
            }

            tfoot tr input {
                height: 30px;
                text-align: center;
                margin: auto;
            }
        </style>
        <script type = "text/javascript">
            function state() {
                var sname = document.getElementById("sname").value;
                var sgendar = document.getElementById("sgendar").value;
                var sage = document.getElementById("sage").value;
                var saddress = document.getElementById("saddress").value;
                var semail = document.getElementById("semail").value;
                if (sname === "" || sgendar === "" || sage === "" || saddress === "" || semail === "") {
                    alert("请输入完整学员信息在修改！");
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
        <div>
            <form action = "IndexServlet?method=updateStudent&sid=${requestScope.studentInfo.sid}" method = "post">
                <table cellspacing = "0" cellpadding = "0" border = "1px solid blick" style = "width: 270px">
                    <thead>
                        <tr>
                            <th colspan = "2" style = "line-height: 60px"><p style = "font-size: 25px">学员信息</p></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>学员姓名:</th>
                            <td>
                                <input type = "text" name = "sname" id = "sname">
                            </td>
                        </tr>
                        <tr>
                            <th>学员性别:</th>
                            <td>
                                <input type = "text" name = "sgendar" id = "sgendar">
                            </td>
                        </tr>
                        <tr>
                            <th>学员年龄:</th>
                            <td>
                                <input type = "text" name = "sage" id = "sage">
                            </td>
                        </tr>
                        <tr>
                            <th>家庭住址:</th>
                            <td>
                                <input type = "text" name = "saddress" id = "saddress">
                            </td>
                        </tr>
                        <tr>
                            <th>Email:</th>
                            <td>
                                <input type = "text" name = "semail" id = "semail">
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th colspan = "2">
                                <input type = "submit" value = "提交" onclick = "return state()">&nbsp;&nbsp;&nbsp;
                                <input type = "reset" value = "重置">
                            </th>
                        </tr>
                    </tfoot>
                </table>
            </form>
        </div>
    </body>
</html>
