function showTime() {
    var t = new Date();
    var year = t.getFullYear();
    var month = t.getMonth() + 1;
    var day = t.getDate();
    var showtime = year + ((month < 10) ? "-0" : "-") + month + ((day < 10) ? "-0" : "-") + day;
    $("#date_input").val(showtime);
}

setInterval("showTime()", 1000);//刷新---设置计时器

$(function () {
    $("#input1_td").click(function () {
        if ($("#proposer_id").val() === "") {
            alert("请输入申请人");
            return false;
        }
        if ($("#select1_td").val() === "请选择") {
            alert("请选择部门");
            return false;
        }
        var startTime = $("#startTime_input").val();
        if (startTime === "") {
            alert("请输入开始时间")
            return false;
        }
        var lastTime = $("#lastTime_input").val();
        if (lastTime === "") {
            alert("请输入结束时间");
            return false;
        }
        var startTime = new Date(startTime).getTime();
        var lastTime = new Date(lastTime).getTime();
        if (startTime > lastTime) {
            alert("结束时间不应大于开始时间");
            return false;
        }
        if ($("#select2_td").val() === "请选择") {
            alert("请选择请假类型");
            return false;
        }
        return true;
    });
});