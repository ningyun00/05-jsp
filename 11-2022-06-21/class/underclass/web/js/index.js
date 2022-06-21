//用户请求方法
function UserPost() {
    //拿取输入的用户名
    var UName = $("#input1_UName").val();
    $.ajax({
        type: "post",
        url: "UserServlet",
        data: "UName=" + encodeURI(UName),
        //响应
        success: function (msg) {
            $("#span_UName").html(msg);
        }
    });
}
