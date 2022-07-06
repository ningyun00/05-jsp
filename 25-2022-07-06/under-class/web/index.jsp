<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-07-06
  Time: 下午 03:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        <form action="TestServlet" method="post" enctype="multipart/form-data">
            <input type="file" value="a" name="file"/><br />
            <input type="submit" value="提交" />
        </form>
    </body>
</html>
<%--
<html>
    <head>
        <meta http-equiv = "Content-Type" content = "text/html; charset=utf-8"/>
        <title>图片上传</title>
    </head>
    <body>
        <!-- 要将父布局的position设置为relative，父布局将无法包裹input -->
        <div style = "position: relative;">
            <!--设置input的position为absolute，使其不按文档流排版，并设置其包裹整个布局 -->
            <!-- 设置opactity为0，使input变透明 -->
            <!-- 只接受jpg，gif和png格式 -->
            <input id = "upload-input" type = "file" accept = "" onchange = "showImg(this)" multiple/>
            <!-- 自定义按钮效果 -->
            <textarea name = "images" id = "images"></textarea>
        </div>
        <div id = "imgContainer" style = "margin-top: 10px;"></div>
    </body>
    <script type = "text/javascript" src = "jquery-1.12.4.js"></script>
    <script type = "text/javascript">
        function showImg(obj) {
            var files = obj.files
            console.log(files);
            // document.getElementById("imgContainer").innerHTML = getImgsByUrl(files)
            getImgsByFileReader(document.getElementById("imgContainer"), files)
        }

        // 使用window.URL.createObjectURL(file)读取file实例并显示图片
        function getImgsByUrl(files) {
            var elements = ''
            for (var i = 0; i < files.length; i++) {
                var url = window.URL.createObjectURL(files[i])
                elements += "<img src='" + url + "' style='width: 40px; height: 40px; vertical-align: middle; margin-right: 5px;' />"
            }
            return elements
        }

        // 使用FileReader读取file实例并显示图片
        function getImgsByFileReader(el, files) {
            var reader = new FileReader();
            for (var i = 0; i < files.length; i++) {
                let img = document.createElement('img')
                img.setAttribute('style', 'width: 40px; height: 40px; vertical-align: middle; margin-right: 5px;')
                el.appendChild(img)
                reader.onload = function (e) {
                    img.src = e.target.result;
                    console.log(img.src)
                }
                reader.readAsDataURL(files[i]);
            }
            console.log(value)
        }
    </script>
</html>--%>
