var user = null;
var pwd1 = null;
var email = null;
var tel = null;
var isA = false;
$(function () {
    $(".l_user").blur(function () {
        $.post(
            "RegistServlet?method=repeatName",
            {user: $(".l_user").val()},
            function (msg) {
                if (msg !== "") {
                    alert(msg);
                }
            }
        );
    });
    $(".l_ipt").blur(function () {
        yz();
    });
    $("#register").click(function () {
        var url = location.href.substring("l".indexOf(location.href), 32);
        yz();
        if (isNotNull() && isA) {//true
            $.post(
                "RegistServlet?method=register",
                {user: user, password: pwd1, email: email, mobile: tel},
                function (msg) {
                    if (msg === "添加成功") {
                        if (confirm("添加成功")) {
                            window.location.replace(url + "IndexServlet?method=indexServlet");
                        } else {
                            $(".l_user").val("")
                            $('[name = "password1"]').val("")
                            $('[name = "password2"]').val("")
                            $(".l_email").val("");
                            $(".l_tel").val("");
                            $("#yzm").val("");
                            $('[name="checkboxYes"]').prop("checked", false);
                        }
                    }
                }
            );
            return false;
        } else {
            return false;
        }
    });
});

function isNotNull() {
    user = $(".l_user").val().trim();
    if (user === "") {
        alert("请输入用户名");
        return false;
    } else {
        user = $(".l_user").val().trim();
    }
    pwd1 = $('[name = "password1"]').val().trim();
    if (pwd1 === "") {
        alert("请输入密码");
        return false;
    } else {
        pwd1 = $('[name = "password1"]').val().trim();
    }
    var pwd2 = $('[name = "password2"]').val().trim();
    if (pwd2 === "") {
        alert("请输入确认密码");
        return false;
    }
    email = $(".l_email").val().trim();
    if (email === "") {
        alert("请输入邮箱");
        return false;
    } else {
        email = $(".l_email").val().trim();
    }
    /*    var rs = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/
        if (!rs.test(email)) {
            alert("邮箱格式错误");
            return false;
        }*/
    tel = $(".l_tel").val().trim();
    if (tel === "") {
        alert("请输入手机号码");
        return false;
    } else {
        tel = $(".l_tel").val().trim();
    }
    if (pwd1 !== pwd2) {
        alert("两次密码不一致");
        return false;
    }
    var yzm = $("#yzm").val().trim();
    if (yzm === "") {
        alert("请输入验证码");
        return false;
    }
    var cbox = $('[name="checkboxYes"]').prop("checked");
    if (cbox === false) {
        alert("请勾选同意用户协议");
        return false;
    }
    return true;
}

function changeVeryCode() {//刷新 验证码 函数
    //加随机数参数是为了，频繁'换一张'时，请求能够正常发送（相同地址频繁发送请求，浏览器会阻住）
    document.getElementById("veryCode").src = "RegistServlet?method=veryCode&amp;m=" + Math.random();
}
function yz(){
    var yzm = $("#yzm").val().trim();
    if (yzm === "") {
        alert("请输入验证码");
        return false;
    } else {
        $.ajax({
            type: "POST",
            url: "RegistServlet",
            data: "method=valVeryCode&yzm=" + yzm,
            success: function (msg) {
                if (msg === "false") {
                    alert("验证码不正确！")
                    isA = false;
                }
                if (msg === "true") {
                    isA = true;
                }
            }
        });
    }
}