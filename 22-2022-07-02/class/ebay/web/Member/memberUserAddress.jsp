<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %><%--
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

        <script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
        <title>易趣商城管理控制台</title>
    </head>
    <body>
        <!--Begin Header Begin-->
        <%@include file="soubg.jsp"%>
        <!--End Header End-->
        <div class = "i_bg bg_color">
            <!--Begin 用户中心 Begin -->
            <div class = "m_content">
                <%@include file="leftHead.jsp"%>
                <div class = "m_right">
                    <p></p>
                    <div class = "mem_tit">收货地址</div>
                    <div class = "address">
                        <div class = "a_close"><a href = "#"><img src = "../images/a_close.png"/></a></div>
                        <table border = "0" class = "add_t" align = "center" style = "width:98%; margin:10px auto;" cellspacing = "0" cellpadding = "0">
                            <tr>
                                <td colspan = "2" style = "font-size:14px; color:#ff4e00;">杨杨公司</td>
                            </tr>
                            <tr>
                                <td align = "right" width = "80">收货人姓名：</td>
                                <td>杨杨</td>
                            </tr>
                            <tr>
                                <td align = "right">配送区域：</td>
                                <td>四川成都市武侯区三环以内</td>
                            </tr>
                            <tr>
                                <td align = "right">详细地址：</td>
                                <td>科华北路66号世外桃源写字楼3楼</td>
                            </tr>
                            <tr>
                                <td align = "right">手机：</td>
                                <td>12345678998</td>
                            </tr>
                            <tr>
                                <td align = "right">电话：</td>
                                <td>028-12345678</td>
                            </tr>
                            <tr>
                                <td align = "right">电子邮箱：</td>
                                <td>123456789@qq.com</td>
                            </tr>
                            <tr>
                                <td align = "right">标志建筑：</td>
                                <td>世外桃源</td>
                            </tr>
                        </table>

                        <p align = "right">
                            <a href = "#" style = "color:#ff4e00;">设为默认</a>&nbsp; &nbsp; &nbsp; &nbsp;
                            <a href = "#" style = "color:#ff4e00;">编辑</a>&nbsp; &nbsp; &nbsp; &nbsp;
                        </p>

                    </div>

                    <div class = "mem_tit">
                        <a href = "#"><img src = "../images/add_ad.gif"/></a>
                    </div>
                    <table border = "0" class = "add_tab" style = "width:930px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td width = "135" align = "right">配送地区</td>
                            <td colspan = "3" style = "font-family:'宋体';">
                                <select class = "jj" name = "country" style = "background-color:#f6f6f6;">
                                    <option value = "0" selected = "selected">请选择...</option>
                                    <option value = "1">中国</option>
                                    <option value = "2">中国</option>
                                    <option value = "3">中国</option>
                                    <option value = "4">中国</option>
                                </select>
                                <select class = "jj" name = "province">
                                    <option value = "0" selected = "selected">请选择...</option>
                                    <option value = "1">四川</option>
                                    <option value = "2">重庆</option>
                                    <option value = "3">北京</option>
                                    <option value = "4">云南</option>
                                </select>
                                <select class = "jj" name = "city">
                                    <option value = "0" selected = "selected">请选择...</option>
                                    <option value = "1">成都</option>
                                    <option value = "2">宜宾</option>
                                    <option value = "3">南充</option>
                                    <option value = "4">绵阳</option>
                                </select>
                                <select class = "jj" name = "area">
                                    <option value = "0" selected = "selected">请选择...</option>
                                    <option value = "1">武侯区</option>
                                    <option value = "2">成华区</option>
                                    <option value = "3">锦江区</option>
                                    <option value = "4">青羊区</option>
                                </select>
                                （必填）
                            </td>
                        </tr>
                        <tr>
                            <td align = "right">收货人姓名</td>
                            <td style = "font-family:'宋体';"><input type = "text" value = "姓名" class = "add_ipt"/>（必填）
                            </td>
                            <td align = "right">电子邮箱</td>
                            <td style = "font-family:'宋体';">
                                <input type = "text" value = "12345678@qq.com" class = "add_ipt"/>（必填）
                            </td>
                        </tr>
                        <tr>
                            <td align = "right">详细地址</td>
                            <td style = "font-family:'宋体';"><input type = "text" value = "世外桃源" class = "add_ipt"/>（必填）
                            </td>
                            <td align = "right">邮政编码</td>
                            <td style = "font-family:'宋体';"><input type = "text" value = "610000" class = "add_ipt"/>
                            </td>
                        </tr>
                        <tr>
                            <td align = "right">手机</td>
                            <td style = "font-family:'宋体';">
                                <input type = "text" value = "1361234587" class = "add_ipt"/>（必填）
                            </td>
                            <td align = "right">电话</td>
                            <td style = "font-family:'宋体';">
                                <input type = "text" value = "028-12345678" class = "add_ipt"/></td>
                        </tr>
                        <tr>
                            <td align = "right">标志建筑</td>
                            <td style = "font-family:'宋体';"><input type = "text" value = "世外桃源大酒店" class = "add_ipt"/>
                            </td>
                            <td align = "right">最佳送货时间</td>
                            <td style = "font-family:'宋体';"><input type = "text" value = "" class = "add_ipt"/></td>
                        </tr>
                    </table>
                    <p align = "right">
                        <a href = "#">删除</a>&nbsp; &nbsp; <a href = "#" class = "add_b">确认修改</a>
                    </p>


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
                    <img src = "images/ss.png"/>
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
