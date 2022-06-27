// JavaScript Document


function addUpdate(jia) {
    var c = jia.parent().find(".n_ipt").val();
    c = parseInt(c) + 1;
    jia.parent().find(".n_ipt").val(c);
}

function jianUpdate(jian) {
    var c = jian.parent().find(".n_ipt").val();
    if (c == 1) {
        c = 1;
    } else {
        c = parseInt(c) - 1;
        jian.parent().find(".n_ipt").val(c);
    }
}


function addUpdate1(jia) {
    var c = jia.parent().find(".car_ipt").val();
    c = parseInt(c) + 1;
    jia.parent().find(".car_ipt").val(c);
    //计算 商品 总价
    var num = c;//数量
    var unitPrice = jia.parent().parent().prev().find(".car_price").text();//获取单价  注意路径：jia的父级父级前一个同级元素
    var totalPrice = (unitPrice * num).toFixed(2); //总价 留两位小数
    jia.parent().parent().next().find(".car_sum").text(totalPrice);// 总价结果赋值给 小计 显示
    maxSum();
}

function jianUpdate1(jian) {
    var c = jian.parent().find(".car_ipt").val();
    if (c == 1) {
        c = 1;
    } else {
        c = parseInt(c) - 1;
        jian.parent().find(".car_ipt").val(c);
    }
    //计算 商品 总价
    var num = c;//数量
    var unitPrice = jian.parent().parent().prev().find(".car_price").text();//获取单价  注意路径：jian的父级父级前一个同级元素
    var totalPrice = (unitPrice * num).toFixed(2); //总价 留两位小数
    jian.parent().parent().next().find(".car_sum").text(totalPrice);// 总价结果赋值给 小计 显示
    maxSum();
}

function maxSum() {
    var sum = document.getElementsByClassName("car_sum");
    var maxSum = 0;
    for (var i = 0; i < sum.length; i++) {
      maxSum +=  parseFloat(sum[i].innerHTML);
    }

    $("#maxSum").html(maxSum);
}
