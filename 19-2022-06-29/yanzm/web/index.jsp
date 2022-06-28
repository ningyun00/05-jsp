<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-29
  Time: 下午 02:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <input type = "text" value = "" class = "l_ipt" name = "vscode" onblur = "yz(this.value)"/>
        <img id = "veryCode" src = "TestServlet?method=veryCode" valign = "middle" title = "看不清？单击换一张图片"/>
        <a href = "javascript:changeVeryCode()" style = "font-size:12px; font-family:'宋体';">换一张</a>
    </body>
    <script type = "text/javascript">
        function changeVeryCode() {//刷新 验证码 函数
            //加随机数参数是为了，频繁'换一张'时，请求能够正常发送（相同地址频繁发送请求，浏览器会阻住）
            document.getElementById("veryCode").src = "TestServlet?method=veryCode&m=" + Math.random();
        }
        var valVCFlag = false;//输入的和生成的验证码一致就赋值为false
        function yz(yzm) {//验证 验证码 函数
            $.ajax({
                url: "TestServlet",//表示的意思就是我们请求的是哪一个资源
                data: "method=valVeryCode&yzm=" + yzm,//表示的是我们请求时需要带去的值
                success: function (msg) {//表示的是接收返回的值
                    valVCFlag = msg;//输入的验证码不正确！接收到 true
                    // alert(msg);
                }
            });
        }
    </script>
</html>
