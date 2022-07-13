$(function () {
    var id = $(".c_tr").children("td:eq(1)").text();
    introduce(id);
    /*鼠标移入改变图书*/
    $(".c_tr").mouseover(function () {
        var id = $(this).find(".c_tr_td2").text();
        introduce(id);
    });
});

/*下一页*/
function nextPage(page) {
    var id = $(".c_tr").children("td:eq(1)").text();
    window.location.href = "IndexServlet?method=nextPage&page=" + page;
}

/**改变图书*/
function introduce(id) {
    $.post(
        "IndexServlet?method=intId",
        {id2: id},
        function (msg) {
            var introduce = msg.substring(msg.indexOf("{") + 1, msg.indexOf("},{"));
            var imageName = msg.substring(msg.indexOf("},{") + 3, msg.lastIndexOf("}"));
            $("#imageName").prop("src", "images/" + imageName);
            $("#introduce").text(introduce);
        }
    );
}