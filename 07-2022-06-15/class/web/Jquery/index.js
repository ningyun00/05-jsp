$(function () {
    //加载
    $("#ckall").change(function () {
        //属性改变
        $('[name="hobby"]').prop("checked", $("#ckall").prop("checked"))
        //      属性拿取            属性       选中           ID拿取   属性     选中
        //改变子选框( <input type="checkbox" name="hobby" />)状态，根据父选框( <input type="checkbox" id="ckall" />)改变
    })  //全选or全不选
    $("#reverse").change(function () {
        //反选按钮
        $('[name="hobby"]').each(function (i) {
            //循环子选框
            if ($('[name="hobby"]:eq(' + i + ')').prop("checked") == true) {
                //每次循环一次进行一次判断
                $('[name="hobby"]:eq(' + i + ')').prop("checked", false)
                //选中了的子选框改成为    选中
            } else {
                $('[name="hobby"]:eq(' + i + ')').prop("checked", true)
                //未选中的子选框改成     选中
            }
        })
        if ($('[name="hobby"]:checked').length == $('[name="hobby"]').length) {
            //当选中的长度等于总长度
            $("#ckall").prop("checked", true)
            //父选框设定为选中
        } else {
            $("#ckall").prop("checked", false)
            //父选框设定成未选中
        }
    })
})