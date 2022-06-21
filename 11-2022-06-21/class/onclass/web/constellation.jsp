<%@ page import = "java.util.List" %>
<%@ page import = "ning.ying.entity.Constellation" %><%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-21
  Time: 下午 05:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>十二星座</title>
        <script type = "text/javascript" src = "js/jquery-1.12.4.js"></script>
    </head>
    <body>
        <%
            List<Constellation> constellationArrayList = (List<Constellation>) request.getAttribute("constellationArrayList");
            int i = 0;
            for (Constellation constellation : constellationArrayList) {
                i++;
        %>
        <input type = "radio" name = "shier" class = "radio" onclick="show(this)" value = "<%=i%>"><%=constellation.getCName()%>
        <%}%>
        <br>
        <textarea readonly id = "text_input" style="font-size: 100px"></textarea>
    </body>
    <script type = "text/javascript">
        var request = new XMLHttpRequest();
        if (request === undefined) {
            //如果浏览器版本较低（ie6以下）的创建请求方式
            request = new ActiveXObjct("Microsoft.XMLHTTP");
        }
        function show(o){
            var CID = $(o).val();
            request.open("post", "ConstellationServlet", true);
            request.setRequestHeader("content-Type", "application/x-www-form-urlencoded");
            request.send("CID=" + encodeURI(CID));
            request.onreadystatechange = callback;
        }
        function callback() {
            if (request.readyState === 4) {
                if (request.status === 200) {
                    var msg = request.responseText;
                    $("#text_input").val(msg);
                }
            }
        }
    </script>
</html>
