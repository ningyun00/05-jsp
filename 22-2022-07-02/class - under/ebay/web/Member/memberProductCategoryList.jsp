<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-23
  Time: 上午 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns = "http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv = "Content-Type" content = "text/html; charset=utf-8"/>
        <link type = "text/css" rel = "stylesheet" href = "../css/style.css"/>
        <!--[if IE 6]>
        <script src = "../js/iepng.js" type = "text/javascript"></script>
        <script type = "text/javascript">
            EvPNG.fix('div, ul, img, li, input, a');
        </script>
        <![endif]-->

        <script type = "text/javascript" src = "../js/jquery-1.8.2.min.js"></script>
        <script type = "text/javascript" src = "../js/menu.js"></script>

        <script type = "text/javascript" src = "../js/select.js"></script>
        <script type = "text/javascript" src = "../js/jquery-1.12.4.js"></script>

        <title>易趣商城管理控制台</title>
    </head>
    <body>
        <!--Begin Header Begin-->
        <%@include file = "soubg.jsp" %>
        <!--End Header End-->
        <div class = "i_bg bg_color">
            <!--Begin 用户中心 Begin -->
            <div class = "m_content">
                <%@include file = "leftHead.jsp" %>
                <div class = "m_right">
                    <p></p>
                    <div class = "mem_tit">商品分类</div>
                    <table border = "0" class = "order_tab" style = "width:930px; text-align:center; margin-bottom:30px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td width = "25%">分类名称</td>
                            <td width = "25%">分类级别</td>
                            <td width = "25%">父级分类</td>
                            <td width = "20%" colspan = "2">操作</td>
                        </tr>
                        <c:forEach items = "${sessionScope.productCategoryList}" var = "productCategoryList">
                            <tr>
                                <td><font color = "#ff4e00">${productCategoryList.name}</font></td>
                                <td>
                                    <c:if test = "${productCategoryList.type==1}">一级分类</c:if>
                                    <c:if test = "${productCategoryList.type==2}">二级分类</c:if>
                                    <c:if test = "${productCategoryList.type==3}">三级分类</c:if></td>
                                <td>无</td>
                                <td width = "145"><a href = "#">修改</a></td>
                                <td width = "145"><a href = "#">删除</a></td>
                            </tr>
                        </c:forEach>
                    </table>


                    <!--分页-->
                    <div class = "pages">
                        <%
                            int oneCategory = 1;//第一页
                            int eventualCategory = 1;//最终分页
                            if (session.getAttribute("oneCategory") != null && session.getAttribute("eventualCategory") != null) {
                                oneCategory = Integer.parseInt(String.valueOf(session.getAttribute("oneCategory")));
                                eventualCategory = Integer.parseInt(String.valueOf(session.getAttribute("eventualCategory")));
                            }
                        %>
                        <% if (oneCategory > 1) {%>
                        <a href = "/ning.ying/memberProductCategoryListServlet?method=onPage&pageNext=<%=oneCategory-1%>" class = "p_pre">上一页</a>
                        <%} else {%>
                        <a onclick = "alert('没有啦！不要再点啦！')" class = "p_pre">上一页</a>
                        <%
                            }
                            for (int i = 1; i <= eventualCategory; i++) {
                        %>
                        <a href = "/ning.ying/memberProductCategoryListServlet?method=nextPage&pageNext=<%=i%>" class = "cur"><%=i%>
                        </a>
                        <%
                            }
                            if (oneCategory < eventualCategory) {
                        %>
                        <a href = "/ning.ying/memberProductCategoryListServlet?method=nextPage&pageNext=<%=oneCategory+1%>" class = "p_pre">下一页</a>
                        <%} else {%>
                        <a onclick = "alert('到底啦！不要点啦！')" class = "p_pre">下一页</a>
                        <%}%>
                    </div>

                </div>
            </div>
            <!--End 用户中心 End-->
            <!--Begin Footer Begin -->
            <div class = "b_btm_bg b_btm_c">
                <div class = "b_btm">
                    <table border = "0" style = "width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td width = "72"><img src = "../images/b1.png" width = "62" height = "62"/></td>
                            <td><h2>正品保障</h2>正品行货 放心购买</td>
                        </tr>
                    </table>
                    <table border = "0" style = "width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td width = "72"><img src = "../images/b2.png" width = "62" height = "62"/></td>
                            <td><h2>满38包邮</h2>满38包邮 免运费</td>
                        </tr>
                    </table>
                    <table border = "0" style = "width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td width = "72"><img src = "../images/b3.png" width = "62" height = "62"/></td>
                            <td><h2>天天低价</h2>天天低价 畅选无忧</td>
                        </tr>
                    </table>
                    <table border = "0" style = "width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td width = "72"><img src = "../images/b4.png" width = "62" height = "62"/></td>
                            <td><h2>准时送达</h2>收货时间由你做主</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class = "b_nav">
                <dl>
                    <dt><a href = "#">新手上路</a></dt>
                    <dd><a href = "#">售后流程</a></dd>
                    <dd><a href = "#">购物流程</a></dd>
                    <dd><a href = "#">订购方式</a></dd>
                    <dd><a href = "#">隐私声明</a></dd>
                    <dd><a href = "#">推荐分享说明</a></dd>
                </dl>
                <dl>
                    <dt><a href = "#">配送与支付</a></dt>
                    <dd><a href = "#">货到付款区域</a></dd>
                    <dd><a href = "#">配送支付查询</a></dd>
                    <dd><a href = "#">支付方式说明</a></dd>
                </dl>
                <dl>
                    <dt><a href = "#">会员中心</a></dt>
                    <dd><a href = "#">资金管理</a></dd>
                    <dd><a href = "#">我的收藏</a></dd>
                    <dd><a href = "#">我的订单</a></dd>
                </dl>
                <dl>
                    <dt><a href = "#">服务保证</a></dt>
                    <dd><a href = "#">退换货原则</a></dd>
                    <dd><a href = "#">售后服务保证</a></dd>
                    <dd><a href = "#">产品质量保证</a></dd>
                </dl>
                <dl>
                    <dt><a href = "#">联系我们</a></dt>
                    <dd><a href = "#">网站故障报告</a></dd>
                    <dd><a href = "#">购物咨询</a></dd>
                    <dd><a href = "#">投诉与建议</a></dd>
                </dl>
                <div class = "b_tel_bg">
                    <a href = "#" class = "b_sh1">新浪微博</a>
                    <a href = "#" class = "b_sh2">腾讯微博</a>
                    <p>
                        服务热线：<br/>
                        <span>400-123-4567</span>
                    </p>
                </div>
                <div class = "b_er">
                    <div class = "b_er_c"><img src = "../images/er.gif" width = "118" height = "118"/></div>
                    <img src = "../images/ss.png"/>
                </div>
            </div>
            <div class = "btmbg">
                <div class = "btm">
                    备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 ,
                    Technical Support: Dgg Group <br/>
                    <img src = "../images/b_1.gif" width = "98" height = "33"/><img src = "../images/b_2.gif" width = "98" height = "33"/><img src = "../images/b_3.gif" width = "98" height = "33"/><img src = "../images/b_4.gif" width = "98" height = "33"/><img src = "../images/b_5.gif" width = "98" height = "33"/><img src = "../images/b_6.gif" width = "98" height = "33"/>
                </div>
            </div>
            <!--End Footer End -->
        </div>

    </body>


    <!--[if IE 6]>
    <script src = "//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
    <![endif]-->
</html>
