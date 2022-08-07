<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-08-10
  Time: 上午 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>修改学生信息</title>
        <style>
            * {
                margin: 0;
                padding: 0;
            }

            tr {
                height: 30px;
            }

            th {
                margin: 0;
                padding: 0;
                width: 30%;
            }

            td {
                width: 70%;
            }

            td input {
                width: 100%;
            }
        </style>
    </head>
    <body>
        <div style = "width: 300px;margin: auto;padding-top: 50px">
            <form action = "IndexServlet?method=update" method = "post">
                <table style = "border-color: green;width: 300px" cellspacing = "0" cellpadding = "0" border = "1px">
                    <thead>
                        <tr hidden>
                            <th>编号</th>
                            <td>
                                <input type = "text" name = "sid" value = "${requestScope.student.sid}">
                            </td>
                        </tr>
                        <tr>
                            <th>姓名</th>
                            <td>
                                <input class = "clear" id = "sname" type = "text" name = "sname" value = "${requestScope.student.sname}">
                            </td>
                        </tr>
                        <tr>
                            <th>性别</th>
                            <td>
                                <input class = "clear" type = "text" name = "ssex" value = "${requestScope.student.sgender}">
                            </td>
                        </tr>
                        <tr>
                            <th>年龄</th>
                            <td>
                                <input class = "clear" type = "text" name = "sage" value = "${requestScope.student.sage}">
                            </td>
                        </tr>
                        <tr>
                            <th>家庭住址</th>
                            <td>
                                <input class = "clear" type = "text" name = "saddress" value = "${requestScope.student.saddress}">
                            </td>
                        </tr>
                        <tr>
                            <th>电子邮箱</th>
                            <td>
                                <input class = "clear" type = "text" name = "semail" value = "${requestScope.student.semaile}">
                            </td>
                        </tr>
                        <tr>
                            <th colspan = "2">
                                <input style = "width: 50px" type = "button" onclick = "(function () {
                                    for(let i = 0; i < document.getElementsByClassName('clear').length; i++) {
                                        document.getElementsByClassName('clear').item(i).value = '';
                                    }}
                                    ())" value = "清空">
                                <input style = "width: 50px" type = "submit" value = "修改" onclick = "return (function (){
                                       for(let i = 0; i < document.getElementsByClassName('clear').length; i++) {
                                        if (document.getElementsByClassName('clear').item(i).value===''){
                                            alert('请输入完整内容');
                                            return false;
                                        }else{
                                            if(confirm('是否修改')){
                                                return true;
                                            }else{
                                                return false;
                                            }
                                        }
                                    }}
                                ())">
                            </th>
                        </tr>
                    </thead>
                </table>
            </form>
        </div>
    </body>
</html>
