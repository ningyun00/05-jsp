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
        <%@include file = "soubg.jsp" %>
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
                <%@include file = "leftHead.jsp" %>
                <div class = "m_right">
                    <p></p>
                    <div class = "mem_tit">商品上架</div>
                    <%--引入jquery--%>
                    <script type = "text/javascript" src = "../js/jquery-1.12.4.js"></script>
                    <%--引入添加的jquery--%>
                    <script type = "text/javascript" src = "../js/member/memberProductAdd.js"></script>
                    <form action = "/ning.ying/MemberProductAddServlet?method=memberProductAdd" method = "post">
                        <table border = "0" class = "order_tab" style = "width:930px; text-align:center; margin-bottom:30px;" cellspacing = "0" cellpadding = "0">
                            <tbody>
                                <tr>
                                    <td width = "20%" align = "right">一级分类</td>
                                    <td width = "80%" align = "left">
                                        <select id = "categoryLevel1Id" name = "categoryLevel1Id">
                                            <option value = "0">---请选择---</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td width = "20%" align = "right">二级分类</td>
                                    <td width = "80%" align = "left">
                                        <select id = "categoryLevel2Id" name = "categoryLevel2Id">
                                            <option value = "0">---请选择---</option>
                                        </select>
                                    </td>
                                </tr>

                                <tr>
                                    <td width = "20%" align = "right">三级分类</td>
                                    <td width = "80%" align = "left">
                                        <select id = "categoryLevel3Id" name = "categoryLevel3Id">
                                            <option value = "0">---请选择---</option>
                                        </select>
                                    </td>
                                </tr>

                                <tr>
                                    <td width = "20%" align = "right">商品名称</td>
                                    <td width = "80%" align = "left">
                                        <input name = "name" id = "name"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width = "20%" align = "right">商品图片</td>
                                    <td width = "80%" align = "left">
                                        <input type = "file" name = "fileName" id = "fileName"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width = "20%" align = "right">商品单价</td>
                                    <td width = "80%" align = "left">
                                        <input name = "price" id = "price"/>
                                    </td>
                                </tr>


                                <tr>
                                    <td width = "20%" align = "right">商品库存</td>
                                    <td width = "80%" align = "left">
                                        <input name = "stock" id = "stock"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width = "20%" align = "right">商品描述</td>
                                    <td width = "80%" align = "left">
                                        <input name = "description" id = "description"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td width = "20%" align = "right">是否热卖</td>
                                    <td width = "80%" align = "left">
                                        <input type = "radio" checked name = "isHot" value = "0"/>否
                                        <input type = "radio" name = "isHot" value = "1"/>是
                                    </td>
                                </tr>

                                <tr>
                                    <td width = "20%" align = "right">是否特价</td>
                                    <td width = "80%" align = "left">
                                        <input type = "radio" checked name = "isSale" value = "0"/>否
                                        <input type = "radio" name = "isSale" value = "1"/>是
                                    </td>
                                </tr>
                                <tr>
                                    <td width = "20%" align = "right">商品描述</td>
                                    <td width = "80%" align = "left">
                                        <%--富文本区--%>
                                        <div id = "editor">
                                            <p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <input type = "submit" value = "商品上架"class = "s_btn">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
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
