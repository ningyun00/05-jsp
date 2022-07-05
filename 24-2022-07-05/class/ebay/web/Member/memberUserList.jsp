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
        <!--End Header End-->
        <div class = "i_bg bg_color">
            <!--Begin 用户中心 Begin -->
            <div class = "m_content">
                <%@include file = "leftHead.jsp" %>
                <div class = "m_right">
                    <div class = "mem_tit">用户列表</div>
                    <table border = "0" class = "order_tab" style = "width:930px; text-align:center; margin-bottom:30px;" cellspacing = "0" cellpadding = "0">

                        <tr>
                            <td>用户名称</td>
                            <td>真实姓名</td>
                            <td>性别</td>
                            <td>类型</td>
                            <td colspan = "2">操作</td>
                        </tr>
                        <c:forEach items = "${sessionScope.userList}" var = "user">
                            <tr>
                                <td><font color = "#ff4e00">${user.loginName}
                                </font></td>
                                <td>${user.userName}
                                </td>
                                <td>
                                    <c:if test = "${user.sex==1}">男</c:if>
                                    <c:if test = "${user.sex==0}">女</c:if>
                                </td>
                                <td><c:if test = "${user.type==1}">管理员</c:if><c:if test = "${user.type==0}">普通用户</c:if>
                                </td>
                                <td width = "145"><a onclick = "return updateUserList(${user.id})">修改</a>
                                </td>
                                <td width = "145">
                                    <a href = "/ning.ying/MemberUserListServlet?method=delete&id=${user.id}" onclick = "return confirm('是否删除？')">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                    <!--分页-->
                    <div class = "pages">
                        <%
                            int onePageUserList = 1;//第一页
                            int eventualUserList = 1;//最终分页
                            if (session.getAttribute("onePageUserList") != null && session.getAttribute("eventualUserList") != null) {
                                onePageUserList = Integer.parseInt(String.valueOf(session.getAttribute("onePageUserList")));
                                eventualUserList = Integer.parseInt(String.valueOf(session.getAttribute("eventualUserList")));
                            }
                        %>
                        <% if (onePageUserList > 1) {%>
                        <a href = "/ning.ying/MemberUserListServlet?method=onPage&pageNext=<%=onePageUserList-1%>" class = "p_pre">上一页</a>
                        <%} else {%>
                        <a onclick = "alert('没有啦！不要再点啦！')" class = "p_pre">上一页</a>
                        <%
                            }
                            for (int i = 1; i <= eventualUserList; i++) {
                        %>
                        <a href = "/ning.ying/MemberUserListServlet?method=nextPage&pageNext=<%=i%>" class = "cur"><%=i%>
                        </a>
                        <%
                            }
                            if (onePageUserList < eventualUserList) {
                        %>
                        <a href = "/ning.ying/MemberUserListServlet?method=nextPage&pageNext=<%=onePageUserList+1%>" class = "p_pre">下一页</a>
                        <%} else {%>
                        <a onclick = "alert('到底啦！不要点啦！')" class = "p_pre">下一页</a>
                        <%}%>
                    </div>
                    <div id = "update"></div>
                </div>
            </div>
            <!--End 用户中心 End-->
            <script type = "text/javascript" src = "../js/jquery-1.12.4.js"></script>
            <script type = "text/javascript">
                /*           $(function () {
                               $(".m_right").html($(".update_div1").html());//清空
                           });*/

                function updateUserList(id) {
                    $("#update").html($(".update_div1").html());//清空
                    $.ajax({
                        type: "POST",
                        url: "/ning.ying/MemberUserListServlet",
                        data: "method=updateUser&uid=" + id,
                        dataType: "json",
                        success: function (msg) {
                            $("#loginName").val(msg.loginName);
                            $("#userName").val(msg.userName);
                            $("#idCard").val(msg.identityCode);
                            $("#email").val(msg.email);
                            $("#moder").val(msg.mobile);
                            $("#userId").val(msg.id);
                            if (msg.sex === 1) {
                                $("#sex1").prop("checked", true);
                            } else {
                                $("#sex2").prop("checked", true);
                            }
                            if (msg.type === 1) {
                                $("#type1").prop("checked", true);
                            }
                            if (msg.type === 0) {
                                $("#type2").prop("checked", true);
                            }
                        }
                    });
                }

                function exitUpdate() {
                    $("#update").html("");//清空
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
    <%--修改--%>
    <div class = "update_div1" style = "display: none">
        <div class = "update_div2">
            <form action = "/ning.ying/MemberUserListServlet?method=update" method = "post">
                <h2 style = "color: red;text-align: center; line-height: 50px">修改用户信息</h2>
                <table style = "margin: auto;padding: 0px;collapse: 0px;">
                    <thead style = "margin: 0px;padding: 0px">
                        <input type = "hidden" id="userId" name="id">
                        <tr style = "height: 36px;line-height: 0px">
                            <td style = "padding: 0px;margin: 0px;width: 100px">用户名称</td>
                            <td><input type = "text" value = "" id = "loginName" name="loginName"></td>
                        </tr>
                        <tr>
                            <td>真实姓名</td>
                            <td><input type = "text"  value = "" id = "userName" name="userName"></td>
                        </tr>
                        <tr>
                            <td>身份证</td>
                            <td><input type = "text"  value = "" id = "idCard" name="idCard"></td>
                        </tr>
                        <tr>
                            <td>性别</td>
                            <td>
                                <input type = "radio" value = "1" id = "sex1" name = "sex">男
                                <input type = "radio" value = "0" id = "sex2" name = "sex">女
                            </td>
                        </tr>
                        <tr>
                            <td>邮箱</td>
                            <td><input type = "text" value = "" id = "email" name="email"></td>
                        </tr>
                        <tr>
                            <td>用户类型</td>
                            <td>
                                <input type = "radio" value = "1" id = "type1" name = "sexT">管理员
                                <input type = "radio" value = "0" id = "type2" name = "sexT">普通用户
                            </td>
                        </tr>
                        <tr>
                            <td>手机号码</td>
                            <td><input type = "text" value = "" id = "moder" name="moder"></td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <button style = "width: 150px; height: 25px;" onclick = "return exitUpdate()">取消
                                </button>
                            </td>
                            <td style = "text-align: right">
                                <input style = "width: 150px; height: 25px;" type = "submit" value = "修改">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
    <!--[if IE 6]>
    <script src = "//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
    <![endif]-->
</html>
