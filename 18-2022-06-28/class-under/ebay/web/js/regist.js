function registUser() {
    var checkboxName = $('[name = "checkboxName"]').val();
    if (checkboxName === "") {
        alert("请选择同意注册");
        return false;
    }var name = $('[name = "registName"]').val();
    if (name === "") {
        alert("请输入用户名");
        return false;
    }
    var password1 = $('[name = "registPassword1"]').val();
    if (password1 === "") {
        alert("请输入密码");
        return false;
    }
    var password2 = $('[name = "registPassword2"]').val();
    if (password2 === "") {
        alert("请输入验证密码");
        return false;
    } else if (password1 !== password2) {
        alert("两次密码不同");
        return false;
    }
    var email = $('[name = "registEmail"]').val();
    if (email === "") {
        alert("请输入邮箱");
        return false;
    }
    var mobile = $('[name = "registMobile"]').val();
    if (mobile === "") {
        alert("请输入手机号码");
        return false;
    }
    return true;
}

function peanName() {
    var name = $('[name = "registName"]').val();
    $.ajax({
        type: "post",
        url: "RegistServlet?method=peanName",
        data: "name=" + encodeURI(name),
        //响应
        success: function (msg) {
            if (msg !== "") {
                alert(msg);
            }
        }
    });
}