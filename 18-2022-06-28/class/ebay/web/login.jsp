<%@ page import = "java.net.URLEncoder" %>
<%@ page import = "java.net.URLDecoder" %><%--
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
        <script type = "text/javascript" src = "js/login.js"></script>

        <title>易趣商城</title>
    </head>
    <body>
        <!--Begin Header Begin-->
        <div class = "soubg">
            <div class = "sou">
        <span class = "fr">
        	<span class = "fl">你好，请<a href = "login.jsp">登录</a>&nbsp; <a href = "regist.jsp" style = "color:#ff4e00;">免费注册</a>&nbsp; </span>
            <span class = "fl">|&nbsp;关注我们：</span>
            <span class = "s_sh"><a href = "#" class = "sh1">新浪</a><a href = "#" class = "sh2">微信</a></span>
            <span class = "fr">|&nbsp;<a href = "#">手机版&nbsp;<img src = "images/s_tel.png" align = "absmiddle"/></a></span>
        </span>
            </div>
        </div>
        <!--End Header End-->
        <!--Begin Login Begin-->
        <div class = "log_bg">
            <div class = "top">
                <div class = "logo"><a href = "Index.html"><img src = "images/logo.png"/></a></div>
            </div>
            <div class = "login">
                <div class = "log_img"><img src = "images/l_img.png" width = "611" height = "425"/></div>
                <div class = "log_c">
                    <form action = "LoginServlet?method=login" method = "post">
                        <table border = "0" style = "width:370px; font-size:14px; margin-top:30px;" cellspacing = "0" cellpadding = "0">
                            <tr height = "50" valign = "top">
                                <td width = "55">&nbsp;</td>
                                <td>
                                    <span class = "fl" style = "font-size:24px;">登录</span>
                                    <span class = "fr">还没有商城账号，<a href = "regist.jsp" style = "color:#ff4e00;">立即注册</a></span>
                                </td>
                            </tr>
                            <%
                                Cookie[] cookies = request.getCookies();
                                if (cookies != null) {
                                    for (int i = 0; i < cookies.length; i++) {
                                        Cookie c = cookies[i];
                                        String name = c.getName();
                                        if ("causer".equals(name)) {
                                            String[] puser = URLDecoder.decode(c.getValue(), "utf-8").split(",");
                                            pageContext.setAttribute("loginName", puser[0]);
                                            pageContext.setAttribute("password", puser[1]);
                                        }
                                    }
                                }
                            %>
                            <tr height = "70">
                                <td>用户名</td>
                                <td><input type = "text" name = "loginName" value = "${loginName}" class = "l_user"/>
                                </td>
                            </tr>
                            <tr height = "70">
                                <td>密&nbsp; &nbsp; 码</td>
                                <td>
                                    <input type = "password" name = "loginPassword" value = "${password}" class = "l_pwd"/>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style = "font-size:12px; padding-top:20px;">
                	                <span style = "font-family:'宋体';" class = "fl">
                    	            <label class = "r_rad">
                                        <input type = "checkbox" name = "checkName"/>
                                    </label><label class = "r_txt">请保存我这次的登录信息</label>
                                    </span>
                                    <span class = "fr"><a href = "#" style = "color:#ff4e00;">忘记密码</a></span>
                                </td>
                            </tr>
                            <tr height = "60">
                                <td>&nbsp;</td>
                                <td><input type = "submit" value = "登录" onclick = "return login()" class = "log_btn"/>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
        <!--End Login End-->
        <!--Begin Footer Begin-->
        <div class = "btmbg">
            <div class = "btm">
                备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 ,
                Technical Support: Dgg Group <br/>
                <img src = "images/b_1.gif" width = "98" height = "33"/><img src = "images/b_2.gif" width = "98" height = "33"/><img src = "images/b_3.gif" width = "98" height = "33"/><img src = "images/b_4.gif" width = "98" height = "33"/><img src = "images/b_5.gif" width = "98" height = "33"/><img src = "images/b_6.gif" width = "98" height = "33"/>
            </div>
        </div>
        <!--End Footer End -->
    </body>
    <!--[if IE 6]>
    <script src = "//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
    <![endif]-->
</html>
