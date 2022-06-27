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


        <title>尤洪</title>
    </head>
    <body>
        <!--Begin Header Begin-->
        <%@include file="soubg.jsp"%>
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
                    <p></p>
                    <div class = "mem_tit">我的留言</div>
                    <form>
                        <table border = "0" style = "width:880px; margin-top:20px;" cellspacing = "0" cellpadding = "0">
                            <tr height = "45">
                                <td width = "80" align = "right">留言类型 &nbsp; &nbsp;</td>
                                <td>
                                    <label class = "r_rad"><input type = "checkbox" name = "type" checked = "checked"/></label><label class = "r_txt">留言</label>
                                    <label class = "r_rad"><input type = "checkbox" name = "type"/></label><label class = "r_txt">投诉</label>
                                    <label class = "r_rad"><input type = "checkbox" name = "type"/></label><label class = "r_txt">询问</label>
                                    <label class = "r_rad"><input type = "checkbox" name = "type"/></label><label class = "r_txt">售后</label>
                                    <label class = "r_rad"><input type = "checkbox" name = "type"/></label><label class = "r_txt">求购</label>
                                </td>
                            </tr>
                            <tr height = "45">
                                <td align = "right">主题 &nbsp; &nbsp;</td>
                                <td><input type = "text" value = "" class = "add_ipt" style = "width:290px;"/></td>
                            </tr>
                            <tr valign = "top" height = "110">
                                <td align = "right">留言内容 &nbsp; &nbsp;</td>
                                <td style = "padding-top:5px;"><textarea class = "add_txt"></textarea></td>
                            </tr>
                            <tr height = "45">
                                <td align = "right">上传文件 &nbsp; &nbsp;</td>
                                <td><input type = "file"/></td>
                            </tr>
                            <tr height = "50">
                                <td>&nbsp;</td>
                                <td style = "line-height:20px;">
                                    <font color = "#ff4e00">小提示：</font><br/>
                                    您可以上传以下格式的文件：gif、jpg、png、word、excel、txt、zip、ppt、pdf
                                </td>
                            </tr>
                            <tr height = "50" valign = "bottom">
                                <td>&nbsp;</td>
                                <td><input type = "submit" value = "提交" class = "btn_tj"/></td>
                            </tr>
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
