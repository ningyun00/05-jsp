<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-09
  Time: 下午 04:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();//当前访问的地址
    //http                     //本机IP地址                         //端口号
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
    <head>
        <title>上机作业</title>
    </head>
    <body>
        <div style="width: 400px;margin:0px auto;">
            <a href="<%=basePath%>/One">上机第一题</a>
            <a href="<%=basePath%>/Two">上机第二题</a>
            <a href="<%=basePath%>/Three">上机第三题</a>
            <a href="<%=basePath%>/UnOne">课后第一题</a>
            <form action="<%=basePath%>/Three" method="post">
                <p>用户名：<input type="text" name="name"></p>
                <p>密  码：<input type="text" name="password"></p>
                <p><input type="submit" value="提交"></p>
            </form>
            <p>课后第二题</p>
            <form action="<%=basePath%>/UnTwo" method="get">
                <p>请输入第一个数：<input type="text" name="one" style="width: 180px"></p>
                <p>请选择计算方式：<select name="algorithm" id="asd" style="width: 180px">
                    <option value="+">+</option>
                    <option value="-">-</option>
                    <option value="*">*</option>
                    <option value="/">÷</option>
                </select>
                </p>
                <p>请输入第二个数：<input type="text" name="two" style="width: 180px"></p>
                <p><input type="submit" value="提交"></p>
            </form>
        </div>
    </body>
</html>
<%--上机作业：
1.写一个 Servlet，然后向客户端输出一段歌词的信息，要输出时解决中文乱码问题。
2.写一个类实现 Servlet 接口,测试 servlet 的生命周期,
3.从一个 jsp 页面上使用 post 方式提交一个用户编号，一个用户名，
Servlet 接收后处理编码问题，输出到控制台。(Servlet 继承 HttpServlet 的方式实现)
课后作业：
1.写一个类实现 Servlet 接口,统计此 servlet 被请求了多少次，输出到客户端,在销毁此
Servlet 的时候，将请求次数写到硬盘的文本文档中.
2.从一个 jsp 页面上使用 get 方式提交两个文本框，一个下拉列表，下拉列表中是（+,-,*,/）
到 Servlet，Servlet 根据请求做相应的计算，得到结果后输出到客户端.(Servlet 继承
HttpServlet 的方式实现--%>