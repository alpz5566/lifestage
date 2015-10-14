$(function(){
	var $bigImg=$('<img>').hide().appendTo('body').css({'position':'absolute','z-index':5});
	var $closeBtn=$('<div class="closebtn"><img src="images/closebox1.png"/></div>').hide().appendTo('body').addClass('closebtn');
	
	
	var $covers=$('.bigshow');
	
	$covers.on('click',function(event){
		$closeBtn.hide();
		var startPos=$(this).offset();
		startPos.width = $(this).width();
        startPos.height = $(this).height();
		
		$('#bannerbox').css('display','block');
		
		for(var i=1;i<=$('.big_pic li').length; i++){
		$('.big_pic li').eq(i).click(function(){
			$('#center_img img').eq(i).toggleClass('active').siblings('img').removeClass();
		})
	}
        var endPos = {};
        endPos.width = startPos.width;
        endPos.height = startPos.height;
		$('body').append("<div class='greBackground' style='display:none'></div>");
		$('.greBackground').css({width:$(window).width(),height:$(document).height(),opacity: 0.4}).show();
		$closeBtn.css({right:endPos.left,top:endPos.top}).show();
		$closeBtn.bind('click', function(){
			$bigImg.hide();
			$('.greBackground').remove();
			$('#bannerbox').css('display','none');
			$closeBtn.hide();
		})
		event.preventDefault();
	});
});


