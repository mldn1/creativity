$(function () {
    $("button[id^=state-]").each(function () {
        $(this).on("click", function () {
            state = this.id.split("-") [1];
            console.log("我点击了按钮，状态为：" + state);
            operate(state);
        });
    });
})

function operate(state) {
    console.log("【操作】操作编号：" + state);
    proid = GetUrlPara().split("=")[1];
    console.log("proid = " + proid);
    lastState = $("#state-" + state).attr("state");
    console.log("获取之前的状态为 " + lastState);
    $.get("pages/back/admin/projects/project_state.action", {
        "proid": proid,
        "state": state,
    }, function (data) {
        if (data.trim() == "succedd") {
            operateAlert(true, "状态切换成功！", "");
            $("#state-" + state).attr("disabled", "disabled");
            $("#state-" + lastState).removeAttr("disabled");
            $("button[id^=state-]").each(function () {
                $(this).attr("state", state);
            });
        } else {
            operateAlert(false, "", "状态切换失败！");
        }
    }, "text");
}

function operateAlert(flag, suctext, faltext) {
    if (flag) {
        $("#alertDiv").attr("class", "alert alert-success");
        $("#alertText").text(suctext);
    } else {
        $("#alertDiv").attr("class", "alert alert-danger");
        $("#alertText").text(faltext);
    }
    $("#alertDiv").fadeIn(1000, function () {
        $("#alertDiv").fadeOut(3000);
    });
}

function GetUrlPara() {
    var url = document.location.toString();
    var arrUrl = url.split("?");
    var para = arrUrl[1];
    return para;
}