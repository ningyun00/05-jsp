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

        <%--注册--%>
        <script type = "text/javascript" src = "js/regist.js"></script>
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
            <div class = "regist">
                <div class = "log_img"><img src = "images/l_img.png" width = "611" height = "425"/></div>
                <div class = "reg_c">
                    <form action = "RegistServlet?method=regist" method = "post">
                        <table border = "0" style = "width:420px; font-size:14px; margin-top:20px;" cellspacing = "0" cellpadding = "0">
                            <tr height = "50" valign = "top">
                                <td width = "95">&nbsp;</td>
                                <td>
                                    <span class = "fl" style = "font-size:24px;">注册</span>
                                    <span class = "fr">已有商城账号，<a href = "login.jsp" style = "color:#ff4e00;">我要登录</a></span>
                                </td>
                            </tr>
                            <tr height = "50">
                                <td align = "right"><font color = "#ff4e00">*</font>&nbsp;用户名 &nbsp;</td>
                                <td>
                                    <input type = "text" name = "registName" onblur = "peanName()" value = "" class = "l_user"/>
                                </td>
                            </tr>
                            <tr height = "50">
                                <td align = "right"><font color = "#ff4e00">*</font>&nbsp;密码 &nbsp;</td>
                                <td><input type = "password" name = "registPassword1" value = "" class = "l_pwd"/></td>
                            </tr>
                            <tr height = "50">
                                <td align = "right"><font color = "#ff4e00">*</font>&nbsp;确认密码 &nbsp;</td>
                                <td><input type = "password" name = "registPassword2" value = "" class = "l_pwd"/></td>
                            </tr>
                            <tr height = "50">
                                <td align = "right"><font color = "#ff4e00">*</font>&nbsp;邮箱 &nbsp;</td>
                                <td><input type = "text" name = "registEmail" value = "" class = "l_email"/></td>
                            </tr>
                            <tr height = "50">
                                <td align = "right"><font color = "#ff4e00">*</font>&nbsp;手机 &nbsp;</td>
                                <td><input type = "text" name = "registMobile" value = "" class = "l_tel"/></td>
                            </tr>
                            <tr height = "50">
                                <td align = "right"><font color = "#ff4e00">*</font>&nbsp;验证码 &nbsp;</td>
                                <td>
                                    <input type = "text" value = "" id = "yzm" class = "l_ipt" onblur = "yz()"/>
                                    <img id = "veryCode" src = "RegistServlet?method=veryCode" valign = "middle"/>
                                    <a href = "javascript:changeVeryCode()" style = "font-size:12px; font-family:'宋体';">换一张</a>
                                </td>
                            </tr>
                            <script type = "text/javascript" src = "js/jquery-1.12.4.js"></script>
                            <script type = "text/javascript">
                                function changeVeryCode() {//刷新 验证码 函数
                                    //加随机数参数是为了，频繁'换一张'时，请求能够正常发送（相同地址频繁发送请求，浏览器会阻住）
                                    document.getElementById("veryCode").src = "RegistServlet?method=veryCode&amp;m=" + Math.random();
                                }

                                function yz() {//验证 验证码 函数
                                    var yzm = $("#yzm").val();
                                    if (yzm === "") {
                                        alert("请输入验证码");
                                        return false;
                                    }
                                    $.ajax({
                                        type: "POST",
                                        url: "RegistServlet",
                                        data: "method=valVeryCode&yzm=" + yzm,
                                        success: function (msg) {
                                            if (msg !== "") {
                                                alert(msg);
                                            }
                                        }
                                    });
                                }
                            </script>
                            <tr>
                                <td>&nbsp;</td>
                                <td style = "font-size:12px; padding-top:20px;">
                	                <span style = "font-family:'宋体';" class = "fl">
                    	                <label class = "r_rad"><input type = "checkbox" name = "checkboxName"/></label>
                                        <label class = "r_txt">我已阅读并接受《用户协议》</label>
                                    </span>
                                </td>
                            </tr>
                            <tr height = "60">
                                <td>&nbsp;</td>
                                <td>
                                    <input type = "submit" value = "立即注册" onclick = "return registUser()" class = "log_btn"/>
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
