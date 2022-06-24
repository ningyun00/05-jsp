<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-25
  Time: 上午 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <head>
            <meta http-equiv = "Content-Type" content = "text/html; charset=utf-8"/>
            <link type = "text/css" rel = "stylesheet" href = "css/style.css"/>
            <!--[if IE 6]>
            <script src = "js/iepng.js" type = "text/javascript"></script>
            <script type = "text/javascript">
                EvPNG.fix('div, ul, img, li, input, a');
            </script>
            <![endif]-->
            <script type = "text/javascript" src = "js/jquery-1.11.1.min_044d0927.js"></script>
            <script type = "text/javascript" src = "js/jquery.bxslider_e88acd1b.js"></script>

            <script type = "text/javascript" src = "js/jquery-1.8.2.min.js"></script>
            <script type = "text/javascript" src = "js/menu.js"></script>

            <script type = "text/javascript" src = "js/select.js"></script>

            <script type = "text/javascript" src = "js/lrscroll.js"></script>

            <script type = "text/javascript" src = "js/iban.js"></script>
            <script type = "text/javascript" src = "js/fban.js"></script>
            <script type = "text/javascript" src = "js/f_ban.js"></script>
            <script type = "text/javascript" src = "js/mban.js"></script>
            <script type = "text/javascript" src = "js/bban.js"></script>
            <script type = "text/javascript" src = "js/hban.js"></script>
            <script type = "text/javascript" src = "js/tban.js"></script>

            <script type = "text/javascript" src = "js/lrscroll_1.js"></script>


            <title>易趣商城</title>
        </head>
        <body>
            <!--Begin Header Begin-->
            <%@ include file="soubg.jsp"%>
            <div class = "top">
                <div class = "logo"><a href = "IndexServlet"><img src = "images/logo.png"/></a></div>
                <div class = "search">
                    <form>
                        <input type = "text" value = "" class = "s_ipt"/>
                        <input type = "submit" value = "搜索" class = "s_btn"/>
                    </form>
                    <span class = "fl"><a href = "#">咖啡</a><a href = "#">iphone 6S</a><a href = "#">新鲜美食</a><a href = "#">蛋糕</a><a href = "#">日用品</a><a href = "#">连衣裙</a></span>
                </div>
                <div class = "i_car">
                    <div class = "car_t">购物车 [ <span>3</span> ]</div>
                    <div class = "car_bg">
                        <!--Begin 购物车未登录 Begin-->
                        <div class = "un_login">还未登录！<a href = "Login.html" style = "color:#ff4e00;">马上登录</a> 查看购物车！
                        </div>
                        <!--End 购物车未登录 End-->
                        <!--Begin 购物车已登录 Begin-->
                        <ul class = "cars">
                            <li>
                                <div class = "img">
                                    <a href = "#"><img src = "images/car1.jpg" width = "58" height = "58"/></a></div>
                                <div class = "name"><a href = "#">法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只</a></div>
                                <div class = "price"><font color = "#ff4e00">￥399</font> X1</div>
                            </li>
                            <li>
                                <div class = "img">
                                    <a href = "#"><img src = "images/car2.jpg" width = "58" height = "58"/></a></div>
                                <div class = "name"><a href = "#">香奈儿（Chanel）邂逅活力淡香水50ml</a></div>
                                <div class = "price"><font color = "#ff4e00">￥399</font> X1</div>
                            </li>
                            <li>
                                <div class = "img">
                                    <a href = "#"><img src = "images/car2.jpg" width = "58" height = "58"/></a></div>
                                <div class = "name"><a href = "#">香奈儿（Chanel）邂逅活力淡香水50ml</a></div>
                                <div class = "price"><font color = "#ff4e00">￥399</font> X1</div>
                            </li>
                        </ul>
                        <div class = "price_sum">共计&nbsp; <font color = "#ff4e00">￥</font><span>1058</span></div>
                        <div class = "price_a"><a href = "#">去购物车结算</a></div>
                        <!--End 购物车已登录 End-->
                    </div>
                </div>
            </div>            <!--End Header End-->
        </body>
</html>
