<%--
  Created by IntelliJ IDEA.
  User: 寜
  Date: 2022-06-26
  Time: 上午 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <body>
        <div class = "soubg">
            <div class = "sou">
                <!--Begin 所在收货地区 Begin-->
                <span class = "s_city_b">
        	<span class = "fl">送货至：</span>
            <span class = "s_city">
            	<span>长沙</span>
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
                </span><!--End 所在收货地区 End-->
                <span class = "fr"><span class = "fl">你好，<span>${sessionScope.eabyUser.userName}&nbsp;|&nbsp;
                    <a href = "/ning.ying/LoginServlet?method=logout">注销</a>&nbsp;
                    </span>|&nbsp;<a href = "/ning.ying/MemberServlet?method=memberOrder">我的订单</a>&nbsp;|
                 </span>
                <span class = "ss">
            	<div class = "ss_list">
                	<a href = "/ning.ying/Member/memberCollect.jsp">收藏夹</a>
                    <div class = "ss_list_bg">
                    	<div class = "s_city_t"></div>
                        <div class = "ss_list_c">
                        	<ul>
                            	<li><a href = "/ning.ying/Member/memberCollect.jsp">我的收藏夹</a></li>
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
                            	<li><a href = "/ning.ying/IndexServlet">首页</a></li>
                                <li><a href = "/ning.ying/login.jsp">登录新账号</a></li>
                                <li><a href = "/ning.ying/Member/memberMsg.jsp">前往留言</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </span>
            <span class = "fl">|&nbsp;关注我们：</span>
            <span class = "s_sh"><a href = "#" class = "sh1">新浪</a><a href = "#" class = "sh2">微信</a></span>
            <span class = "fr">|&nbsp;<a href = "#">手机版&nbsp;<img src = "../images/s_tel.png" align = "absmiddle"/></a></span>
            </span>
            </div>
        </div>
        <div class = "m_top_bg">
            <div class = "top">
                <div class = "m_logo"><a href = "/ning.ying/IndexServlet"><img src = "../images/logo.png"/></a></div>
                <script type="text/javascript" src="../js/member/shade.js"></script>
                <div class = "i_car">
                    <div class = "car_t">购物车 [ <span id = "counts">0</span> ]</div>
                    <div class = "car_bg">
                        <!--Begin 购物车未登录 Begin-->
                        <c:choose>
                            <c:when test = "${sessionScope.eabyUser==null}">
                                <div class = "un_login">还未登录！<a href = "login.jsp" style = "color:#ff4e00;">马上登录</a>查看购物车！
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class = "un_login">
                                    欢迎小可爱&nbsp;&nbsp;&nbsp;<a href = "buyCar.jsp" style = "color:#ff4e00;">${sessionScope.eabyUser.userName}</a>&nbsp;&nbsp;&nbsp;查看购物车！
                                </div>
                            </c:otherwise>
                        </c:choose>
                        <!--End 购物车未登录 End-->
                        <!--Begin 购物车已登录 Begin-->
                        <ul class = "cars" id = "cars">

                        </ul>
                        <div class = "price_sum">共计&nbsp; <font color = "#ff4e00">￥</font><span id = "gj">0.00</span></div>
                        <div class = "price_a">
                            <c:if test = "${sessionScope.eabyUser!=null}"><a href = "/ning.ying/ProductServlet?method=buyCarSum">去购物车结算</a></c:if><a href = "login.jsp">前往登录</a>
                        </div>
                        <!--End 购物车已登录 End-->
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
