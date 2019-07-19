window.onload=function (){
	/*alert(111) ;*/
	search();

}
function search() {
	console.log("测试");
	$("button[id^=seach]").each(function() {
		console.log("测试2");
		console.log(this) ;
		$(this).on("click",function() {
			column_oid =this.id ;
			console.log("测试3");
			console.log(column_oid)
			if (column_oid == '') {
				operateAlert(false, "", "search不允许为空，请确认后再提交更新！");
			} else {
				$.getJSON("pages/front/sale/order_search.action", {"column_oid": column_oid}, function (column_oid) {
					operateAlert(true, "key更新成功！", "");
				}, "text");
			}
		})
	})
}
	/*$("button[id=Submit]").each(function(){
		$(this).on("click",function(){
			key = $("#key").val() ;
			//console.log("部门编号：" +  did) ;
			dname = $("#dname-" + did).val() ;
			console.log(dname);
			if (key == "") {
				operateAlert(false,"","key不允许为空，请确认后再提交更新！") ;
			} else {
				$.get("pages/front/sale/order_list.action",{"key":key},function (key) {
					operateAlert(true,"key更新成功！","") ;
				},"text");
			}
		}) ;
	}) ;*/
	/*$("span[id^=mid-]").each(function(){
		$(this).on("click",function(){
			mid = this.id.split("-")[1] ;
			console.log("雇员编号：" + mid) ;
			$("#memberInfo").modal("toggle") ;
		}) ;
	}) ;*/


