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
        <script type = "text/javascript" src = "js/jquery-1.12.4.js"></script>
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

        <script type = "text/javascript" src = "js/select.js"></script>

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
                <img src = "images/img2.jpg"/>
            </div>

            <!--Begin 第二步：确认订单信息 Begin -->
            <div class = "content mar_20">
                <div class = "two_bg">
                    <div class = "two_t">
                        <span class = "fr"><a href = "#">修改</a></span>商品列表
                    </div>
                    <table border = "0" class = "car_tab" style = "width:1110px;" cellspacing = "0" cellpadding = "0">
                        <tr>
                            <td class = "car_th" width = "550">商品名称</td>
                            <td class = "car_th" width = "140">属性</td>
                            <td class = "car_th" width = "150">购买数量</td>
                            <td class = "car_th" width = "130">小计</td>
                            <td class = "car_th" width = "140">返还积分</td>
                        </tr>
                        <c:forEach items = "${sessionScope.shopCarList}" var = "shopCarList" varStatus = "i">
                            <tr>
                                <td>
                                    <div class = "c_s_img">
                                        <img src = "images/${shopCarList.fileName}" width = "73" height = "73"/></div>
                                        ${shopCarList.name} <br/>单价 ：${shopCarList.price}
                                </td>
                                <td align = "center">颜色：未定义</td>
                                <c:set var = "number" value = "number${(i.index)}"></c:set>
                                <c:set var = "money" value = "money${(i.index)}"></c:set>
                                <td align = "center">${sessionScope.mapNumber.get(number)}</td>
                                <td align = "center" style = "color:#ff4e00;">
                                    ￥${sessionScope.mapMoney.get(money)}</td>
                                <td align = "center">26R</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <div class = "two_t">
                        <span class = "fr"><a href = "#">修改</a></span>收货人信息
                    </div>
                    <%--提交到订单服务--%>
                    <form action = "OrderServlet?method=createOrder" method="post" id="myForm" >
                        <input type = "hidden" name = "method" value = "createOrder"/>
                        <input type = "hidden" id = "oldaddress" name = "oldaddress" readonly = "readonly" value = "${requestScope.alist[0].address}"/>
                        <table border = "0" class = "peo_tab" style = "width:1110px;" cellspacing = "0" cellpadding = "0">
                            <tr>
                                <td class = "p_td" width = "160">收货小可爱</td>
                                <td width = "395">${sessionScope.eabyUser.userName}</td>
                                <td class = "p_td" width = "160">电子邮件</td>
                                <td width = "395">${sessionScope.eabyUser.email}</td>
                            </tr>
                            <tr>
                                <td class = "p_td">详细地址</td>
                                <td id = "address">${requestScope.alist[0].address}</td>
                                <td class = "p_td">邮政编码</td>
                                <td>0000000</td>
                            </tr>
                            <tr>
                                <td class = "p_td">电话</td>
                                <td>${sessionScope.eabyUser.mobile}</td>
                                <td class = "p_td">手机</td>
                                <td>${sessionScope.eabyUser.mobile}</td>
                            </tr>
                        </table>
                        <div class = "two_t">
                            选择地址
                        </div>
                        <table border = "0" class = "peo_tab" style = "width:1110px;" cellspacing = "0" cellpadding = "0">
                            <c:forEach items = "${requestScope.alist }" var = "address" varStatus = "status">
                                <tr>    <%-- ProductServlet.java  isLogin() --%>
                                    <td class = "p_td" width = "100">
                                        地址${status.index+1}
                                        <input type = "radio" value = "${address.id }" name = "isDefault"
                                                <c:if test = "${address.isDefault==1 }">
                                                    checked="checked"
                                                </c:if>
                                        />
                                    </td>
                                    <td>${address.address }</td>
                                </tr>
                            </c:forEach>
                            <tr>
                                <td class = "p_td" width = "160">
                                    新增地址
                                    <input type = "radio" value = "0" name = "newadd"/>
                                </td>
                                <td width = "395">
                                    地址:<input name = "newaddress"/>
                                    备注:<input name = "remark"/>
                                </td>
                            </tr>
                        </table>
                        <table border = "0" style = "width:900px; margin-top:20px;" cellspacing = "0" cellpadding = "0">
                            <tr height = "70">
                                <td align = "right">
                                    <b style = "font-size:14px;">应付款金额：<span style = "font-size:22px; color:#ff4e00;">￥<span id="sumMoneyEnd">${sessionScope.sumMoneyEnd}</span></span></b>
                                </td>
                            </tr>
                            <tr height = "70">
                                <td align = "right"><a href = "javascript:doSubmit()"><img src = "images/btn_sure.gif"/></a></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <!--End 第二步：确认订单信息 End-->
            <script type="text/javascript">
                $(function () {//加载
                    $("#leftNav").addClass("none");
                })
                function doSubmit() {
                    $("#myForm").submit();
                }
                $("input[name='isDefault']").click(function () {
                    $("#address").html($(this).parent().next().html());
                    $("#oldaddress").val($(this).parent().next().html());
                    $("input[name='newadd']").prop("checked", false);
                });
                $("input[name='newadd']").click(function () {
                    if ($('[name="newaddress"]').val()===""){
                        alert("请输入内容后在选择");
                        return false;
                    }
                    $("#address").html($('[name="newaddress"]').val());
                    $("#oldaddress").val("");
                    $("input[name='isDefault']").prop("checked", false);
                });
            </script>
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
