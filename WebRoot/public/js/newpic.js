function getClass(oParent,sClass)
{
	var aEle=document.getElementsByTagName('*');
	var i=0;
	var aResult=[];
	
	for(i=0;i<aEle.length;i++)
	{
		if(aEle[i].className==sClass)
		{
			aResult.push(aEle[i]);
		}
	}
	return aResult;
};
window.onload=function(){
	var oDiv=document.getElementById('playimages');
	
	//左右按钮
	var oMarkPrev=getClass(oDiv,'markLeft')[0];
	var oMarkNext=getClass(oDiv,'markRight')[0];

	//小图片效果
	var oSmallUl=getClass(oDiv,'small_pic')[0].getElementsByTagName('ul')[0];
	var aSmallLi=oSmallUl.getElementsByTagName('li');
	var aSmallImg=oSmallUl.getElementsByTagName('img');
	var oBigUl=getClass(oDiv,'big_pic')[0];
	var aBigLi=oBigUl.getElementsByTagName('li');
	
	var i=0;
	var iNow=0;
	var iMinZindex=2;
	var timer=null;
	oSmallUl.style.width=aSmallLi.length*aSmallLi[0].offsetWidth+'px';
	//左右按钮
	
	
	//小图片点击，大图显示
	for(i=0;i<aSmallLi.length;i++)
	{
		aSmallLi[i].index=i;
		
		aSmallLi[i].onmouseover=function()
		{
			startMove(this,'opacity',100);
			aSmallImg[this.index].style.borderColor="red";
		};
		aSmallLi[i].onmouseout=function()
		{
			if(this.index!=iNow)
			{
				startMove(this,'opacity',60);
			aSmallImg[this.index].style.borderColor="#dfdfdf";
			}
		};		
		aSmallLi[i].onclick=function()
		{	
			if(iNow==this.index)
			{
				return;
			}
			iNow=this.index;
			tab();
		};
		oMarkPrev.onclick=function()
		{
			iNow--;
			if(iNow==-1)
			{
				iNow=aSmallLi.length-1;
			}
			tab();
		};
		oMarkNext.onclick=function()
		{
			iNow++;
			if(iNow==aSmallLi.length)
			{
				iNow=0;
			}
			tab();
		};
		
		function tab()
		{
			for (i=0;i<aSmallLi.length;i++)
			{
				startMove(aSmallLi[i],'opacity',60);
				aSmallImg[i].style.borderColor="#dfdfdf";
			}
			startMove(aSmallLi[iNow],'opacity',100);			
			aSmallImg[iNow].style.borderColor="red";
			aBigLi[iNow].style.zIndex=iMinZindex++;
			aBigLi[iNow].style.height=0;
			
			startMove(aBigLi[iNow], 'height', oBigUl.offsetHeight);
			
		};
	}
	oDiv.onmouseout=function(){
	timer=setInterval(function(){
				iNow++;
				if(iNow==aSmallLi.length)
				{iNow=0;}
				tab();
		},3000);
		}
	oDiv.onmouseover=function(){
		clearInterval(timer);
	}	
};