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
        <link type = "text/css" rel = "stylesheet" href = "${pageContext.request.contextPath}/css/style.css"/>
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
        <script type = "text/javascript" src = "../js/member/shade.js"></script>
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
                    <div class = "mem_tit">商品管理</div>
                    <table border = "0" class = "order_tab" style = "width:930px; text-align:center; margin-bottom:30px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td width = "10%">编号</td>
                            <td width = "70%">商品详细</td>
                            <td width = "20%" colspan = "2">操作</td>
                        </tr>
                        <c:forEach items = "${sessionScope.pSelect}" var = "pSelect">
                            <tr>
                                <td><font color = "#ff4e00">${pSelect.id}</font></td>
                                <td>
                                    商品图片：<img src = "../images/${pSelect.fileName}" width = "50px" height = "50px" align = "middle"/>
                                    商品名称：<a href = "#" target = "_blank">
                                        ${pSelect.name}
                                </a>
                                    商品价格：${pSelect.price}
                                </td>
                                <td width = "145"><a onclick = "return updateProduct(${pSelect.id})">修改</a></td>
                                <td width = "145">
                                    <a href = "/ning.ying/MemberProductListServlet?method=delete&id=${pSelect.id}" onclick = "return confirm('确定删除吗？')">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                    <!--分页-->
                    <div class = "pages">
                        <%
                            int oneProductList = 1;//第一页
                            int eventualProductList = 1;//最终分页
                            if (session.getAttribute("oneProductList") != null && session.getAttribute("eventualProductList") != null) {
                                oneProductList = Integer.parseInt(String.valueOf(session.getAttribute("oneProductList")));
                                eventualProductList = Integer.parseInt(String.valueOf(session.getAttribute("eventualProductList")));
                            }
                        %>
                        <% if (oneProductList > 1) {%>
                        <a href = "/ning.ying/MemberProductListServlet?method=onPage&pageNext=<%=oneProductList-1%>" class = "p_pre">上一页</a>
                        <%} else {%>
                        <a onclick = "alert('没有啦！不要再点啦！')" class = "p_pre">上一页</a>
                        <%
                            }
                            for (int i = 1; i <= eventualProductList; i++) {
                        %>
                        <a href = "/ning.ying/MemberProductListServlet?method=nextPage&pageNext=<%=i%>" class = "cur"><%=i%>
                        </a>
                        <%
                            }
                            if (oneProductList < eventualProductList) {
                        %>
                        <a href = "/ning.ying/MemberProductListServlet?method=nextPage&pageNext=<%=oneProductList+1%>" class = "p_pre">下一页</a>
                        <%} else {%>
                        <a onclick = "alert('到底啦！不要点啦！')" class = "p_pre">下一页</a>
                        <%}%>
                    </div>

                </div>
            </div>
            <!--End 用户中心 End-->
            <script type = "text/javascript">
                function updateProduct(id) {
                    $(".m_right").html("");
                    $(".m_right").html($("#updateProduct").html());
                    $.ajax({
                        type: "post",
                        url: "/ning.ying/MemberProductListServlet",
                        data: "method=updateProduct&pId=" + encodeURI(id),
                        dataType: "json",
                        success: function (msg) {
                            $("#pId").val(msg.id);
                            $("#pName").val(msg.name);
                            $("#pFileName").prop("src", "../images/" + msg.fileName);
                            $("#pDescription").val(msg.description);
                            $("#pPrice").val(msg.price);
                            $("#pStock").val(msg.stock);
                            $("#pDetailed").val(msg.detailed);
                            if (msg.isDelete === 1) {
                                $("#isDelete2").prop("checked", true);
                            } else {
                                $("#isDelete1").prop("checked", true);
                            }
                            if (msg.isHot === 1) {
                                $("#isHot2").prop("checked", true);
                            } else {
                                $("#isHot1").prop("checked", true);
                            }
                            if (msg.isSale === 1) {
                                $("#isSale2").prop("checked", true);
                            } else {
                                $("#isSale1").prop("checked", true);
                            }
                        }
                    });
                }
            </script>
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
    <div id = "updateProduct" style = "display: none;">
        <div id = "update_div2">
            <form action = "/ning.ying/MemberProductListServlet?method=update" method="post" form="form1">
                <h2 style = "text-align: center;line-height: 80px;color: #ff4e00;">商品修改</h2>
                <table style = "border: 1px solid red; width: 400px">
                    <tbody style = "text-align: center">
                        <input type = "hidden" name="pId" id="pId">
                        <tr>
                            <td>商品名称</td>
                            <td><input type = "text" readonly id = "pName" name = "pName"></td>
                        </tr>
                        <tr>
                            <td>商品图片</td>
                            <td><img src = "" id = "pFileName" name = "pFileName"></td>
                        </tr>
                        <tr>
                            <td>商品简单描述</td>
                            <td><input type = "text" id = "pDescription" name = "pDescription"></td>
                        </tr>
                        <tr>
                            <td>商品价格</td>
                            <td><input type = "text" id = "pPrice" name = "pPrice"></td>
                        </tr>
                        <tr>
                            <td>商品库存</td>
                            <td><input type = "text" id = "pStock" name = "pStock"></td>
                        </tr>
                        <tr>
                            <td>是否上架</td>
                            <td>

                                <input type = "radio" name = "isDelete" value = "0" id = "isDelete1">上架
                                <input type = "radio" name = "isDelete" value = "1" id = "isDelete2">下架
                            </td>
                        </tr>
                        <tr>
                            <td>是否热销</td>
                            <td>
                                <input type = "radio" name = "isHot" value = "0" id = "isHot1">热销
                                <input type = "radio" name = "isHot" value = "1" id = "isHot2">普通
                            </td>
                        </tr>
                        <tr>
                            <td>是否特价</td>
                            <td>
                                <input type = "radio" name = "isSale" value = "0" id = "isSale1">特卖
                                <input type = "radio" name = "isSale" value = "1" id = "isSale2">原价
                            </td>
                        </tr>
                        <tr>
                            <td>商品详细描述</td>
                            <td><input type = "text" id = "pDetailed" name = "pDetailed"></td>
                        </tr>
                    </tbody>
                    <tfood>
                        <tr style = "text-align: center;">
                            <td style = "text-align: right">
                                <button formaction="/ning.ying/MemberServlet?method=memberProductListLeft" formmethod="post" style = "width: 90px;">返回</button>
                            </td>
                            <td style = "text-align: center">
                                <input type = "submit" value = "修改" style = "width: 90px;">
                            </td>
                        </tr>
                    </tfood>
                </table>
            </form>
        </div>
    </div>

    <!--[if IE 6]>
    <script src = "//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
    <![endif]-->
</html>
