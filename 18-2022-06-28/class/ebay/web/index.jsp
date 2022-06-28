<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-23
  Time: 上午 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<%@ include file = "head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns = "http://www.w3.org/1999/xhtml">
    <!--Begin Menu Begin-->
    <div class = "menu_bg">
        <div class = "menu">
            <!--Begin 商品分类详情 Begin-->
            <div class = "nav">
                <div class = "nav_t">全部商品分类</div>
                <div class = "leftNav">
                    <ul>
                        <c:forEach items = "${requestScope.ProductCategoryList1}" var = "category1" begin = "0" step = "1" end = "5" varStatus = "i">
                            <li>
                                <div class = "fj">
                                    <span class = "n_img"><span></span><img src = "images/nav1.png"/></span>
                                    <span class = "fl">${category1.name}</span>
                                </div>
                                <div class = "zj" style = "top: -${i.index*40}px">
                                    <div class = "zj_l">
                                        <c:forEach items = "${requestScope.ProductCategoryList2}" var = "category2" begin = "0" step = "1" end = "5" varStatus = "i">
                                            <div class = "zj_l_c">
                                                <h2><%--二级分类--%>
                                                    <a href = "ProductServlet?method=twoClass&cid=${category2.id}&level=2&cname=${category1.name}&nbsp;>&nbsp;${category2.name}"&nbsp;>&nbsp;${category2.name}</a>
                                                </h2>
                                                <c:forEach items = "${requestScope.ProductCategoryList3}" var = "categroy3" begin = "0" step = "1" varStatus = "i">
                                                    <c:if test = "${category2.id==categroy3.parentId}">
                                                        <a href = "ProductServlet?method=threeClass&cid=${categroy3.id}&level=3&cname=${category1.name} > ${category2.name} > ${categroy3.name}">${categroy3.name}</a>|
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <div class = "zj_r">
                                        <a href = "#"><img src = "images/n_img1.jpg" width = "236" height = "200"/></a>
                                        <a href = "#"><img src = "images/n_img2.jpg" width = "236" height = "200"/></a>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <!--End 商品分类详情 End-->
            <ul class = "menu_r">
                <li><a href = "IndexServlet">首页</a></li>
                <li><a href = "#">美食</a></li>
                <li><a href = "#">生鲜</a></li>
                <li><a href = "#">家居</a></li>
                <li><a href = "#">女装</a></li>
                <li><a href = "#">美妆</a></li>
                <li><a href = "#">数码</a></li>
                <li><a href = "#">团购</a></li>
            </ul>
            <div class = "m_ad">中秋送好礼！</div>
        </div>
    </div>
    <!--End Menu End-->
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
                    <c:forEach items = "${requestScope.eabyNews}" var = "news" begin = "0" step = "1" end = "4" varStatus = "i">
                        <c:if test = "${i.index%2==0}">
                            <li><span>[ 公告 ]</span><a href = "#">${news.content}</a></li>
                        </c:if>
                        <c:if test = "${i.index%2!=0}">
                            <li><span>[ 特惠 ]</span><a href = "#">${news.content}</a></li>
                        </c:if>
                    </c:forEach>
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
                                    <c:forEach items = "${requestScope.eabyProductListHot}" var = "product" begin = "0" step = "1" end = "4">
                                        <li class = "featureBox">
                                            <div class = "box">
                                                <div class = "h_icon">
                                                    <img src = "images/hot.png" width = "50" height = "50"/></div>
                                                <div class = "imgbg">
                                                    <a href = "#"><img src = "images/${product.fileName}" width = "160" height = "136"/></a>
                                                </div>
                                                <div class = "name">
                                                    <a href = "#">
                                                        <h2>${product.name}</h2>
                                                        德亚全脂纯牛奶200ml*48盒
                                                    </a>
                                                </div>
                                                <div class = "price">
                                                    <font>￥<span>189</span></font> &nbsp; 26R
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>
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
                <c:forEach items = "${requestScope.eabyProductListSell}" var = "sell" begin = "0" step = "1" end = "3" varStatus = "i">
                    <div class = "sell_${i.index+1}">
                        <div class = "s_img">
                            <a href = "#"><img src = "images/${sell.fileName}" width = "185" height = "155"/></a>
                        </div>
                        <div class = "s_price">￥<span>${sell.price}</span></div>
                        <div class = "s_name">
                            <h2><a href = "#">${sell.name}</a></h2>
                            倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                        </div>
                    </div>
                </c:forEach>
                <div class = "sell_b1">
                    <div class = "sb_img"><a href = "#"><img src = "images/tm_b1.jpg" width = "242" height = "356"/></a>
                    </div>
                    <div class = "s_price">￥<span>289</span></div>
                    <div class = "s_name">
                        <h2><a href = "#">东北大米</a></h2>
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
                    <c:forEach items = "${requestScope.listType660}" var = "listType660" begin = "0" step = "1" end = "5" varStatus = "i">
                        <li>
                            <div class = "name"><a href = "#">${listType660.name}</a></div>
                            <div class = "price">
                                <font>￥<span>${listType660.price}</span></font> &nbsp; 26R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/${listType660.fileName}" width = "185" height = "155"/></a>
                            </div>
                        </li>
                    </c:forEach>
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
                    <c:forEach items = "${requestScope.listType676}" var = "listType676" begin = "0" step = "1" end = "5" varStatus = "i">
                        <li>
                            <div class = "name"><a href = "#">莫斯利安酸奶</a></div>
                            <div class = "price">
                                <font>￥<span>${listType676.price}</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/${listType676.fileName}" width = "185" height = "155"/></a>
                            </div>
                        </li>
                    </c:forEach>
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
                    <c:forEach items = "${requestScope.listType548}" var = "listType548" begin = "0" step = "1" end = "5" varStatus = "i">
                        <li>
                            <div class = "name"><a href = "#">${listType548.name}</a></div>
                            <div class = "price">
                                <font>￥<span>${listType548.price}</span></font> &nbsp; 16R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/${listType548.fileName}" width = "185" height = "155"/></a>
                            </div>
                        </li>
                    </c:forEach>
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
                    <c:forEach items = "${requestScope.listType681}" var = "listType681" begin = "0" step = "1" end = "6" varStatus = "i">
                        <li>
                            <div class = "name"><a href = "#">${listType681.name}</a></div>
                            <div class = "price">
                                <font>￥<span>${listType681.price}</span></font> &nbsp; 20R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/${listType681.fileName}" width = "185" height = "155"/></a>
                            </div>
                        </li>
                    </c:forEach>
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
                    <c:forEach items = "${requestScope.Level1Id5F}" var = "level1Id5F" begin = "0" step = "1" end = "5" varStatus = "i">
                        <li>
                            <div class = "name"><a href = "#">品质蓝色沙发</a></div>
                            <div class = "price">
                                <font>￥<span>2160.00</span></font> &nbsp; 50R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/${level1Id5F.fileName}" width = "185" height = "155"/></a>
                            </div>
                        </li>
                    </c:forEach>
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
                    <c:forEach items = "${requestScope.listType670}" var = "listType670" begin = "0" step = "1" end = "5" varStatus = "i">
                        <li>
                            <div class = "name"><a href = "#">${listType670.name}</a></div>
                            <div class = "price">
                                <font>￥<span>${listType670.price}</span></font> &nbsp; 25R
                            </div>
                            <div class = "img">
                                <a href = "#"><img src = "images/${listType670.fileName}" width = "185" height = "155"/></a>
                            </div>
                        </li>
                    </c:forEach>
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
                                <c:forEach items = "${requestScope.listType670}" var = "listType670" begin = "0" step = "1" end = "5" varStatus = "i">
                                    <li class = "featureBox">
                                        <div class = "box">
                                            <div class = "imgbg">
                                                <a href = "#"><img src = "images/${listType670.fileName}" width = "160" height = "136"/></a>
                                            </div>
                                            <div class = "name">
                                                <a href = "#">
                                                    <h2>${listType670.name}</h2>
                                                    德亚全脂纯牛奶200ml*48盒
                                                </a>
                                            </div>
                                            <div class = "price">
                                                <font>￥<span>${listType670.price}</span></font> &nbsp; 26R
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
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