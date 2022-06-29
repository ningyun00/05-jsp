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
        <!--Begin Header Begin-->
        <div class = "soubg">
            <div class = "sou">
                <!--Begin 所在收货地区 Begin-->
                <span class = "s_city_b">
        	<span class = "fl">送货至：</span>
            <span class = "s_city">
            	<span>四川</span>
                <div class = "s_city_bg">
                	<div class = "s_city_t"></div>
                    <div class = "s_city_c">
                    	<h2>请选择所在的收货地区</h2>
                        <table border = "0" class = "c_tab" style = "width:235px; margin-top:10px;" cellspacing = "0" cellpadding = "0">
                          <tr>
                            <th>A</th>
                            <td class = "c_h"><span>安徽</span><span>澳门</span></td>
                          </tr>
                          <tr>
                            <th>B</th>
                            <td class = "c_h"><span>北京</span></td>
                          </tr>
                          <tr>
                            <th>C</th>
                            <td class = "c_h"><span>重庆</span></td>
                          </tr>
                          <tr>
                            <th>F</th>
                            <td class = "c_h"><span>福建</span></td>
                          </tr>
                          <tr>
                            <th>G</th>
                            <td class = "c_h"><span>广东</span><span>广西</span><span>贵州</span><span>甘肃</span></td>
                          </tr>
                          <tr>
                            <th>H</th>
                            <td class = "c_h"><span>河北</span><span>河南</span><span>黑龙江</span><span>海南</span><span>湖北</span><span>湖南</span></td>
                          </tr>
                          <tr>
                            <th>J</th>
                            <td class = "c_h"><span>江苏</span><span>吉林</span><span>江西</span></td>
                          </tr>
                          <tr>
                            <th>L</th>
                            <td class = "c_h"><span>辽宁</span></td>
                          </tr>
                          <tr>
                            <th>N</th>
                            <td class = "c_h"><span>内蒙古</span><span>宁夏</span></td>
                          </tr>
                          <tr>
                            <th>Q</th>
                            <td class = "c_h"><span>青海</span></td>
                          </tr>
                          <tr>
                            <th>S</th>
                            <td class = "c_h"><span>上海</span><span>山东</span><span>山西</span><span class = "c_check">四川</span><span>陕西</span></td>
                          </tr>
                          <tr>
                            <th>T</th>
                            <td class = "c_h"><span>台湾</span><span>天津</span></td>
                          </tr>
                          <tr>
                            <th>X</th>
                            <td class = "c_h"><span>西藏</span><span>香港</span><span>新疆</span></td>
                          </tr>
                          <tr>
                            <th>Y</th>
                            <td class = "c_h"><span>云南</span></td>
                          </tr>
                          <tr>
                            <th>Z</th>
                            <td class = "c_h"><span>浙江</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </span>
        </span>
                <!--End 所在收货地区 End-->
                <span class = "fr">
        	<span class = "fl">你好，请<a href = "Login.html">登录</a>&nbsp; <a href = "Regist.html" style = "color:#ff4e00;">免费注册</a>&nbsp;|&nbsp;<a href = "#">我的订单</a>&nbsp;|</span>
        	<span class = "ss">
            	<div class = "ss_list">
                	<a href = "#">收藏夹</a>
                    <div class = "ss_list_bg">
                    	<div class = "s_city_t"></div>
                        <div class = "ss_list_c">
                        	<ul>
                            	<li><a href = "#">我的收藏夹</a></li>
                                <li><a href = "#">我的收藏夹</a></li>
                            </ul>
                        </div>
                    </div>     
                </div>
                <div class = "ss_list">
                	<a href = "#">客户服务</a>
                    <div class = "ss_list_bg">
                    	<div class = "s_city_t"></div>
                        <div class = "ss_list_c">
                        	<ul>
                            	<li><a href = "#">客户服务</a></li>
                                <li><a href = "#">客户服务</a></li>
                                <li><a href = "#">客户服务</a></li>
                            </ul>
                        </div>
                    </div>    
                </div>
                <div class = "ss_list">
                	<a href = "#">网站导航</a>
                    <div class = "ss_list_bg">
                    	<div class = "s_city_t"></div>
                        <div class = "ss_list_c">
                        	<ul>
                            	<li><a href = "#">网站导航</a></li>
                                <li><a href = "#">网站导航</a></li>
                            </ul>
                        </div>
                    </div>    
                </div>
            </span>
            <span class = "fl">|&nbsp;关注我们：</span>
            <span class = "s_sh"><a href = "#" class = "sh1">新浪</a><a href = "#" class = "sh2">微信</a></span>
            <span class = "fr">|&nbsp;<a href = "#">手机版&nbsp;<img src = "images/s_tel.png" align = "absmiddle"/></a></span>
        </span>
            </div>
        </div>
        <div class = "top">
            <div class = "logo"><a href = "Index.html"><img src = "images/logo.png"/></a></div>
            <div class = "search">
                <form>
                    <input type = "text" value = "" class = "s_ipt"/>
                    <input type = "submit" value = "搜索" class = "s_btn"/>
                </form>
                <span class = "fl"><a href = "#">咖啡</a><a href = "#">iphone 6S</a><a href = "#">新鲜美食</a><a href = "#">蛋糕</a><a href = "#">日用品</a><a href = "#">连衣裙</a></span>
            </div>
            <div class = "i_car">
                <div class = "car_t">购物车 [ <span>3</span> ]</div>
                <div class = "car_bg">
                    <!--Begin 购物车未登录 Begin-->
                    <div class = "un_login">还未登录！<a href = "Login.html" style = "color:#ff4e00;">马上登录</a> 查看购物车！</div>
                    <!--End 购物车未登录 End-->
                    <!--Begin 购物车已登录 Begin-->
                    <ul class = "cars">
                        <li>
                            <div class = "img">
                                <a href = "#"><img src = "images/car1.jpg" width = "58" height = "58"/></a></div>
                            <div class = "name"><a href = "#">法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只</a></div>
                            <div class = "price"><font color = "#ff4e00">￥399</font> X1</div>
                        </li>
                        <li>
                            <div class = "img">
                                <a href = "#"><img src = "images/car2.jpg" width = "58" height = "58"/></a></div>
                            <div class = "name"><a href = "#">香奈儿（Chanel）邂逅活力淡香水50ml</a></div>
                            <div class = "price"><font color = "#ff4e00">￥399</font> X1</div>
                        </li>
                        <li>
                            <div class = "img">
                                <a href = "#"><img src = "images/car2.jpg" width = "58" height = "58"/></a></div>
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
        <!--End Header End-->
        <!--Begin Menu Begin-->
        <div class = "menu_bg">
            <div class = "menu">
                <!--Begin 商品分类详情 Begin-->
                <div class = "nav">
                    <div class = "nav_t">全部商品分类</div>
                    <div class = "leftNav none">
                        <ul>
                            <li>
                                <div class = "fj">
                                    <span class = "n_img"><span></span><img src = "images/nav1.png"/></span>
                                    <span class = "fl">进口食品、生鲜</span>
                                </div>
                                <div class = "zj">
                                    <div class = "zj_l">
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                    </div>
                                    <div class = "zj_r">
                                        <a href = "#"><img src = "images/n_img1.jpg" width = "236" height = "200"/></a>
                                        <a href = "#"><img src = "images/n_img2.jpg" width = "236" height = "200"/></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class = "fj">
                                    <span class = "n_img"><span></span><img src = "images/nav2.png"/></span>
                                    <span class = "fl">食品、饮料、酒</span>
                                </div>
                                <div class = "zj" style = "top:-40px;">
                                    <div class = "zj_l">
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力2</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                    </div>
                                    <div class = "zj_r">
                                        <a href = "#"><img src = "images/n_img1.jpg" width = "236" height = "200"/></a>
                                        <a href = "#"><img src = "images/n_img2.jpg" width = "236" height = "200"/></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class = "fj">
                                    <span class = "n_img"><span></span><img src = "images/nav3.png"/></span>
                                    <span class = "fl">母婴、玩具、童装</span>
                                </div>
                                <div class = "zj" style = "top:-80px;">
                                    <div class = "zj_l">
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力3</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                    </div>
                                    <div class = "zj_r">
                                        <a href = "#"><img src = "images/n_img1.jpg" width = "236" height = "200"/></a>
                                        <a href = "#"><img src = "images/n_img2.jpg" width = "236" height = "200"/></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class = "fj">
                                    <span class = "n_img"><span></span><img src = "images/nav4.png"/></span>
                                    <span class = "fl">家居、家庭清洁、纸品</span>
                                </div>
                                <div class = "zj" style = "top:-120px;">
                                    <div class = "zj_l">
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力4</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                    </div>
                                    <div class = "zj_r">
                                        <a href = "#"><img src = "images/n_img1.jpg" width = "236" height = "200"/></a>
                                        <a href = "#"><img src = "images/n_img2.jpg" width = "236" height = "200"/></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class = "fj">
                                    <span class = "n_img"><span></span><img src = "images/nav5.png"/></span>
                                    <span class = "fl">美妆、个人护理、洗护</span>
                                </div>
                                <div class = "zj" style = "top:-160px;">
                                    <div class = "zj_l">
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力5</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                    </div>
                                    <div class = "zj_r">
                                        <a href = "#"><img src = "images/n_img1.jpg" width = "236" height = "200"/></a>
                                        <a href = "#"><img src = "images/n_img2.jpg" width = "236" height = "200"/></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class = "fj">
                                    <span class = "n_img"><span></span><img src = "images/nav6.png"/></span>
                                    <span class = "fl">女装、内衣、中老年</span>
                                </div>
                                <div class = "zj" style = "top:-200px;">
                                    <div class = "zj_l">
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力6</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                    </div>
                                    <div class = "zj_r">
                                        <a href = "#"><img src = "images/n_img1.jpg" width = "236" height = "200"/></a>
                                        <a href = "#"><img src = "images/n_img2.jpg" width = "236" height = "200"/></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class = "fj">
                                    <span class = "n_img"><span></span><img src = "images/nav7.png"/></span>
                                    <span class = "fl">鞋靴、箱包、腕表配饰</span>
                                </div>
                                <div class = "zj" style = "top:-240px;">
                                    <div class = "zj_l">
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力7</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                    </div>
                                    <div class = "zj_r">
                                        <a href = "#"><img src = "images/n_img1.jpg" width = "236" height = "200"/></a>
                                        <a href = "#"><img src = "images/n_img2.jpg" width = "236" height = "200"/></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class = "fj">
                                    <span class = "n_img"><span></span><img src = "images/nav8.png"/></span>
                                    <span class = "fl">男装、运动</span>
                                </div>
                                <div class = "zj" style = "top:-280px;">
                                    <div class = "zj_l">
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力8</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                    </div>
                                    <div class = "zj_r">
                                        <a href = "#"><img src = "images/n_img1.jpg" width = "236" height = "200"/></a>
                                        <a href = "#"><img src = "images/n_img2.jpg" width = "236" height = "200"/></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class = "fj">
                                    <span class = "n_img"><span></span><img src = "images/nav9.png"/></span>
                                    <span class = "fl">手机、小家电、电脑</span>
                                </div>
                                <div class = "zj" style = "top:-320px;">
                                    <div class = "zj_l">
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力9</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                    </div>
                                    <div class = "zj_r">
                                        <a href = "#"><img src = "images/n_img1.jpg" width = "236" height = "200"/></a>
                                        <a href = "#"><img src = "images/n_img2.jpg" width = "236" height = "200"/></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class = "fj">
                                    <span class = "n_img"><span></span><img src = "images/nav10.png"/></span>
                                    <span class = "fl">礼品、充值</span>
                                </div>
                                <div class = "zj" style = "top:-360px;">
                                    <div class = "zj_l">
                                        <div class = "zj_l_c">
                                            <h2>零食 / 糖果 / 巧克力10</h2>
                                            <a href = "#">坚果</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">巧克力</a>|
                                            <a href = "#">口香糖</a>|<a href = "#">海苔</a>|<a href = "#">鱼干</a>|<a href = "#">蜜饯</a>|<a href = "#">红枣</a>|
                                            <a href = "#">蜜饯</a>|<a href = "#">红枣</a>|<a href = "#">牛肉干</a>|<a href = "#">蜜饯</a>|
                                        </div>
                                    </div>
                                    <div class = "zj_r">
                                        <a href = "#"><img src = "images/n_img1.jpg" width = "236" height = "200"/></a>
                                        <a href = "#"><img src = "images/n_img2.jpg" width = "236" height = "200"/></a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--End 商品分类详情 End-->
                <ul class = "menu_r">
                    <li><a href = "Index.html">首页</a></li>
                    <li><a href = "Food.html">美食</a></li>
                    <li><a href = "Fresh.html">生鲜</a></li>
                    <li><a href = "HomeDecoration.html">家居</a></li>
                    <li><a href = "SuitDress.html">女装</a></li>
                    <li><a href = "MakeUp.html">美妆</a></li>
                    <li><a href = "Digital.html">数码</a></li>
                    <li><a href = "GroupBuying.html">团购</a></li>
                </ul>
                <div class = "m_ad">中秋送好礼！</div>
            </div>
        </div>
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
