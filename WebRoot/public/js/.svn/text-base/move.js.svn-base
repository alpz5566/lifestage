	/*
		运动
	*/
	
	function getStyle(obj,attr)
	{
		if(obj.currentStyle)
			return obj.currentStyle[attr];
		else
			return getComputedStyle(obj,false)[attr];
	};
	function startMove(obj,attr,iTarget)
	{
		clearInterval(obj.timer);
		obj.timer=setInterval(function(){		
		var iCur=0;
		if(attr=='opacity')
		{
			iCur=parseInt(parseFloat(getStyle(obj,attr))*100);
		}
		else
		{
			iCur=parseInt(getStyle(obj,attr));
		}
			var ispeed=(iTarget-iCur)/8;
			ispeed=ispeed>0?Math.ceil(ispeed):Math.floor(ispeed);
			if(iTarget==iCur)
				{clearInterval(obj.timer);}
			else
			{
				if(attr=='opacity')
				{
					obj.style.filter='alpha(opacity:'+(iCur+ispeed)+')';
					obj.style.opacity=(iCur+ispeed)/100;
				}
				else
				{
				obj.style[attr]=iCur+ispeed+'px';
				}
			}
		},30);
		
	};