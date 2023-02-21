function showTime() {
    var date = new Date();

    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    month = month < 10 ? "0" + month : month;
    var day = date.getDate();
    day = day < 10 ? "0" + day : day;
    var week = "日一二三四五六".charAt(date.getDay()); // 使用charAt函数提取相应汉字
    var hour = date.getHours();
    hour = hour < 10 ? "0" + hour : hour; // 用三目运算符调整数字显示格式
    var minute = date.getMinutes();
    minute = minute < 10 ? "0" + minute : minute;
    var second = date.getSeconds();
    second = second < 10 ? "0" + second : second;

    var current = year + "-" + month + "-" + day + " " + "星期" + week + " " + hour + ":" + minute + ":" + second;

    document.getElementById("time").innerHTML = current;
}

setInterval("showTime()", 1000);