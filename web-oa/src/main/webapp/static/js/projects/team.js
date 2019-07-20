$(function () {
    $("button[id^=remove-]").each(function () {
        $(this).on("click", function () {
            tid = this.id.split("-") [1];
            deleteDetails(tid);
        });
    });
})

function deleteDetails(tid) {
    console.log("【删除】详情编号：" + tid);
    proid = $("table[id^=alanproid-]").id.split("-")[1];
    // ajax移除信息，而后删除表格；
    $.get("pages/back/admin/projects/team_delete.action", {
        "tid": tid,
        "proid":proid,
    }, function (data) {
        if (data.trim() == "true") {
            operateAlert(true, "成员删除成功！", "");
            $("#eachT-" + tid).remove();
        } else {
            operateAlert(false, "", "成员删除失败！");
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