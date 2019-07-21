$(function () {
    $("#team-form").validate({
        debug: true, // 取消表单的提交操作
        submitHandler: function (form) {
            proid = document.getElementById("proid").value ;
            console.log("proid = " + proid);
            username = document.getElementById("username").value ;
            console.log("username = " + username);
            $.get("pages/back/admin/projects/can_add.action", {
                "proid": proid,
                "username": username,
            }, function (data) {
                console.log("data = " + data);
                if (data.trim() == "true") {
                    form.submit();
                } else {
                    alert("成员添加失败！请检查成员是否已经组内或者该用户名是否存在！")
                }
            }, "text");
        },

        errorPlacement : function(error, element) {
            $("#" + $(element).attr("id").replace(".", "\\.") + "Msg").text("请输入用户名！");
        },
        highlight : function(element, errorClass) {
            $(element).fadeOut(1,function() {
                $(element).fadeIn(1, function() {
                    $("#" + $(element).attr("id").replace(".","\\.") + "Div").attr("class","form-group has-error");
                });

            })
        },
        unhighlight : function(element, errorClass) {
            $(element).fadeOut(1,function() {
                $(element).fadeIn(1,function() {
                    $("#" + $(element).attr("id").replace(".", "\\.") + "Msg").text("");
                    $("#" + $(element).attr("id").replace(".","\\.") + "Div").attr("class","form-group has-success");
                });
            })
        },
        errorClass : "text-danger",
        rules : {
            "username" : {
                required : true
            }
        }

    });
})