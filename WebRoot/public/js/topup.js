window.onload=function(){ 

var o=document.getElementById('Choose-text'); 

window.setInterval(function(){scrollup(o,20,0);},4000); 

} 

function scrollup(o,d,c){ 

if(d==c){ 

var t=o.firstChild.cloneNode(true); 

o.removeChild(o.firstChild); 

o.appendChild(t); 

t.style.marginTop=o.firstChild.style.marginTop='0px'; 

} 

else{ 

var s=3,c=c+s,l=(c>=d?c-d:0); 

o.firstChild.style.marginTop=-c+l+'px'; 

window.setTimeout(function(){scrollup(o,d,c-l)},200); 

} 

} 