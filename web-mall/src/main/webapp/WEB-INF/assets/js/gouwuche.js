$(function(){
	//判断购物车是否为空
	listNull();
	function listNull(){
		var gouList =$('.gouListFor').length;
		if(gouList>0){//如果大于0 购物车不为空
			$('.gouConterText').hide();
			$('.fiexBootm').show();
			$('.ediort').show();
		}else{
			$('.gouConterText').show();
			$('.fiexBootm').hide();
		}
	}
	//添加商品
	$('.gouSpan').click(function(){
		var numd = $(this).parent().find('.Daole').html();
		var name = $(this).parent().parent().find('.listName').html();
		var html='<div class="gouListFor clearfix">'
						+'<div class="gouListLeft">'
							+'<div class="el-checkbox">'
								+'<a href="javascript:;" class="checkbox"><img src="images/GL_icon_42.png"/></a>'
							+'</div>'
						+'</div>'
						+'<div class="gouListcon"><img src="images/gouwu_03.png"/></div>'
						+'<div class="gouListRight">'
							+'<h3>'+name+'</h3>'
							+'<p>红色</p>'
							+'<div class="gouJian">'
								+'<ul class="clearfix">'
									+'<li><span>￥</span><span class="gouNum" data-num="'+numd+'">'+numd+'</span></li>'
									+'<li><span class="goujianh">-</span><span class="gounub">1</span><span class="goujiah">+</span></li>'
								+'</ul>'
							+'</div>'
						+'</div>'
					+'</div>'
		$('.gouLisBox').prepend(html);
	})
	// 商品点击选中和取消
	$('body').on('click','.checkbox',function(){
		var num = parseInt($(this).parents().find('.gouNum').html());
		if($(this).attr('class')=='checkbox checkbox2'){
			$(this).removeClass('checkbox2');
			$(this).find('img').attr('src','images/GL_icon_42.png');
		}else{
			$(this).addClass('checkbox2');
			$(this).find('img').attr('src','images/GL_icon_43.png');
		}
		forGoulist();
		isChek();
	})
	//购物车加
	$('body').on('click','.goujiah',function(){
		jiajian($(this),1);
	})
	//购物车减
	$('body').on('click','.goujianh',function(){
		jiajian($(this),-1);
	})
	function jiajian(obj,numT){
		var goodsId = obj.parent().parent().find('.gouNum').attr('goodsId');
		var numZ = parseInt(obj.parent().parent().find('.gouNum').attr('data-num'));
		var numB = parseInt(obj.parent().find('.gounub').html());
		 numB = numB+numT
		if(numB <=1){
			numB=1
		}
		$.post("/pages/front/cart/jiajian.action",{goodsId:goodsId,num:numB},function(result){ });;
		obj.parent().find('.gounub').html((numB));
		obj.parent().parent().find('.gouNum').html((numB*numZ));
		forGoulist();
	}
	//循环选中的商品并计算总价
	function forGoulist(){
		var iconfontR = $('.checkbox2').length;
		var nub = 0;
		if(iconfontR>0){
			for(var i=0;i<iconfontR;i++){
				 nub = parseInt($('.checkbox2').eq(i).parents('.gouListFor').find('.gouNum').html())+nub;
				$('.hejiNum').html(nub );
			}
		}else{
			$('.hejiNum').html(0);
		}
	}
	// 确认删除
	var $this  //获取被删除的元素
	var	all=false;
	$('body').on('click','.clearBContsh li a',function(){
		var clearType=$(this).attr('data-type');
		if(clearType=='1'){
			if(all){
				var goodsId = $('.checkbox2').parents('.gouListFor').attr('goodsId');
				$('.checkbox2').parents('.gouListFor').remove();
			}else{
				$('.clearModelBox').css('display','none');
				$this.parents('.gouListFor').remove();
			}
			$.post("/pages/front/cart/goodsRemove.action",{goodsId:goodsId},function(result){
				if(result=='false'){
					alert("删除失败！") ;
				}
			});;
			$('.clearModelBox').css('display','none');
		}else{
			$('.clearModelBox').css('display','none');
		}
		forGoulist();
		isChek();
		listNull();
	})
	//删除商品
	$('body').on('click','.clearList',function(){
		$('.clearModelBox').css('display','flex');
		$this =$(this);
	})
	//全选
	$('body').on('click','.quanxuan img',function(){
		var hSrc = $(this).attr('src');
		if(hSrc == 'images/GL_icon_42.png'){
			 $(this).attr('src','images/GL_icon_43.png');
			 $('.checkbox').addClass('checkbox2');
			 $('.checkbox2').find('img').attr('src','images/GL_icon_43.png');
			 $('.clearfix1 li b').html('取消全选');
		}else{
			$(this).attr('src','images/GL_icon_42.png');
			$('.checkbox').removeClass('checkbox2');
			$('.checkbox').find('img').attr('src','images/GL_icon_42.png');
			$('.clearfix1 li b').html('全部选择');
		}
		forGoulist()
	})
	//判断是否所有商品都已被选中,如果全部选中择全选按钮被选中，否则取消全选按钮
	function isChek(){
		var iconF= $('.el-checkbox .checkbox').length;
		var numL= $('.el-checkbox .checkbox2').length;
		if(numL==iconF){
			$('.quanxuan img').attr('src','images/GL_icon_43.png');
			$('.clearfix1 li b').html('取消全选');
		}else{
			$('.quanxuan img').attr('src','images/GL_icon_42.png');
			$('.clearfix1 li b').html('全部选择');
		}
	}
	$('body').on('click','.gw_ShopB',function(){
		if($(this).attr('class')=='gw_ShopB gw_ShopBs'){
			$('.gw_ShopB').html('编辑');
			$('.gw_ShopB').removeClass('gw_ShopBs');
			$('.jiesuan').html('结算');
			$('.jiesuan').removeClass('allClear');
			$('.clearList').css('display','none');
		}else{
			$('.gw_ShopB').html('完成');
			$('.gw_ShopB').addClass('gw_ShopBs');
			$('.jiesuan').html('删除');
			$('.jiesuan').addClass('allClear');
			$('.clearList').css('display','block');
		}
	})
	$('body').on('click','.allClear',function(){
		$('.clearModelBox').css('display','flex');
		all = true;
	})
})
