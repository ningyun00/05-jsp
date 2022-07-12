$(function () {
    $.ajax({
        type: "post",
        url: '/ning.ying/MemberProductAddServlet',
        data: "method=categoryLevel1Id",
        dataType: "json",
        success: function (msg) {
            var categoryLevel1Id = $("#categoryLevel1Id");
            for (var i = 0; i < msg.length; i++) {
                var options = "<option value='" + msg[i].id + "'>" + msg[i].name + "</option>";
                categoryLevel1Id.append(options);
            }
        }
    });
    $("#categoryLevel1Id").change(function () {
        $.ajax({
            type: "POST",//请求方式为post，默认为get方式
            url: "/ning.ying/MemberProductAddServlet",//服务器的地址
            data: "method=queryCategory2&c1=" + $(this).val(),
            dataType: "json", //响应数据类型
            success: function (msg) {
                var categoryLevel2Id = $("#categoryLevel2Id");
                categoryLevel2Id.prop("length", 1);
                for (var i = 0; i < msg.length; i++) {
                    var options = "<option value='" + msg[i].id + "'>" + msg[i].name + "</option>";
                    categoryLevel2Id.append(options);
                }
            }
        });
    });
    $("#categoryLevel2Id").change(function () {
        $.ajax({
            type: "POST",//请求方式为post，默认为get方式
            url: "/ning.ying/MemberProductAddServlet",//服务器的地址
            data: "method=queryCategory3&c2=" + $(this).val(),
            dataType: "json", //响应数据类型
            success: function (msg) {
                var categoryLevel3Id = $("#categoryLevel3Id");
                categoryLevel3Id.prop("length", 1);
                for (var i = 0; i < msg.length; i++) {
                    var options = "<option value='" + msg[i].id + "'>" + msg[i].name + "</option>";
                    categoryLevel3Id.append(options);
                }
            }
        });
    });
});
var editor;
$(function (){
//js加载事件中加载富文本域资源
//加载wangEditor
var E = window.wangEditor;
//div内创建wangEditor对象
    editor = new E('#editor');
//该代码表以Base64格式保存图片
    editor.customConfig.uploadImgShowBase64 = true;
//开始构造
editor.create();
});
//表单提交时，取出富文本域内容，赋值给隐藏域
function mySubmit() {
    if  ($("#name").val()===""){
        alert("请输入商品名称");
        return false;
    }
    if  ($("#price").val()===""){
        alert("请输入商品单价");
        return false;
    }
    var h = editor.txt.html();//获取富文本域中输入的内容
    $("#context").html(h);////给隐藏域赋值
    form1.submit();
}