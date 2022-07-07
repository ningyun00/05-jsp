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
            <script type="text/javascript" src="js/jquery-1.12.4.js"></script>

            <title>易趣商城</title>
        </head>
        <!--Begin Header Begin-->
        <%@include file="soubg.jsp"%>
        <div class = "top">
            <div class = "logo"><a href = "IndexServlet"><img src = "images/logo.png"/></a></div>
            <div class = "search">
                <form>
                    <input type = "text" value = "" class = "s_ipt"/>
                    <input type = "submit" value = "搜索" class = "s_btn"/>
                </form>
                <span class = "fl"><a href = "#">咖啡</a><a href = "#">iphone 6S</a><a href = "#">新鲜美食</a><a href = "#">蛋糕</a><a href = "#">日用品</a><a href = "#">连衣裙</a></span>
            </div>
            <%--购物车--%>
            <%@include file="buyCarHead.jsp"%>
        </div>
        <!--End Header End-->
        <!--Begin Menu Begin-->
        <div class = "menu_bg">
            <div class = "menu">
                <!--Begin 商品分类详情 Begin-->
                <div class = "nav">
                    <div class = "nav_t">全部商品分类</div>
                    <div class = "leftNav" style="display: none;">
                        <ul>
                            <c:forEach items = "${sessionScope.ProductCategoryList1}" var = "category1" begin = "0" step = "1" end = "5" varStatus = "i">
                                <li>
                                    <div class = "fj">
                                        <span class = "n_img"><span></span><img src = "images/nav1.png"/></span>
                                        <span class = "fl">${category1.name}</span>
                                    </div>
                                    <div class = "zj" style = "top: -${i.index*40}px">
                                        <div class = "zj_l">
                                            <c:forEach items = "${sessionScope.ProductCategoryList2}" var = "category2" begin = "0" step = "1" end = "5" varStatus = "i">
                                                <c:if test = "${category2.parentId==category1.id}">
                                                    <div class = "zj_l_c">
                                                        <h2><%--二级分类--%>
                                                            <a href = "ProductServlet?method=twoClass&cid=${category2.id}&level=2&cname=${category1.name}&nbsp;>&nbsp;${category2.name}" &nbsp;>&nbsp;${category2.name}</a>
                                                        </h2>
                                                        <c:forEach items = "${sessionScope.ProductCategoryList3}" var = "categroy3" begin = "0" step = "1" varStatus = "i">
                                                            <c:if test = "${category2.id==categroy3.parentId}">
                                                                <a href = "ProductServlet?method=threeClass&cid=${categroy3.id}&level=3&cname=${category1.name} > ${category2.name} > ${categroy3.name}">${categroy3.name}</a>|
                                                            </c:if>
                                                        </c:forEach>
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                        <div class = "zj_r">
                                            <a href = "#"><img src = "images/n_img1.jpg" width = "236" height = "200"/></a>
                                            <a href = "#"><img src = "images/n_img2.jpg" width = "236" height = "200"/></a>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <!--End 商品分类详情 End-->
                <ul class = "menu_r">
                    <li><a href = "IndexServlet">首页</a></li>
                    <li><a href = "#">美食</a></li>
                    <li><a href = "#">生鲜</a></li>
                    <li><a href = "#">家居</a></li>
                    <li><a href = "#">女装</a></li>
                    <li><a href = "#">美妆</a></li>
                    <li><a href = "#">数码</a></li>
                    <li><a href = "#">团购</a></li>
                </ul>
                <div class = "m_ad">中秋送好礼！</div>
            </div>
        </div>
        <!--End Menu End-->
    </body>
</html>
