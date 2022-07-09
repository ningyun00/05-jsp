// JavaScript Document
$(function () {
    shuaXinCar();
});

function ShowDiv(show_div, bg_div) {
    document.getElementById(show_div).style.display = 'block';
    document.getElementById(bg_div).style.display = 'block';
    var bgdiv = document.getElementById(bg_div);
    bgdiv.style.width = document.body.scrollWidth;
    // bgdiv.style.height = $(document).height();
    $("#" + bg_div).height($(document).height());
};

function CloseDiv(show_div, bg_div) {
    document.getElementById(show_div).style.display = 'none';
    document.getElementById(bg_div).style.display = 'none';
};

function ShowDiv_1(show_div, bg_div) {
    document.getElementById(show_div).style.display = 'block';
    document.getElementById(bg_div).style.display = 'block';
    var bgdiv = document.getElementById(bg_div);
    bgdiv.style.width = document.body.scrollWidth;
    // bgdiv.style.height = $(document).height();
    $("#" + bg_div).height($(document).height());
};

function ShowDiv_One(show_div, bg_div, pid) {
    $.ajax({
        type: "POST",
        url: "/ning.ying/ProductServlet",
        data: "method=addCar&pid=" + pid + "&count=" + $("#count").val(),
        dataType: "json",
        success: function (ning) {
            $("#carCount").html(ning.count);
            $("#carSum").html(ning.sum);
            document.getElementById(show_div).style.display = 'block';
            document.getElementById(bg_div).style.display = 'block';
            var bgdiv = document.getElementById(bg_div);
            bgdiv.style.width = document.body.scrollWidth;
            $("#" + bg_div).height($(document).height());
            shuaXinCar();
        }
    });
}

function shuaXinCar() {
    $.ajax({
        type: "POST", //请求方式
        url: "/ning.ying/ProductServlet",//服务器的地址
        data: "method=refreshCar", //请求参数
        dataType: "json", //响应数据类型
        success: function (msg) {
            $("#proCount").html(msg.length);
            var htmlStr = "";
            var sum = 0;
            var counts = 0;
            for (var i = 0; i < msg.length; i++) {
                htmlStr += "<li>";
                htmlStr += "<div class='img'><a href='#'><img src='/ning.ying/images/" + msg[i].fileName + "' width='58' height='58' /></a></div>";
                htmlStr += "<div class='name'><a href='#'>" + msg[i].name + "</a></div>";
                htmlStr += "<div class='price'><font color='#ff4e00'>￥" + msg[i].price + "</font> X " + msg[i].count + "</div></li>";
                sum += msg[i].count * msg[i].price;
                counts += msg[i].count;
            }
            $("#cars").html(htmlStr);
            $("#gj").html(sum);
            $("#counts").html(counts);
        }
    });
}

//关闭弹出层
function CloseDiv_1(show_div, bg_div) {
    document.getElementById(show_div).style.display = 'none';
    document.getElementById(bg_div).style.display = 'none';
};

function ShowDiv2(show_div, bg_div, pid) {
    document.getElementById(show_div).style.display = 'block';
    document.getElementById(bg_div).style.display = 'block';
    var bgdiv = document.getElementById(bg_div);
    bgdiv.style.width = document.body.scrollWidth;
    // bgdiv.style.height = $(document).height();
    $("#" + bg_div).height($(document).height());
    $("#delPid").val(pid);
};

function delCar() {
    var pid = $("#delPid").val();
    var url = "/ning.ying/ProductServlet?method=delShopCar&pid=" + pid;
    location.href = url;
}

function isT() {
    console.log($("#maxSum").html());
    if ($("#maxSum").html() == "") {
        alert("请购买商品在结算");
        return false;
    }
    return true;
}