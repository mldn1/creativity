$(function(){
        $.ajax({    // 对于需要发送的请求内容进行相应的JSON配置
            url : "http://www.oa.com/oa/pages/plugins/userinfo.action" ,       // Ajax异步请求的处理路径
            dataType : "json" ,       // 回应的数据类型
            method : "post" ,
            success : function(data) {  // 后台响应完毕正常处理
                $("#imagepath").val("src",data.photo);
                console.log(data) ; // 输出返回的结果数据
            } ,
            error : function(e) {
                console.log("代码出错啦！") ;
                console.log(e) ;
            }
        })
}) ;