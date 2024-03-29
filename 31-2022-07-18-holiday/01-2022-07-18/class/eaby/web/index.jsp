<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-07-18
  Time: 上午 11:04
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
        <script type = "text/javascript" src = "js/jquery-1.11.1.min_044d0927.js"></script>
        <script type = "text/javascript" src = "js/jquery.bxslider_e88acd1b.js"></script>

        <script type = "text/javascript" src = "js/jquery-1.8.2.min.js"></script>
        <script type = "text/javascript" src = "js/menu.js"></script>

        <script type = "text/javascript" src = "js/select.js"></script>

        <script type = "text/javascript" src = "js/lrscroll.js"></script>

        <script type = "text/javascript" src = "js/iban.js"></script>
        <script type = "text/javascript" src = "js/fban.js"></script>
        <script type = "text/javascript" src = "js/f_ban.js"></script>
        <script type = "text/javascript" src = "js/mban.js"></script>
        <script type = "text/javascript" src = "js/bban.js"></script>
        <script type = "text/javascript" src = "js/hban.js"></script>
        <script type = "text/javascript" src = "js/tban.js"></script>

        <script type = "text/javascript" src = "js/lrscroll_1.js"></script>


        <title>易趣商城</title>
    </head>
    <body>
        <%@include file="head.jsp"%>
        <div class = "i_bg bg_color">
            <div class = "i_ban_bg">
                <!--Begin Banner Begin-->
                <div class = "banner">
                    <div class = "top_slide_wrap">
                        <ul class = "slide_box bxslider">
                            <li><img src = "images/ban1.jpg" width = "740" height = "401"/></li>
                            <li><img src = "images/ban1.jpg" width = "740" height = "401"/></li>
                            <li><img src = "images/ban1.jpg" width = "740" height = "401"/></li>
                        </ul>
                        <div class = "op_btns clearfix">
                            <a href = "#" class = "op_btn op_prev"><span></span></a>
                            <a href = "#" class = "op_btn op_next"><span></span></a>
                        </div>
                    </div>
                </div>
                <script type = "text/javascript">
                    //var jq = jQuery.noConflict();
                    (function () {
                        $(".bxslider").bxSlider({
                            auto: true,
                            prevSelector: jq(".top_slide_wrap .op_prev")[0],
                            nextSelector: jq(".top_slide_wrap .op_next")[0]
                        });
                    })();
                </script>
                <!--End Banner End-->
                <div class = "inews">
                    <div class = "news_t">
                        <span class = "fr"><a href = "#">更多 ></a></span>新闻资讯
                    </div>
                    <ul>
                        <li><span>[ 特惠 ]</span><a href = "#">掬一轮明月 表无尽惦念</a></li>
                        <li><span>[ 公告 ]</span><a href = "#">好奇金装成长裤新品上市</a></li>
                        <li><span>[ 特惠 ]</span><a href = "#">大牌闪购 · 抢！</a></li>
                        <li><span>[ 公告 ]</span><a href = "#">发福利 买车就抢千元油卡</a></li>
                        <li><span>[ 公告 ]</span><a href = "#">家电低至五折</a></li>
                    </ul>
                    <div class = "charge_t">
                        话费充值
                        <div class = "ch_t_icon"></div>
                    </div>
                    <form>
                        <table border = "0" style = "width:205px; margin-top:10px;" cellspacing = "0" cellpadding = "0">
                            <tr height = "35">
                                <td width = "33">号码</td>
                                <td><input type = "text" value = "" class = "c_ipt"/></td>
                            </tr>
                            <tr height = "35">
                                <td>面值</td>
                                <td>
                                    <select class = "jj" name = "city">
                                        <option value = "0" selected = "selected">100元</option>
                                        <option value = "1">50元</option>
                                        <option value = "2">30元</option>
                                        <option value = "3">20元</option>
                                        <option value = "4">10元</option>
                                    </select>
                                    <span style = "color:#ff4e00; font-size:14px;">￥99.5</span>
                                </td>
                            </tr>
                            <tr height = "35">
                                <td colspan = "2"><input type = "submit" value = "立即充值" class = "c_btn"/></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <!--Begin 热门商品 Begin-->
            <div class = "content mar_10">
                <div class = "h_l_img">
                    <div class = "img"><img src = "images/l_img.jpg" width = "188" height = "188"/></div>
                    <div class = "pri_bg">
                        <span class = "price fl">￥53.00</span>
                        <span class = "fr">16R</span>
                    </div>
                </div>
                <div class = "hot_pro">
                    <div id = "featureContainer">
                        <div id = "feature">
                            <div id = "block">
                                <div id = "botton-scroll">
                                    <ul class = "featureUL">
                                        <li class = "featureBox">
                                            <div class = "box">
                                                <div class = "h_icon">
                                                    <img src = "images/hot.png" width = "50" height = "50"/></div>
                                                <div class = "imgbg">
                                                    <a href = "#"><img src = "images/hot1.jpg" width = "160" height = "136"/></a>
                                                </div>
                                                <div class = "name">
                                                    <a href = "#">
                                                        <h2>德国进口</h2>
                                                        德亚全脂纯牛奶200ml*48盒
                                                    </a>
                                                </div>
                                                <div class = "price">
                                                    <font>￥<span>189</span></font> &nbsp; 26R
                                                </div>
                                            </div>
                                        </li>
                                        <li class = "featureBox">
                                            <div class = "box">
                                                <div class = "h_icon">
                                                    <img src = "images/hot.png" width = "50" height = "50"/></div>
                                                <div class = "imgbg">
                                                    <a href = "#"><img src = "images/hot2.jpg" width = "160" height = "136"/></a>
                                                </div>
                                                <div class = "name">
                                                    <a href = "#">
                                                        <h2>iphone 6S</h2>
                                                        Apple/苹果 iPhone 6s Plus公开版
                                                    </a>
                                                </div>
                                                <div class = "price">
                                                    <font>￥<span>5288</span></font> &nbsp; 25R
                                                </div>
                                            </div>
                                        </li>
                                        <li class = "featureBox">
                                            <div class = "box">
                                                <div class = "h_icon">
                                                    <img src = "images/hot.png" width = "50" height = "50"/></div>
                                                <div class = "imgbg">
                                                    <a href = "#"><img src = "images/hot3.jpg" width = "160" height = "136"/></a>
                                                </div>
                                                <div class = "name">
                                                    <a href = "#">
                                                        <h2>倩碧特惠组合套装</h2>
                                                        倩碧补水组合套装8折促销
                                                    </a>
                                                </div>
                                                <div class = "price">
                                                    <font>￥<span>368</span></font> &nbsp; 18R
                                                </div>
                                            </div>
                                        </li>
                                        <li class = "featureBox">
                                            <div class = "box">
                                                <div class = "h_icon">
                                                    <img src = "images/hot.png" width = "50" height = "50"/></div>
                                                <div class = "imgbg">
                                                    <a href = "#"><img src = "images/hot4.jpg" width = "160" height = "136"/></a>
                                                </div>
                                                <div class = "name">
                                                    <a href = "#">
                                                        <h2>品利特级橄榄油</h2>
                                                        750ml*4瓶装组合 西班牙原装进口
                                                    </a>
                                                </div>
                                                <div class = "price">
                                                    <font>￥<span>280</span></font> &nbsp; 30R
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <a class = "h_prev" href = "javascript:void();">Previous</a>
                            <a class = "h_next" href = "javascript:void();">Next</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--Begin 限时特卖 Begin-->
            <div class = "i_t mar_10">
                <span class = "fl">限时特卖</span>
                <span class = "i_mores fr"><a href = "#">更多</a></span>
            </div>
            <div class = "content">
                <div class = "i_sell">
                    <div id = "imgPlay">
                        <ul class = "imgs" id = "actor">
                            <li><a href = "#"><img src = "images/tm_r.jpg" width = "211" height = "357"/></a></li>
                            <li><a href = "#"><img src = "images/tm_r.jpg" width = "211" height = "357"/></a></li>
                            <li><a href = "#"><img src = "images/tm_r.jpg" width = "211" height = "357"/></a></li>
                        </ul>
                        <div class = "previ">上一张</div>
                        <div class = "nexti">下一张</div>
                    </div>
                </div>
                <div class = "sell_right">
                    <div class = "sell_1">
                        <div class = "s_img">
                            <a href = "#"><img src = "images/tm_1.jpg" width = "185" height = "155"/></a></div>
                        <div class = "s_price">￥<span>89</span></div>
                        <div class = "s_name">
                            <h2><a href = "#">沙宣洗发水</a></h2>
                            倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                        </div>
                    </div>
                    <div class = "sell_2">
                        <div class = "s_img">
                            <a href = "#"><img src = "images/tm_2.jpg" width = "185" height = "155"/></a></div>
                        <div class = "s_price">￥<span>289</span></div>
                        <div class = "s_name">
                            <h2><a href = "#">德芙巧克力</a></h2>
                            倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                        </div>
                    </div>
                    <div class = "sell_b1">
                        <div class = "sb_img"><a href = "#"><img src = "images/tm_b1.jpg" width = "242" height = "356"/></a>
                        </div>
                        <div class = "s_price">￥<span>289</span></div>
                        <div class = "s_name">
                            <h2><a href = "#">东北大米</a></h2>
                            倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                        </div>
                    </div>
                    <div class = "sell_3">
                        <div class = "s_img">
                            <a href = "#"><img src = "images/tm_3.jpg" width = "185" height = "155"/></a></div>
                        <div class = "s_price">￥<span>289</span></div>
                        <div class = "s_name">
                            <h2><a href = "#">迪奥香水</a></h2>
                            倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                        </div>
                    </div>
                    <div class = "sell_4">
                        <div class = "s_img">
                            <a href = "#"><img src = "images/tm_4.jpg" width = "185" height = "155"/></a></div>
                        <div class = "s_price">￥<span>289</span></div>
                        <div class = "s_name">
                            <h2><a href = "#">美妆</a></h2>
                            倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                        </div>
                    </div>
                    <div class = "sell_b2">
                        <div class = "sb_img"><a href = "#"><img src = "images/tm_b2.jpg" width = "242" height = "356"/></a>
                        </div>
                        <div class = "s_price">￥<span>289</span></div>
                        <div class = "s_name">
                            <h2><a href = "#">美妆</a></h2>
                            倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                        </div>
                    </div>
                </div>
            </div>
            <!--End 限时特卖 End-->
            <div class = "content mar_20">
                <img src = "images/mban_1.jpg" width = "1200" height = "110"/>
            </div>
            <!--Begin 进口 生鲜 Begin-->
            <div class = "i_t mar_10">
                <span class = "floor_num">1F</span>
                <span class = "fl">进口 <b>·</b> 生鲜</span>
                <span class = "i_mores fr"><a href = "#">进口咖啡</a>&nbsp; &nbsp; &nbsp; <a href = "#">进口酒</a>&nbsp; &nbsp; &nbsp; <a href = "#">进口母婴</a>&nbsp; &nbsp; &nbsp; <a href = "#">新鲜蔬菜</a>&nbsp; &nbsp; &nbsp; <a href = "#">新鲜水果</a></span>
            </div>
            <div class = "content">
                <div class = "fresh_left">
                    <div class = "fre_ban">
                        <div id = "imgPlay1">
                            <ul class = "imgs" id = "actor1">
                                <li><a href = "#"><img src = "images/fre_r.jpg" width = "211" height = "286"/></a></li>
                                <li><a href = "#"><img src = "images/fre_r.jpg" width = "211" height = "286"/></a></li>
                                <li><a href = "#"><img src = "images/fre_r.jpg" width = "211" height = "286"/></a></li>
                            </ul>
                            <div class = "prevf">上一张</div>
                            <div class = "nextf">下一张</div>
                        </div>
                    </div>
                    <div class = "fresh_txt">
                        <div class = "fresh_txt_c">
                            <a href = "#">进口水果</a><a href = "#">奇异果</a><a href = "#">西柚</a><a href = "#">海鲜水产</a><a href = "#">品质牛肉</a><a href = "#">奶粉</a><a href = "#">鲜活禽蛋</a><a href = "#">进口酒</a><a href = "#">进口奶粉</a><a href = "#">鲜活禽蛋</a>
                        </div>
                    </div>
                </div>
                <div class = "fresh_mid">
                    <ul>
                        <li>
                            <div class = "name"><a href = "#">新鲜美味 进口美食</a></div>
                            <div class = "price">
                                <font>￥<span>198.00</span></font> &nbsp; 26R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/fre_1.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">新鲜美味 进口美食</a></div>
                            <div class = "price">
                                <font>￥<span>198.00</span></font> &nbsp; 26R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/fre_2.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">新鲜美味 进口美食</a></div>
                            <div class = "price">
                                <font>￥<span>198.00</span></font> &nbsp; 26R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/fre_3.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">新鲜美味 进口美食</a></div>
                            <div class = "price">
                                <font>￥<span>198.00</span></font> &nbsp; 26R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/fre_4.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">新鲜美味 进口美食</a></div>
                            <div class = "price">
                                <font>￥<span>198.00</span></font> &nbsp; 26R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/fre_5.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">新鲜美味 进口美食</a></div>
                            <div class = "price">
                                <font>￥<span>198.00</span></font> &nbsp; 26R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/fre_6.jpg" width = "185" height = "155"/></a></div>
                        </li>
                    </ul>
                </div>
                <div class = "fresh_right">
                    <ul>
                        <li><a href = "#"><img src = "images/fre_b1.jpg" width = "260" height = "220"/></a></li>
                        <li><a href = "#"><img src = "images/fre_b2.jpg" width = "260" height = "220"/></a></li>
                    </ul>
                </div>
            </div>
            <!--End 进口 生鲜 End-->
            <!--Begin 食品饮料 Begin-->
            <div class = "i_t mar_10">
                <span class = "floor_num">2F</span>
                <span class = "fl">食品饮料</span>
                <span class = "i_mores fr"><a href = "#">咖啡</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">休闲零食</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">饼干糕点</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">冲饮谷物</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">营养保健</a></span>
            </div>
            <div class = "content">
                <div class = "food_left">
                    <div class = "food_ban">
                        <div id = "imgPlay2">
                            <ul class = "imgs" id = "actor2">
                                <li><a href = "#"><img src = "images/food_r.jpg" width = "211" height = "286"/></a></li>
                                <li><a href = "#"><img src = "images/food_r.jpg" width = "211" height = "286"/></a></li>
                                <li><a href = "#"><img src = "images/food_r.jpg" width = "211" height = "286"/></a></li>
                            </ul>
                            <div class = "prev_f">上一张</div>
                            <div class = "next_f">下一张</div>
                        </div>
                    </div>
                    <div class = "fresh_txt">
                        <div class = "fresh_txt_c">
                            <a href = "#">饼干糕点</a><a href = "#">休闲零食</a><a href = "#">饮料果汁</a><a href = "#">牛奶乳品</a><a href = "#">冲饮谷物</a><a href = "#">营养保健</a><a href = "#">冲饮谷物</a><a href = "#">营养保健</a>
                        </div>
                    </div>
                </div>
                <div class = "fresh_mid">
                    <ul>
                        <li>
                            <div class = "name"><a href = "#">莫斯利安酸奶</a></div>
                            <div class = "price">
                                <font>￥<span>96.00</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/food_1.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">莫斯利安酸奶</a></div>
                            <div class = "price">
                                <font>￥<span>96.00</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/food_2.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">莫斯利安酸奶</a></div>
                            <div class = "price">
                                <font>￥<span>96.00</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/food_3.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">莫斯利安酸奶</a></div>
                            <div class = "price">
                                <font>￥<span>96.00</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/food_4.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">莫斯利安酸奶</a></div>
                            <div class = "price">
                                <font>￥<span>96.00</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/food_5.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">莫斯利安酸奶</a></div>
                            <div class = "price">
                                <font>￥<span>96.00</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/food_6.jpg" width = "185" height = "155"/></a></div>
                        </li>
                    </ul>
                </div>
                <div class = "fresh_right">
                    <ul>
                        <li><a href = "#"><img src = "images/food_b1.jpg" width = "260" height = "220"/></a></li>
                        <li><a href = "#"><img src = "images/food_b2.jpg" width = "260" height = "220"/></a></li>
                    </ul>
                </div>
            </div>
            <!--End 食品饮料 End-->
            <!--Begin 个人美妆 Begin-->
            <div class = "i_t mar_10">
                <span class = "floor_num">3F</span>
                <span class = "fl">个人美妆</span>
                <span class = "i_mores fr"><a href = "#">洗发护发</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">面膜</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">洗面奶</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">香水</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">沐浴露</a></span>
            </div>
            <div class = "content">
                <div class = "make_left">
                    <div class = "make_ban">
                        <div id = "imgPlay3">
                            <ul class = "imgs" id = "actor3">
                                <li><a href = "#"><img src = "images/make_r.jpg" width = "211" height = "286"/></a></li>
                                <li><a href = "#"><img src = "images/make_r.jpg" width = "211" height = "286"/></a></li>
                                <li><a href = "#"><img src = "images/make_r.jpg" width = "211" height = "286"/></a></li>
                            </ul>
                            <div class = "prev_m">上一张</div>
                            <div class = "next_m">下一张</div>
                        </div>
                    </div>
                    <div class = "fresh_txt">
                        <div class = "fresh_txt_c">
                            <a href = "#">洗发护发</a><a href = "#">牙刷牙膏</a><a href = "#">面膜</a><a href = "#">补水面膜</a><a href = "#">香水</a><a href = "#">面霜</a><a href = "#">洗面奶</a><a href = "#">脱毛膏</a><a href = "#">沐浴露</a>
                        </div>
                    </div>
                </div>
                <div class = "fresh_mid">
                    <ul>
                        <li>
                            <div class = "name"><a href = "#">美宝莲粉饼</a></div>
                            <div class = "price">
                                <font>￥<span>260.00</span></font> &nbsp; 16R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/make_1.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">美宝莲粉饼</a></div>
                            <div class = "price">
                                <font>￥<span>260.00</span></font> &nbsp; 16R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/make_2.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">美宝莲粉饼</a></div>
                            <div class = "price">
                                <font>￥<span>260.00</span></font> &nbsp; 16R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/make_3.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">美宝莲粉饼</a></div>
                            <div class = "price">
                                <font>￥<span>260.00</span></font> &nbsp; 16R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/make_4.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">美宝莲粉饼</a></div>
                            <div class = "price">
                                <font>￥<span>260.00</span></font> &nbsp; 16R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/make_5.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">美宝莲粉饼</a></div>
                            <div class = "price">
                                <font>￥<span>260.00</span></font> &nbsp; 16R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/make_6.jpg" width = "185" height = "155"/></a></div>
                        </li>
                    </ul>
                </div>
                <div class = "fresh_right">
                    <ul>
                        <li><a href = "#"><img src = "images/make_b1.jpg" width = "260" height = "220"/></a></li>
                        <li><a href = "#"><img src = "images/make_b2.jpg" width = "260" height = "220"/></a></li>
                    </ul>
                </div>
            </div>
            <!--End 个人美妆 End-->
            <div class = "content mar_20">
                <img src = "images/mban_1.jpg" width = "1200" height = "110"/>
            </div>
            <!--Begin 母婴玩具 Begin-->
            <div class = "i_t mar_10">
                <span class = "floor_num">4F</span>
                <span class = "fl">母婴玩具</span>
                <span class = "i_mores fr"><a href = "#">营养品</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">孕妈背带裤</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">儿童玩具</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">婴儿床</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">喂奶器</a></span>
            </div>
            <div class = "content">
                <div class = "baby_left">
                    <div class = "baby_ban">
                        <div id = "imgPlay4">
                            <ul class = "imgs" id = "actor4">
                                <li><a href = "#"><img src = "images/baby_r.jpg" width = "211" height = "286"/></a></li>
                                <li><a href = "#"><img src = "images/baby_r.jpg" width = "211" height = "286"/></a></li>
                                <li><a href = "#"><img src = "images/baby_r.jpg" width = "211" height = "286"/></a></li>
                            </ul>
                            <div class = "prev_b">上一张</div>
                            <div class = "next_b">下一张</div>
                        </div>
                    </div>
                    <div class = "fresh_txt">
                        <div class = "fresh_txt_c">
                            <a href = "#">孕妈必备</a><a href = "#">儿童玩具</a><a href = "#">重装童鞋</a><a href = "#">辅助食品</a><a href = "#">奶粉</a><a href = "#">鲜活禽蛋</a><a href = "#">维生素</a><a href = "#">重装童鞋</a><a href = "#">辅助食品</a>
                        </div>
                    </div>
                </div>
                <div class = "fresh_mid">
                    <ul>
                        <li>
                            <div class = "name"><a href = "#">儿童玩具 变形金刚</a></div>
                            <div class = "price">
                                <font>￥<span>260.00</span></font> &nbsp; 20R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/baby_1.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">儿童玩具 变形金刚</a></div>
                            <div class = "price">
                                <font>￥<span>260.00</span></font> &nbsp; 20R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/baby_2.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">儿童玩具 变形金刚</a></div>
                            <div class = "price">
                                <font>￥<span>260.00</span></font> &nbsp; 20R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/baby_3.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">儿童玩具 变形金刚</a></div>
                            <div class = "price">
                                <font>￥<span>260.00</span></font> &nbsp; 20R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/baby_4.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">儿童玩具 变形金刚</a></div>
                            <div class = "price">
                                <font>￥<span>260.00</span></font> &nbsp; 20R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/baby_5.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">儿童玩具 变形金刚</a></div>
                            <div class = "price">
                                <font>￥<span>260.00</span></font> &nbsp; 20R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/baby_6.jpg" width = "185" height = "155"/></a></div>
                        </li>
                    </ul>
                </div>
                <div class = "fresh_right">
                    <ul>
                        <li><a href = "#"><img src = "images/baby_b1.jpg" width = "260" height = "220"/></a></li>
                        <li><a href = "#"><img src = "images/baby_b2.jpg" width = "260" height = "220"/></a></li>
                    </ul>
                </div>
            </div>
            <!--End 母婴玩具 End-->
            <!--Begin 家居生活 Begin-->
            <div class = "i_t mar_10">
                <span class = "floor_num">5F</span>
                <span class = "fl">家居生活</span>
                <span class = "i_mores fr"><a href = "#">床上用品</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">家纺布艺</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">餐具</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">沙发</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">汽车用品</a></span>
            </div>
            <div class = "content">
                <div class = "home_left">
                    <div class = "home_ban">
                        <div id = "imgPlay5">
                            <ul class = "imgs" id = "actor5">
                                <li><a href = "#"><img src = "images/home_r.jpg" width = "211" height = "286"/></a></li>
                                <li><a href = "#"><img src = "images/home_r.jpg" width = "211" height = "286"/></a></li>
                                <li><a href = "#"><img src = "images/home_r.jpg" width = "211" height = "286"/></a></li>
                            </ul>
                            <div class = "prev_h">上一张</div>
                            <div class = "next_h">下一张</div>
                        </div>
                    </div>
                    <div class = "fresh_txt">
                        <div class = "fresh_txt_c">
                            <a href = "#">床上用品</a><a href = "#">家纺布艺</a><a href = "#">餐具水具</a><a href = "#">锅具厨具</a><a href = "#">沙发</a><a href = "#">书柜</a><a href = "#">狗粮</a><a href = "#">家装建材</a><a href = "#">汽车用品</a>
                        </div>
                    </div>
                </div>
                <div class = "fresh_mid">
                    <ul>
                        <li>
                            <div class = "name"><a href = "#">品质蓝色沙发</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 50R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/home_1.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">品质蓝色沙发</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 50R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/home_2.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">品质蓝色沙发</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 50R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/home_3.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">品质蓝色沙发</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 50R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/home_4.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">品质蓝色沙发</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 50R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/home_5.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">品质蓝色沙发</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 50R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/home_6.jpg" width = "185" height = "155"/></a></div>
                        </li>
                    </ul>
                </div>
                <div class = "fresh_right">
                    <ul>
                        <li><a href = "#"><img src = "images/home_b1.jpg" width = "260" height = "220"/></a></li>
                        <li><a href = "#"><img src = "images/home_b2.jpg" width = "260" height = "220"/></a></li>
                    </ul>
                </div>
            </div>
            <!--End 家居生活 End-->
            <!--Begin 数码家电 Begin-->
            <div class = "i_t mar_10">
                <span class = "floor_num">6F</span>
                <span class = "fl">数码家电</span>
                <span class = "i_mores fr"><a href = "#">手机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">苹果</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">华为手机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">洗衣机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href = "#">数码配件</a></span>
            </div>
            <div class = "content">
                <div class = "tel_left">
                    <div class = "tel_ban">
                        <div id = "imgPlay6">
                            <ul class = "imgs" id = "actor6">
                                <li><a href = "#"><img src = "images/tel_r.jpg" width = "211" height = "286"/></a></li>
                                <li><a href = "#"><img src = "images/tel_r.jpg" width = "211" height = "286"/></a></li>
                                <li><a href = "#"><img src = "images/tel_r.jpg" width = "211" height = "286"/></a></li>
                            </ul>
                            <div class = "prev_t">上一张</div>
                            <div class = "next_t">下一张</div>
                        </div>
                    </div>
                    <div class = "fresh_txt">
                        <div class = "fresh_txt_c">
                            <a href = "#">手机</a><a href = "#">平板电脑</a><a href = "#">空调</a><a href = "#">合约机</a><a href = "#">电风扇</a><a href = "#">数码配件</a><a href = "#">洗衣机</a><a href = "#">电视</a><a href = "#">充电器</a><a href = "#">耳线</a>
                        </div>
                    </div>
                </div>
                <div class = "fresh_mid">
                    <ul>
                        <li>
                            <div class = "name"><a href = "#">乐视高清电视</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/tel_1.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">乐视高清电视</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/tel_2.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">乐视高清电视</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/tel_3.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">乐视高清电视</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/tel_4.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">乐视高清电视</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/tel_5.jpg" width = "185" height = "155"/></a></div>
                        </li>
                        <li>
                            <div class = "name"><a href = "#">乐视高清电视</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/tel_6.jpg" width = "185" height = "155"/></a></div>
                        </li>
                    </ul>
                </div>
                <div class = "fresh_right">
                    <ul>
                        <li><a href = "#"><img src = "images/tel_b1.jpg" width = "260" height = "220"/></a></li>
                        <li><a href = "#"><img src = "images/tel_b2.jpg" width = "260" height = "220"/></a></li>
                    </ul>
                </div>
            </div>
            <!--End 数码家电 End-->
            <!--Begin 猜你喜欢 Begin-->
            <div class = "i_t mar_10">
                <span class = "fl">猜你喜欢</span>
            </div>
            <div class = "like">
                <div id = "featureContainer1">
                    <div id = "feature1">
                        <div id = "block1">
                            <div id = "botton-scroll1">
                                <ul class = "featureUL">
                                    <li class = "featureBox">
                                        <div class = "box">
                                            <div class = "imgbg">
                                                <a href = "#"><img src = "images/hot1.jpg" width = "160" height = "136"/></a>
                                            </div>
                                            <div class = "name">
                                                <a href = "#">
                                                    <h2>德国进口</h2>
                                                    德亚全脂纯牛奶200ml*48盒
                                                </a>
                                            </div>
                                            <div class = "price">
                                                <font>￥<span>189</span></font> &nbsp; 26R
                                            </div>
                                        </div>
                                    </li>
                                    <li class = "featureBox">
                                        <div class = "box">
                                            <div class = "imgbg">
                                                <a href = "#"><img src = "images/hot2.jpg" width = "160" height = "136"/></a>
                                            </div>
                                            <div class = "name">
                                                <a href = "#">
                                                    <h2>iphone 6S</h2>
                                                    Apple/苹果 iPhone 6s Plus公开版
                                                </a>
                                            </div>
                                            <div class = "price">
                                                <font>￥<span>5288</span></font> &nbsp; 25R
                                            </div>
                                        </div>
                                    </li>
                                    <li class = "featureBox">
                                        <div class = "box">
                                            <div class = "imgbg">
                                                <a href = "#"><img src = "images/hot3.jpg" width = "160" height = "136"/></a>
                                            </div>
                                            <div class = "name">
                                                <a href = "#">
                                                    <h2>倩碧特惠组合套装</h2>
                                                    倩碧补水组合套装8折促销
                                                </a>
                                            </div>
                                            <div class = "price">
                                                <font>￥<span>368</span></font> &nbsp; 18R
                                            </div>
                                        </div>
                                    </li>
                                    <li class = "featureBox">
                                        <div class = "box">
                                            <div class = "imgbg">
                                                <a href = "#"><img src = "images/hot4.jpg" width = "160" height = "136"/></a>
                                            </div>
                                            <div class = "name">
                                                <a href = "#">
                                                    <h2>品利特级橄榄油</h2>
                                                    750ml*4瓶装组合 西班牙原装进口
                                                </a>
                                            </div>
                                            <div class = "price">
                                                <font>￥<span>280</span></font> &nbsp; 30R
                                            </div>
                                        </div>
                                    </li>
                                    <li class = "featureBox">
                                        <div class = "box">
                                            <div class = "imgbg">
                                                <a href = "#"><img src = "images/hot4.jpg" width = "160" height = "136"/></a>
                                            </div>
                                            <div class = "name">
                                                <a href = "#">
                                                    <h2>品利特级橄榄油</h2>
                                                    750ml*4瓶装组合 西班牙原装进口
                                                </a>
                                            </div>
                                            <div class = "price">
                                                <font>￥<span>280</span></font> &nbsp; 30R
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <a class = "l_prev" href = "javascript:void();">Previous</a>
                        <a class = "l_next" href = "javascript:void();">Next</a>
                    </div>
                </div>
            </div>
            <!--End 猜你喜欢 End-->

            <!--Begin Footer Begin -->
            <div class = "b_btm_bg b_btm_c">
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