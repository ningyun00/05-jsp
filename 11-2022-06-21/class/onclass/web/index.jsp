<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-21
  Time: 下午 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>2022-06-21作业</title>
        <script type = "text/javascript" src = "js/jquery-1.12.4.js"></script>
    </head>
    <body>
        <form action = "">
            &nbsp;&nbsp;&nbsp;&nbsp;用户名：<input type = "text" name = "UName" id = "UName_id" onblur = "UserPost()"><span style = "color: red" id = "UNameSpan"></span><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码：<input type = "password" name = "UPassword"><span></span><br>
            验证密码：<input type = "password"><span></span><br>
            <input type = "submit" formaction = "UserServlet" formmethod = "post" value = "注册">

            <br>

            省份：
            <select name = "province" id = "province" onchange = "selectCity()">
                <option value = "0">请选择</option>
            </select>
            城市：
            <select name = "city" id = "city">
                <option value = "0">请选择</option>
            </select>
            <button value = "十二星座介绍" name = "twelve" formmethod = "post" formaction = "ConstellationServlet">十二星座介绍
            </button>
        </form>
    </body>
    <script type = "text/javascript">
        $(function () {
            $.ajax({//jsp发出ajax请求
                type: "post", //请求方式
                url: "ProvinceServlet",//服务器的地址
                dataType: "json", //响应数据类型
                success: function (msg) {
                    var province = $("#province");//获取省份下拉列表
                    province.prop("length", 1);//清空省份下拉列表，设置长度为1表示只保留“请选择”
                    for (var i = 0; i < msg.length; i++) {
                        var pid = msg[i].PID;
                        var pname = msg[i].PName;
                        var options = "<option value=" + pid + ">" + pname + "</option>";
                        province.append(options);
                    }
                }
            });//ajax
        });

        function selectCity() {
            var pid = $("#province").val();
            if (pid === "0") {
                return;
            }
            /******指定josn请求******/
            $.getJSON(
                "CityServlet",
                {pid: pid},
                function (msg) {
                    var city = $("#city");//获取城市下拉列表
                    city.prop("length", 1);//清空城市下拉列表，设置长度为1表示只保留“请选择”
                    for (var i = 0; i < msg.length; i++) {
                        var cid = msg[i].CID;
                        var cname = msg[i].CName;
                        var options = "<option value=" + cid + ">" + cname + "</option>";
                        city.append(options);
                    }
                }
            );
        }

        var request = new XMLHttpRequest();
        if (request === undefined) {
            //如果浏览器版本较低（ie6以下）的创建请求方式
            request = new ActiveXObjct("Microsoft.XMLHTTP");
        }

        function UserPost() {
            var UName = $("#UName_id").val();
            request.open("post", "UserServlet", true);
            request.setRequestHeader("content-Type", "application/x-www-form-urlencoded");
            request.send("UName=" + encodeURI(UName));
            request.onreadystatechange = callback;

            function callback() {
                if (request.readyState === 4) {
                    if (request.status === 200) {
                        var msg = request.responseText;
                        $("#UNameSpan").html(msg);
                    }
                }
            }
        }
    </script>
</html>
