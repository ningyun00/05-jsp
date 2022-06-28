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


        <title>易趣商城管理控制台</title>
    </head>
    <body>
        <!--Begin Header Begin-->
        <%@include file="soubg.jsp"%>
        <div class = "m_top_bg">
            <div class = "top">
                <div class = "m_logo"><a href = "Index.html"><img src = "../images/logo.png"/></a></div>
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
                                    <a href = "#"><img src = "../images/car1.jpg" width = "58" height = "58"/></a></div>
                                <div class = "name"><a href = "#">法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只</a></div>
                                <div class = "price"><font color = "#ff4e00">￥399</font> X1</div>
                            </li>
                            <li>
                                <div class = "img">
                                    <a href = "#"><img src = "../images/car2.jpg" width = "58" height = "58"/></a></div>
                                <div class = "name"><a href = "#">香奈儿（Chanel）邂逅活力淡香水50ml</a></div>
                                <div class = "price"><font color = "#ff4e00">￥399</font> X1</div>
                            </li>
                            <li>
                                <div class = "img">
                                    <a href = "#"><img src = "../images/car2.jpg" width = "58" height = "58"/></a></div>
                                <div class = "name"><a href = "#">香奈儿（Chanel）邂逅活力淡香水50ml</a></div>
                                <div class = "price"><font color = "#ff4e00">￥399</font> X1</div>
                            </li>
                        </ul>
                        <div class = "price_sum">共计&nbsp; <font color = "#ff4e00">￥</font><span>1058</span></div>
                        <div class = "price_a"><a href = "#">去购物车结算</a></div>
                        <!--End 购物车已登录 End-->
                    </div>
                </div>
            </div>
        </div>
        <!--End Header End-->
        <div class = "i_bg bg_color">
            <!--Begin 用户中心 Begin -->
            <div class = "m_content">
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
                            <li><a href = "memberproductCategoryList.jsp">分类管理</a></li>
                            <li><a href = "memberproductList.jsp">商品管理</a></li>
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
                <div class = "m_right">
                    <div class = "m_des">
                        <table border = "0" style = "width:870px; line-height:22px;" cellspacing = "0" cellpadding = "0">
                            <tr valign = "top">
                                <td width = "115"><img src = "../images/user.jpg" width = "90" height = "90"/></td>
                                <td>
                                    <div class = "m_user">TRACY</div>
                                    <p>
                                        等级：注册用户 <br/>
                                        上一次登录时间: 2015-09-28 18:19:47<br/>
                                        您还没有通过邮件认证 <a href = "#" style = "color:#ff4e00;">点此发送认证邮件</a>
                                    </p>
                                    <div class = "m_notice">
                                        用户中心公告！
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div class = "mem_t">账号信息</div>
                    <table border = "0" class = "acc_tab" style = "width:870px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td class = "td_l">用户ID：</td>
                            <td>12345678</td>
                        </tr>
                        <tr>
                            <td class = "td_l b_none">身份证号：</td>
                            <td>522124***********8</td>
                        </tr>
                        <tr>
                            <td class = "td_l b_none">电 话：</td>
                            <td>186****1234</td>
                        </tr>
                        <tr>
                            <td class = "td_l">邮 箱：</td>
                            <td>*******789@qq.com</td>
                        </tr>
                        <tr>
                            <td class = "td_l b_none">注册时间：</td>
                            <td>2015/10/10</td>
                        </tr>
                        <tr>
                            <td class = "td_l">完成订单：</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td class = "td_l b_none">邀请人：</td>
                            <td>邀请人</td>
                        </tr>
                        <tr>
                            <td class = "td_l">登录次数：</td>
                            <td>3</td>
                        </tr>
                    </table>


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
