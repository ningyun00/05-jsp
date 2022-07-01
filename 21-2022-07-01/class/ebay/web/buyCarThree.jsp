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
        <link type = "text/css" rel = "stylesheet" href = "css/style.css"/>
        <!--[if IE 6]>
        <script src = "js/iepng.js" type = "text/javascript"></script>
        <script type = "text/javascript">
            EvPNG.fix('div, ul, img, li, input, a');
        </script>
        <![endif]-->

        <script type = "text/javascript" src = "js/jquery-1.8.2.min.js"></script>
        <script type = "text/javascript" src = "js/menu.js"></script>

        <script type = "text/javascript" src = "js/n_nav.js"></script>

        <script type = "text/javascript" src = "js/num.js">
            var jq = jQuery.noConflict();
        </script>

        <script type = "text/javascript" src = "js/shade.js"></script>

        <title>易趣商城</title>
    </head>
    <body>
    <%@include file="head.jsp"%>
        <!--Begin Menu Begin-->
        <!--End Menu End-->
        <div class = "i_bg">
            <div class = "content mar_20">
                <img src = "images/img3.jpg"/>
            </div>
            <!--Begin 第三步：提交订单 Begin -->
            <div class = "content mar_20">

                <!--Begin 银行卡支付 Begin -->
                <div class = "warning">
                    <table border = "0" style = "width:1000px; text-align:center;" cellspacing = "0" cellpadding = "0">
                        <tr height = "35">
                            <td style = "font-size:18px;">
                                感谢您在本店购物！您的订单已提交成功，请记住您的订单号: <font color = "#ff4e00">${sessionScope.SerialNumber}</font>
                            </td>
                        </tr>
                        <tr>
                            <td style = "font-size:14px; font-family:'宋体'; padding:10px 0 20px 0; border-bottom:1px solid #b6b6b6;">
                                您选定的配送方式为: <font color = "#ff4e00">申通快递</font>； &nbsp; &nbsp;您选定的支付方式为:
                                <font color = "#ff4e00">支付宝</font>； &nbsp; &nbsp;您的应付款金额为: <font color = "#ff4e00">￥${sessionScope.sumMoneyEnd}</font>
                            </td>
                        </tr>
                        <tr>
                            <td style = "padding:20px 0 30px 0; font-family:'宋体';">
                                银行名称 收款人信息：全称 寜 ；帐号或地址 ××× ；开户行 ×××。 <br/>
                                注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href = "IndexServlet">首页</a> &nbsp; &nbsp; <a href = "Member/member.jsp">用户中心</a>
                            </td>
                        </tr>
                    </table>
                </div>
                <!--Begin 银行卡支付 Begin -->

                <!--Begin 支付宝支付 Begin -->
                <div class = "warning">
                    <table border = "0" style = "width:1000px; text-align:center;" cellspacing = "0" cellpadding = "0">
                        <tr height = "35">
                            <td style = "font-size:18px;">
                                感谢您在本店购物！您的订单已提交成功，请记住您的订单号: <font color = "#ff4e00">${sessionScope.SerialNumber}</font>
                            </td>
                        </tr>
                        <tr>
                            <td style = "font-size:14px; font-family:'宋体'; padding:10px 0 20px 0; border-bottom:1px solid #b6b6b6;">
                                您选定的配送方式为: <font color = "#ff4e00">申通快递</font>； &nbsp; &nbsp;您选定的支付方式为:
                                <font color = "#ff4e00">银行卡</font>； &nbsp; &nbsp;您的应付款金额为: <font color = "#ff4e00">￥${sessionScope.sumMoneyEnd}</font>
                            </td>
                        </tr>
                        <tr>
                            <td style = "padding:20px 0 30px 0; font-family:'宋体';">
                                支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>
                                支付宝收款接口：在线即可开通，零预付，免年费，单笔阶梯费率，无流量限制。<br/>
                                <a href = "#" style = "color:#ff4e00;">立即在线申请</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class = "btn_u" style = "margin:0 auto; padding:0 20px; width:120px;">
                                    <a href = "#">立即使用支付宝支付</a></div>
                                <a href = "IndexServlet">首页</a> &nbsp; &nbsp; <a href = "Member/member.jsp">用户中心</a>
                            </td>
                        </tr>
                    </table>
                </div>
                <!--Begin 支付宝支付 Begin -->

                <%--<!--Begin 余额不足 Begin -->
                <div class = "warning">
                    <table border = "0" style = "width:1000px; text-align:center;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td>
                                <p style = "font-size:22px;">提示 !</p>
                                <b style = "color:#ff4e00; font-size:16px; font-family:'宋体';">您的余额不足以支付整个订单，请选择其他支付方式</b>
                                <div class = "backs"><a href = "#">返回上一页</a></div>
                            </td>
                        </tr>
                    </table>
                </div>
                <!--Begin 余额不足 Begin -->--%>


            </div>
            <!--End 第三步：提交订单 End-->


            <!--Begin Footer Begin -->
            <div class = "b_btm_bg bg_color">
                <div class = "b_btm">
                    <table border = "0" style = "width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td width = "72"><img src = "images/b1.png" width = "62" height = "62"/></td>
                            <td><h2>正品保障</h2>正品行货 放心购买</td>
                        </tr>
                    </table>
                    <table border = "0" style = "width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td width = "72"><img src = "images/b2.png" width = "62" height = "62"/></td>
                            <td><h2>满38包邮</h2>满38包邮 免运费</td>
                        </tr>
                    </table>
                    <table border = "0" style = "width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td width = "72"><img src = "images/b3.png" width = "62" height = "62"/></td>
                            <td><h2>天天低价</h2>天天低价 畅选无忧</td>
                        </tr>
                    </table>
                    <table border = "0" style = "width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td width = "72"><img src = "images/b4.png" width = "62" height = "62"/></td>
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
                    <div class = "b_er_c"><img src = "images/er.gif" width = "118" height = "118"/></div>
                    <img src = "images/ss.png"/>
                </div>
            </div>
            <div class = "btmbg">
                <div class = "btm">
                    备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 ,
                    Technical Support: Dgg Group <br/>
                    <img src = "images/b_1.gif" width = "98" height = "33"/><img src = "images/b_2.gif" width = "98" height = "33"/><img src = "images/b_3.gif" width = "98" height = "33"/><img src = "images/b_4.gif" width = "98" height = "33"/><img src = "images/b_5.gif" width = "98" height = "33"/><img src = "images/b_6.gif" width = "98" height = "33"/>
                </div>
            </div>
            <!--End Footer End -->
        </div>

    </body>


    <!--[if IE 6]>
    <script src = "//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
    <![endif]-->
</html>
