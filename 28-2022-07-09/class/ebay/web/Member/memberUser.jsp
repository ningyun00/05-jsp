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
        <script src = "js/iepng.js" type = "text/javascript"></script>
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
        <%@ include file = "soubg.jsp" %>
        <%--登录了的用户--%>
        <!--End Header End-->
        <div class = "i_bg bg_color">
            <!--Begin 用户中心 Begin -->
            <div class = "m_content">
                <%@include file = "leftHead.jsp" %>
                <div class = "m_right">
                    <div class = "m_des">
                        <table border = "0" style = "width:870px; line-height:22px;" cellspacing = "0" cellpadding = "0">
                            <tr valign = "top">
                                <td width = "115"><img src = "../images/user.jpg" width = "90" height = "90"/></td>
                                <td>
                                    <div class = "m_user">${sessionScope.eabyUser.userName}</div>
                                    <p>
                                        等级：注册用户 <br/>
                                        <font color = "#ff4e00">您还差 270 积分达到 分红100</font><br/>
                                        上一次登录时间: 2015-09-28 18:19:47<br/>
                                        您还没有通过邮件认证
                                        <a href = "mailto:3174902862@qq.com?subject=异常反馈&body=邮件内容" style = "color:#ff4e00;">点此发送认证邮件</a>
                                    </p>
                                    <div class = "m_notice">
                                        用户中心公告！
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class = "mem_t">账号信息</div>
                    <table border = "0" class = "mon_tab" style = "width:870px; margin-bottom:20px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td width = "40%">用户ID：<span style = "color:#555555;">${sessionScope.eabyUser.id}</span>
                            </td>
                            <td width = "60%">邀请人：<span style = "color:#555555;">无</span></td>
                        </tr>
                        <tr>
                            <td>电&nbsp; &nbsp; 话：<span style = "color:#555555;">${sessionScope.eabyUser.mobile}</span>
                            </td>
                            <td>邮&nbsp; &nbsp; 箱：<span style = "color:#555555;">${sessionScope.eabyUser.email}</span>
                            </td>
                        </tr>
                        <tr>
                            <td>身份证号：<span style = "color:#555555;">${sessionScope.eabyUser.identityCode}</span></td>
                            <td>注册时间：<span style = "color:#555555;">无</span></td>
                        </tr>
                    </table>

                    <div class = "mem_t">
                        地址管理<a href = "${pageContext.request.contextPath}/MemberServlet?method=memberUserAddress" style="margin-left: 730px">添加地址</a>
                    </div>
                    <form action = "" method = "post" id = "formDelete">
                        <table border = "0" class = "mon_tab" style = "width:870px; margin-bottom:20px;" cellspacing = "0" cellpadding = "0">
                            <c:forEach items = "${sessionScope.eabyOrder}" var = "order" varStatus = "i">
                                <tr>
                                    <td width = "20%">编号：<span style = "color:#555555;">${i.index+1}</span></td>
                                    <td width = "40%">地址：<span style = "color:#555555;">${order.address}</span></td>
                                    <td width = "20%">
                                        默认地址：<input onclick = "AddDefault(${order.id})" type = "radio"
                                    <c:if test="${order.isDefault==1}"> checked </c:if> name = "isDefault" id = "isDefault${order.id}">
                                    </td>
                                    <td width = "20%">
                                        <button onclick = "return deleteAddress(${order.id})"> 删除</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </form>
                </div>
            </div>
            <!--End 用户中心 End-->
            <script type = "text/javascript">
                /**删除收货地址*/
                function deleteAddress(id) {
                    if ($("#isDefault" + id).prop("checked") == true) {
                        alert("无法删除默认地址");
                        return false;
                    } else {
                        if (confirm("确定删除吗？") == true) {
                            $("#formDelete").prop("action", "${pageContext.request.contextPath}/MemberOrderUserServlet?method=deleteAddress&AID=" + encodeURI(id));
                            $("#formDelete").submit();
                        }
                    }
                }

                function AddDefault(id) {
                    $.post(
                        "${pageContext.request.contextPath}/MemberOrderUserServlet?method=Default",
                        {defaultId: id},
                        function (msg) {
                            console.log(msg);
                        }
                    )
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
    <!--[if IE 6]>
    <script src = "//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
    <![endif]-->
</html>
