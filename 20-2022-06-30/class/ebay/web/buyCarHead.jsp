<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-30
  Time: 下午 04:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <script type = "text/javascript" src = "js/shade.js"></script>
        <div class = "i_car">
            <div class = "car_t">购物车 [ <span id = "counts">0</span> ]</div>
            <div class = "car_bg">
                <!--Begin 购物车未登录 Begin-->
                <c:choose>
                    <c:when test = "${sessionScope.eabyUser==null}">
                        <div class = "un_login">还未登录！<a href = "login.jsp" style = "color:#ff4e00;">马上登录</a>查看购物车！
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class = "un_login">
                            欢迎小可爱&nbsp;&nbsp;&nbsp;<a href = "buyCar.jsp" style = "color:#ff4e00;">${sessionScope.eabyUser.userName}</a>&nbsp;&nbsp;&nbsp;查看购物车！
                        </div>
                    </c:otherwise>
                </c:choose>
                <!--End 购物车未登录 End-->
                <!--Begin 购物车已登录 Begin-->
                <ul class = "cars" id = "cars">

                </ul>
                <div class = "price_sum">共计&nbsp; <font color = "#ff4e00">￥</font><span id = "gj">0.00</span></div>
                <div class = "price_a">
                    <c:if test = "${sessionScope.eabyUser!=null}"><a href = "ProductServlet?method=buyCarSum">去购物车结算</a></c:if><a href = "login.jsp">前往登录</a>
                </div>
                <!--End 购物车已登录 End-->
            </div>
        </div>
    </body>
</html>
