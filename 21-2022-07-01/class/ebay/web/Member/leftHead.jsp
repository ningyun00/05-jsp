<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-30
  Time: 下午 04:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <div class = "m_left">
            <div class = "left_n">管理中心</div>
            <div class = "left_m">
                <div class = "left_m_t t_bg1">会员中心</div>
                <ul>
                    <li><a href = "memberUser.jsp">用户信息</a></li>
                    <li><a href = "memberUserList.jsp">用户列表</a></li>
                </ul>
            </div>
            <div class = "left_m">
                <div class = "left_m_t t_bg2">订单中心</div>
                <ul>
                    <li><a href = "memberOrder.jsp">我的订单</a></li>
                    <li><a href = "memberOrderList.jsp">全部订单</a></li>
                </ul>
            </div>
            <div class = "left_m">
                <div class = "left_m_t t_bg3">商品管理</div>
                <ul>
                    <li><a href = "memberProductCategoryList.jsp">分类管理</a></li>
                    <li><a href = "memberProductList.jsp">商品管理</a></li>
                    <li><a href = "memberProductAdd.jsp">商品上架</a></li>
                </ul>
            </div>
            <div class = "left_m">
                <div class = "left_m_t t_bg4">资讯中心</div>
                <ul>
                    <li><a href = "memberNewList.jsp">资讯列表</a></li>
                </ul>
            </div>
        </div>
    </body>
</html>
