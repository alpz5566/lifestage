$(function(){
	var $bigImg=$('<img>').hide().appendTo('body').css({'position':'absolute','z-index':5});
	var $closeBtn=$('<div class="closebtn_baidu1"><img src="images/closebox.png"/></div>').hide().appendTo('body').addClass('closebtn');
	
	
	var $covers=$('.dianji_ditu1');
	
	$covers.on('click',function(event){
		$closeBtn.hide();
		var startPos=$(this).offset();
		startPos.width = $(this).width();
        startPos.height = $(this).height();
		
		$('#baidu_ditu1').css('display','block');
		
		
        var endPos = {};
        endPos.width = startPos.width;
        endPos.height = startPos.height;
		$('body').append("<div class='greBackground' style='display:none'></div>");
		$('.greBackground').css({width:$(window).width(),height:$(document).height(),opacity: 0.6}).show();
		$closeBtn.css({right:endPos.left,top:endPos.top}).show();
		$closeBtn.bind('click', function(){
			$bigImg.hide();
			$('.greBackground').remove();
			$('#baidu_ditu1').css('display','none');
			$closeBtn.hide();
		})
		event.preventDefault();
	});
});


