function login() {
    var loginName = $('[name = "loginName"]').val();
    if (loginName === "") {
        alert("请输入用户名");
        return false;
    }
    var loginPassword = $('[name = "loginPassword"').val();
    if (loginPassword === "") {
        alert("请输入密码");
        return false;
    }
    return true;
}