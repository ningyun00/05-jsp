function login() {
    var loginName = $("#loginName").val()
    var password = $("#password").val()
    if (loginName === "") {
        alert("请输入用户名");
        return false;
    }
    if (password === "") {
        alert("请输入密码");
        return false;
    }
    return true;
}