function updateNew(newId) {
    $.ajax({
        type: "POST",
        url: "/ning.ying/NewsServlet?method=selectNews",
        data: "newId=" + encodeURI(newId),
        success: function (msg) {
            $("#tbody1_table1").html(msg);
        }
    });
};