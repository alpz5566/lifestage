 $(function(){
		$('.fcsyLi').eq(0).addClass('fcsyLihover');
		$('.fcsymain').eq(0).show();
		$('.fcsyLi').click(function(){
			$(this).addClass('fcsyLihover');
			$(this).siblings().removeClass('fcsyLihover');
				$('.fcsymain').hide();
				$('.fcsymain').eq($(this).index()).show();
		});
		$('.fcsytxt').click(function(){
			$(this).val('');		
			});
			
			/*房产首页 项目五证*/
		$('.fcsortclick').click(function(){
			$(this).next('.fcsortul2').toggle();
		});
		 
		 $('.fcmain2show').click(function(){
				$(this).prev('.fcsymain2').slideToggle();
				});
	 });