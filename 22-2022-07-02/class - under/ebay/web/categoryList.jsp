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
        <link type = "text/css" rel = "stylesheet" href = "css/style.css"/>
        <!--[if IE 6]>
        <script src = "js/iepng.js" type = "text/javascript"></script>
        <script type = "text/javascript">
            EvPNG.fix('div, ul, img, li, input, a');
        </script>
        <![endif]-->

        <script type = "text/javascript" src = "js/jquery-1.8.2.min.js"></script>
        <script type = "text/javascript" src = "js/menu.js"></script>

        <script type = "text/javascript" src = "js/lrscroll_1.js"></script>


        <script type = "text/javascript" src = "js/n_nav.js"></script>

        <title>易趣商城</title>
    </head>
    <body>
        <!--End Header End-->
        <!--Begin Menu Begin-->
        <%@include file = "head.jsp" %>
        <!--End Menu End-->
        <div class = "i_bg">
            <div class = "postion">
                <span class = "fl">全部
                > ${requestScope.cname}
                </span>
                <span class = "n_ch">
            <span class = "fl">品牌：<font>香奈儿</font></span>
            <a href = "#"><img src = "images/s_close.gif"/></a>
        </span>
            </div>
            <!--Begin 筛选条件 Begin-->
            <div class = "content mar_10">
                <table border = "0" class = "choice" style = "width:100%; font-family:'宋体'; margin:0 auto;" cellspacing = "0" cellpadding = "0">
                    <tr valign = "top">
                        <td width = "70">&nbsp; 品牌：</td>
                        <td class = "td_a">
                            <a href = "#" class = "now">香奈儿（Chanel）</a><a href = "#">迪奥（Dior）</a><a href = "#">范思哲（VERSACE）</a><a href = "#">菲拉格慕（Ferragamo）</a><a href = "#">兰蔻（LANCOME）</a><a href = "#">爱马仕（HERMES）</a><a href = "#">卡文克莱（Calvin
                                                                                                                                                                                                                                        Klein）</a><a href = "#">古驰（GUCCI）</a><a href = "#">宝格丽（BVLGARI）</a><a href = "#">阿迪达斯（Adidas）</a><a href = "#">卡尔文·克莱恩（CK）</a><a href = "#">凌仕（LYNX）</a><a href = "#">大卫杜夫（Davidoff）</a><a href = "#">安娜苏（Anna
                                                                                                                                                                                                                                                                                                                                                                                                                                              sui）</a><a href = "#">阿玛尼（ARMANI）</a><a href = "#">娇兰（Guerlain）</a>
                        </td>
                    </tr>
                    <tr valign = "top">
                        <td>&nbsp; 价格：</td>
                        <td class = "td_a"><a href = "#">0-199</a><a href = "#" class = "now">200-399</a><a href = "#">400-599</a><a href = "#">600-899</a><a href = "#">900-1299</a><a href = "#">1300-1399</a><a href = "#">1400以上</a>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp; 类型：</td>
                        <td class = "td_a">
                            <a href = "#">女士香水</a><a href = "#">男士香水</a><a href = "#">Q版香水</a><a href = "#">组合套装</a><a href = "#">香体走珠</a><a href = "#">其它</a>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp; 香型：</td>
                        <td class = "td_a">
                            <a href = "#">浓香水</a><a href = "#">香精Parfum香水</a><a href = "#">淡香精EDP淡香水</a><a href = "#">香露EDT</a><a href = "#">古龙水</a><a href = "#">其它</a>
                        </td>
                    </tr>
                </table>
            </div>
            <!--End 筛选条件 End-->
            <div class = "content mar_20">
                <div class = "l_history">
                    <div class = "his_t">
                        <span class = "fl">浏览历史</span>
                        <span class = "fr"><a href = "ProductServlet?method=closees">清空</a></span>
                    </div>
                    <ul>
                        <c:forEach items = "${requestScope.hisTorylist}" var = "h">
                            <li>
                                <div class = "img">
                                    <a href = "#"><img src = "images/${h.fileName}" width = "185" height = "162"/></a>
                                </div>
                                <div class = "name"><a href = "#">${h.name}</a></div>
                                <div class = "price">
                                    <font>￥<span>${h.price}</span></font> &nbsp; 18R
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class = "l_list">
                    <div class = "list_t">
            	<span class = "fl list_or">
                	<a href = "#" class = "now">默认</a>
                    <a href = "#">
                    	<span class = "fl">销量</span>
                        <span class = "i_up">销量从低到高显示</span>
                        <span class = "i_down">销量从高到低显示</span>
                    </a>
                    <a href = "#">
                    	<span class = "fl">价格</span>
                        <span class = "i_up">价格从低到高显示</span>
                        <span class = "i_down">价格从高到低显示</span>
                    </a>
                    <a href = "#">新品</a>
                </span>
                        <span class = "fr">共发现${requestScope.size}件</span>
                    </div>
                    <div class = "list_c">

                        <ul class = "cate_list">
                            <c:forEach items = "${requestScope.plist}" var = "p"> <!-- ProductServlet -->
                                <li>
                                    <div class = "img">
                                        <a href = "ProductServlet?method=queryById&pid=${p.id}"><img src = "images/${p.fileName}" width = "210" height = "185"/></a>
                                    </div>
                                    <div class = "price">
                                        <font>￥<span>${p.price}</span></font> &nbsp; 26R
                                    </div>
                                    <div class = "name">
                                        <a href = "ProductServlet?method=queryById&pid=${p.id}">${p.name}</a></div>
                                    <div class = "carbg">
                                        <a href = "#" class = "ss">收藏</a>
                                        <a href = "#" class = "j_car">加入购物车</a>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>

                        <div class = "pages">
                            <a href = "#" class = "p_pre">上一页</a><a href = "#" class = "cur">1</a><a href = "#">2</a><a href = "#">3</a>...<a href = "#">20</a><a href = "#" class = "p_pre">下一页</a>
                        </div>


                    </div>
                </div>
            </div>

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
