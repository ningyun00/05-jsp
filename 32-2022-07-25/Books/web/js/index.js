var isA = true;
$(function () {
    var id = $(".loginId").next("td:eq(0)").text()
    introduce(id);
    /*鼠标移入改变图书*/
    $(".c_tr").mouseover(function () {
        var id = $(this).find(".c_tr_td2").text();
        introduce(id);
    });
    $("#checkAll").change(function () {
        $('[name="check"]').prop("checked", $("#checkAll").prop("checked"));
    });
    $("#deleteCheck").click(function () {
        $("#form1").prop("action", "IndexServlet?method=delete");
        $("#form1").submit();
    });
    var imgName = "";
    var upT = false;
    $(".updateBook").click(function () {
        upT = true;
        $("#introduce").prop("readonly", "readonly");
        var id = $(this).parent().parent().find(".c_tr_td2").text();
        $("#update").removeProp("hidden");
        $.post(
            "IndexServlet?method=updateId",
            {id: id},
            function (msg) {
                var id = msg.substring(msg.indexOf("id=") + 3, msg.indexOf(", bookName="))
                var bookName = msg.substring(msg.indexOf("bookName='") + 10, msg.indexOf("', authorName="));
                var authorName = msg.substring(msg.indexOf("authorName='") + 12, msg.indexOf("', price="));
                var price = msg.substring(msg.indexOf("price=") + 6, msg.indexOf(", bookType="));
                var bookType = msg.substring(msg.indexOf("bookType=") + 9, msg.indexOf(", introduce='"));
                var imageName = msg.substring(msg.indexOf("imageName='") + 11, msg.indexOf("', delete="));
                var introduce = msg.substring(msg.indexOf("introduce='") + 11, msg.indexOf("', imageName='"));
                var imageContent = msg.substring(msg.indexOf("imageContent='") + 14, msg.lastIndexOf("'}"));
                if (id != null && bookName != null && authorName != null) {
                    $("#update").find("td:eq(0)").text("修改书籍");
                    $("#update").find("td:eq(1)").text(id);
                    $("#update").find("td:eq(2)").children("input").val(bookName);
                    $("#update").find("td:eq(3)").children("input").val(authorName);
                    $("#update").find("td:eq(4)").children("input").val(price);
                    $("#imageName").prop("src", "images/" + imageName);
                    imgName = imageName;
                    $("#introduce").text(introduce);
                    if (imageName !== "null") {
                        $(".div_image").html('<textarea hidden id="imageContent" name="imageContent"></textarea><input type = "file" id = "file" onchange = "fileImage(this.files)"/><img width="150px" height="180px"  src="images/' + imageName + '" id="imgs">')
                    } else {
                        $(".div_image").html('<textarea hidden id="imageContent" name="imageContent"></textarea><input type = "file" id = "file" onchange = "fileImage(this.files)"/><img width="150px" height="180px"  src="' + imageContent + '" id="imgs">')
                    }
                    $("#imageContent").text(imageContent);
                }
                $("#introduce").removeProp("readonly");
            }
        );
    });
    $("#updateBook").click(function () {
        if ("add" === upT) {
            if ($('[name="bookName"]').val() === "") {
                alert("请输入书名");
                return false;
            }
            if ($('[name="authorName"]').val() === "") {
                alert("请输入作者名");
                return false;
            }
            if ($('[name="price"]').val() === "") {
                alert("请输入价格");
                return false;
            }
            var reg = /(^[1-9]\d*(\.\d{1,2})?$)|(^0(\.\d{1,2})?$)/;
            if (!reg.test($('[name="price"]').val())) {
                alert("价格格式错误");
                return false;
            }
            if ($('[name = "type"]').val() == 0) {
                alert("请选择书籍类型");
                return false;
            }
            if ($('[name="imageContent"]').text() === "") {
                alert("请选择书籍图片");
                return false;
            }
            if ($('[name="introduce"]').text() === "") {
                alert("请输入书籍描述");
                return false;
            }
        } else if (upT) {
            if (confirm("确认修改吗？")) {
                var id = $("#update").children("tr").find(".c_tr_td2").text();
                var imageContent = $("#imageContent").text();
                if ($("#type").val() != 0) {
                    if (imgName != null && $("#form1").prop("action") != null) {
                        $("#form1").prop("action", "IndexServlet?method=fileImages&id=" + id + "&imgName=" + imgName);
                        $("#form1").submit();
                    }
                } else if (imageContent === "") {
                    alert("请选择书本图片");
                    $("#form1").removeProp("action");
                    return false;
                } else {
                    alert("请选择书籍类型");
                    $("#form1").removeProp("action");
                    return false;
                }
            } else {
                return false;
            }
        }
    });
    /**搜索*/
    $("#search").click(function () {
        var searchConnect = $('[name="search"]').val();
        window.location.href = "IndexServlet?method=search&searchConnect=" + searchConnect;
    });
    /**取消*/
    $("#cancel").click(function () {
        $("#form1").prop("action", "IndexServlet");
    });
    $("#add").click(function () {
        $("#update").removeProp("hidden");
        upT = "add";
        $("#form1").prop("action", "IndexServlet?method=add");
        $("#update").find("td:eq(0)").text("添加图书");
        $("#update").find("td:eq(1)").text("自动");
        $(".div_image").html('<textarea hidden id="imageContent" style="background-color: transparent" name="imageContent"></textarea><input type = "file" style="white-space: pre-wrap;width: 150px;text-overflow: ellipsis;" id = "file" onchange = "fileImage(this.files)"/><img width="150px" height="180px"  src="" id="imgs">')
        $('[name="introduce"]').text("请输入书籍描述");
        $("#introduce").removeProp("readonly");
        isA=false;
    });
});
var images = null;

/**上传图片*/
function fileImage(file) {
    const reader = new FileReader()
    // 读取文件
    reader.readAsDataURL(file[0], "2");
    // 读取完文件之后会回来这里
    reader.onload = (e) => {
        // 读取文件内容
        const String = e.target.result
        // 接下来可对文件内容进行处理
        $("#imgs").prop("src", String);
        $("#imageContent").text(String);
    }
}

/*下一页*/
function nextPage(page) {
    window.location.href = "IndexServlet?method=nextPage&page=" + page;
}

/**改变图书*/
function introduce(id) {
    $.post(
        "IndexServlet?method=intId",
        {id2: id},
        function (msg) {
            /*alert(msg)*/
            var introduce = msg.substring(msg.indexOf("{") + 1, msg.indexOf("},{1"));
            var imageName = msg.substring(msg.indexOf("},{1") + 4, msg.indexOf("},{2"));
            var imageContent = msg.substring(msg.lastIndexOf("},{2") + 4, msg.lastIndexOf("}"));
            /*     alert(introduce)
                 alert(imageName)
                 alert(imageContent)*/
            if (($("#introduce").prop("readonly")) == true && isA) {
                if (imageName === "null") {
                    $("#imageName").prop("src", imageContent);
                    images = imageContent;
                } else {
                    $("#imageName").prop("src", "images/" + imageName);
                }
                $("#introduce").text(introduce);
            }
        }
        );
}