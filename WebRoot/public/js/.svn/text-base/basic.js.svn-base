function scroll_news(){
			var firstNode = $('.adBannerCenter li'); //获取li对象
			firstNode.eq(0).fadeOut(2000,function(){ //获取li的第一个,执行fadeOut,并且call - function.
			$(this).clone().appendTo($(this).parent()).show(2000); //把每次的li的第一个 克隆，然后添加到父节点 对象。
			$(this).remove();//最后  把每次的li的第一个 去掉。
			});//注意哦,这些都是在fadeOut里面的callback函数理执行的。
		}
	$(function(){
		$('.sortclick').click(function(){
			$(this).next('.sortul').toggle();
			$(this).next('.sortul').find('li').click(function(){
				var value=$(this).text();
				$(this).parent().prev('.sortclick').prev('.sort').text(value);
				$(this).parent().hide();
			})
		})
		
		
		/*分享*/
		window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"24"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
		
		var $timer=null;
		$timer=setInterval('scroll_news()',2000);
		
	});
	