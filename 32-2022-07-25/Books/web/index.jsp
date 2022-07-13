<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-07-25
  Time: 下午 05:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>棉花书屋</title>
        <script type = "text/javascript" src = "js/jquery-1.12.4.js"></script>
        <link rel = "stylesheet" type = "text/css" href = "css/index.css">
        <script type = "text/javascript" src = "js/index.js"></script>
    </head>
    <body>
        <form action = "IndexServlet" id = "form1" method = "post">
            <div class = "div_bottom">
                <div class = "div_bottom">
                    <div class = "div_title">
                        <p class = "p_title">棉花书屋</p>
                    </div>
                    <div class = "div_search">
                        <table width = "910px" height = "50px">
                            <tbody>
                                <tr>
                                    <td width = "60%" style = "text-align: right">
                                        <input type = "text" style = "height:35px;width:300px;margin-right: 30px " name="search">
                                    </td>
                                    <td width = "40%">
                                        <div style = " background:-webkit-gradient(linear, left 0, right 0, from(#d96c6c), to(rgba(36,255,126,0.5))); width: 92px;height: 30px;line-height: 30px;text-align: center; color: slateblue;font-size: 18px">
                                            <a id="search" style = "color:#000;">搜索</a></div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class = " div_table">
                        <table cellspacing = "0" border = "1" cellpadding = "0" style = "border: aqua; width: 910px">
                            <thead class = "c_thead">
                                <tr class = "c_tr">
                                    <th style = "width: 10%"><p>全选<input type = "checkbox" id = "checkAll"></p></th>
                                    <th style = "width: 10%">编号</th>
                                    <th style = "width: 25%">书名</th>
                                    <th style = "width: 25%">作者</th>
                                    <th style = "width: 10%">价格</th>
                                    <th style = "width: 10%">类型</th>
                                    <th style = "width: 10%" <%--colspan="2"--%>>操作</th>
                                </tr>
                            </thead>
                            <tbody hidden class = "c_thead" id = "update">
                                <tr class = "c_tr" style = "color: red">
                                    <td></td>
                                    <td class = "c_tr_td2"></td>
                                    <td><input style = "text-align: center;" type = "text" name = "bookName"></td>
                                    <td><input style = "text-align: center;" type = "text" name = "authorName"></td>
                                    <td style = "color: coral">
                                        <input style = "text-align: center;width: 90px;color: red" type = "text" name = "price">
                                    </td>
                                    <td>
                                        <select name = "type" id = "type">
                                            <c:forEach items = "${requestScope.type}" var = "type" varStatus = "i">
                                                <option value = "${i.index}">${type}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                    <td>
                                        <input type = "submit" value = "确认" id = "updateBook">
                                        <input type = "submit" value = "取消" id="cancel">
                                    </td>
                                </tr>
                            </tbody>
                            <tbody class = "c_thead">
                                <c:forEach items = "${requestScope.bookArrayList}" var = "bookArrayList">
                                    <tr class = "c_tr">
                                        <td class="loginId">
                                            <label>
                                                <input type = "checkbox" name = "check" value = "${bookArrayList.id}">
                                            </label>
                                        </td>
                                        <td class = "c_tr_td2">${bookArrayList.id}</td>
                                        <td>${bookArrayList.bookName}</td>
                                        <td>${bookArrayList.authorName}</td>
                                        <td style = "color: coral">${bookArrayList.price}</td>
                                        <td>
                                            <c:forEach items = "${requestScope.type}" var = "type" varStatus = "i">
                                                <c:if test = "${bookArrayList.bookType==i.index}">${type}</c:if>
                                            </c:forEach>
                                        </td>
                                        <td>
                                            <a class = "updateBook">修改</a>
                                        </td>
                                            <%-- <td>
                                                 <a &lt;%&ndash;onclick = "introduce(${bookArrayList.id})"&ndash;%&gt;>简介</a>
                                             </td>--%>
                                    </tr>
                                </c:forEach>
                            </tbody>
                            <tfoot class = "c_thead">
                                <tr class = "c_tr">
                                    <td>
                                        <a id = "deleteCheck">删除选中</a>
                                    </td>
                                    <td>
                                        <div class = "div_find">
                                            <% if (Integer.parseInt(String.valueOf(request.getAttribute("page"))) > 1) {%>
                                            <a style = "color:#000;" id = "nextPage" onclick = "nextPage(${requestScope.page}-1)">上一页</a>
                                            <%}%>
                                            <% if (1 >= Integer.parseInt(String.valueOf(request.getAttribute("page")))) {%>
                                            <a style = "color:#000;" id = "nextPage" onclick = "alert('到顶啦！不要点啦！')">上一页</a>
                                            <%}%>
                                        </div>
                                    </td>
                                    <td colspan = "4">
                                        <div class = "div_pageMax">
                                            <ul>
                                                <%--最多只能放19个--%>
                                                <%
                                                    for (int i = 1; i <= Integer.parseInt(String.valueOf(request.getAttribute("maxRow"))); i++) {
                                                %>
                                                <%if (i <= 19) {%>
                                                <li>
                                                    <div class = "div_page">
                                                        <a onclick = "nextPage(<%=i%>)" style = "color:#000;"><%=i%>
                                                        </a>
                                                    </div>
                                                </li>
                                                <%}%>
                                                <% if (i == 19 && (i + 1) < Integer.parseInt(String.valueOf(request.getAttribute("maxRow")))) {%>
                                                <li>
                                                    <div class = "div_page">
                                                        <% if (Integer.parseInt(String.valueOf(request.getAttribute("maxRow"))) >= Integer.parseInt(String.valueOf(request.getAttribute("page")))) {%>
                                                        <p style = "color:#000;" id = "nextPage">...</p>
                                                        <%}%>
                                                    </div>
                                                </li>
                                                <%}%>
                                                <%}%>
                                            </ul>
                                        </div>
                                    </td>
                                    <td>
                                        <div class = "div_find">
                                            <% if (Integer.parseInt(String.valueOf(request.getAttribute("maxRow"))) > Integer.parseInt(String.valueOf(request.getAttribute("page")))) {%>
                                            <a style = "color:#000;" id = "nextPage" onclick = "nextPage(${requestScope.page}+1)">下一页</a>
                                            <%}%>
                                            <% if (Integer.parseInt(String.valueOf(request.getAttribute("maxRow"))) <= Integer.parseInt(String.valueOf(request.getAttribute("page")))) {%>
                                            <a style = "color:#000;" id = "nextPage" onclick = "alert('到底啦！不要点啦！')">下一页</a>
                                            <%}%>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="c_tr" id="add_css" style="border: 0px; border-color: white;">
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><div class="div_find"><a id="add">添加</a></div></td>
                                    <td></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
                <div class = "div_image" style = "width: 150px;height: 180px;text-align: center">
                    <img width="150px" height="180px" <%--src = "images/大王饶命.jpg"--%> id = "imageName">
                </div>
                <div class = "div_introduce" style = "text-align: center">
                    <%--<img src = "images/大王饶命.jpg" id="imageName">--%>
                    <textarea readonly style = "border: none;width: 200px;height: 365px;font-size: 15px;" id = "introduce" name = "introduce"
                    ><%--地球灵气复苏，与同为孤儿的吕小鱼相依为命的高中生吕树在一场车祸中改变人生，觉醒异能。在变化袭来的世界里，吕树利用自身先天优势，让人产生负面情绪值，获取修行资源，和吕小鱼一起不断变强…--%>
                    </textarea>
                </div>
            </div>
        </form>
    </body>
</html>
