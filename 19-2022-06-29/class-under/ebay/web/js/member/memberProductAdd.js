$(function () {
    $.ajax({
        type: "post",
        url: '/ning.ying/MemberProductAddServlet',
        data: "method=categoryLevel1Id",
        dataType: "json",
        success: function (msg) {
            var categoryLevel1Id=$("#categoryLevel1Id");
            for(var i=0;i<msg.length;i++){
                var options="<option value='"+msg[i].id+"'>"+msg[i].name+"</option>";
                categoryLevel1Id.append(options);
            }
        }
    });
    $("#categoryLevel1Id").change(function (){
        $.ajax({
            type: "POST",//请求方式为post，默认为get方式
            url: "/ning.ying/MemberProductAddServlet",//服务器的地址
            data:"method=queryCategory2&c1="+$(this).val(),
            dataType:"json", //响应数据类型
            success: function(msg){
                var categoryLevel2Id=$("#categoryLevel2Id");
                categoryLevel2Id.prop("length",1);
                for(var i=0;i<msg.length;i++){
                    var options="<option value='"+msg[i].id+"'>"+msg[i].name+"</option>";
                    categoryLevel2Id.append(options);
                }
            }
        });
    });
    $("#categoryLevel2Id").change(function (){
        $.ajax({
            type: "POST",//请求方式为post，默认为get方式
            url: "/ning.ying/MemberProductAddServlet",//服务器的地址
            data:"method=queryCategory3&c2="+$(this).val(),
            dataType:"json", //响应数据类型
            success: function(msg){
                var categoryLevel3Id=$("#categoryLevel3Id");
                categoryLevel3Id.prop("length",1);
                for(var i=0;i<msg.length;i++){
                    var options="<option value='"+msg[i].id+"'>"+msg[i].name+"</option>";
                    categoryLevel3Id.append(options);
                }
            }
        });
    });
});
