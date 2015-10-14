<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>生活驿站</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Language" content="zh-CN" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/basic.css" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/basic.js"></script>
</head>
<body>
<div class="all">
	<div id="top">
		<ul class="topUl">
			<li class="topli_1"><a href="#">设为首页</a></li>
			<li class="topli_2"><a href="#">加入收藏</a></li>
			<li class="topli_3"><a href="#">网站地图</a></li>
		</ul>
		<span class="topsign"></span>
		<span class="shyzsign"></span>
		<div class="topsearch">
			<form>
				<div id="topsort">
					<div class="sort">标 题						
					</div>
					<div class="sortclick"></div>
						<ul class="sortul">
							<li>标 题</li>
							<li>关键字</li>
							<li>图	片</li>
						</ul>
				</div>
				<div class="topinput">
					<input type="text"  class="inputtext"/>
					<button class="inputbutton"></button>
				</div>
			</form>
		</div>
		<ul class="topUl1">      
			<li><a href="">登 陆</a></li>
			<li><a href="">注 册</a></li>
			<li><a href="">QQ登陆</a></li>
			<li id="ul1LiLast"><a href="">微博登陆</a></li>
		</ul>
	</div>
	<div id="banner">
		<ul class="bannerUl">                                          
				<li><a href="">网站首页</a></li>
				<li><a href="">新闻资讯</a></li>
				<li><a href="${pageContext.request.contextPath}/job/index">求职招聘</a></li>
				<li><a href="${pageContext.request.contextPath}/apartment/fcym">房产信息</a></li>
				<li><a href="${pageContext.request.contextPath}/car/index">车辆服务</a></li>
				<li><a href="">教育培训</a></li>
				<li><a href="">二手信息</a></li>
		</ul>
	</div>
	<div id="adBanner">
		<div class="adBannerCenter" id="adtext">		
		<ul>	
			<li><a href="">今日折扣：大润发鲜肉7元每斤</a>
			<a href="">家润多：黄金价格299元起 </a>
			<a href="">一汽大众今日到场送1万装饰</a>
			</li>
			
		</ul>	
			<button class="adButton">我要发布</button>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	//设置URL参数的方法  
      function setParmsValue(parms, parmsValue) {  
          var urlstrings = document.URL;  
          var args = GetUrlParms();  
          var values = args[parms];  
          //如果参数不存在，则添加参数         
          if (values == undefined) {  
              var query = location.search.substring(1); //获取查询串   
              //如果Url中已经有参数，则附加参数  
              if (query) {  
                  urlstrings += ("&" + parms + "=" + parmsValue);  
              }  
              else {  
                  urlstrings += ("?" + parms + "=" + parmsValue);  //向Url中添加第一个参数  
              }  
              window.location = urlstrings;  
          }  
          else {  
              window.location = updateParms(parms, parmsValue);  //修改参数  
          }  
      }  
  
      //修改URL参数，parms：参数名，parmsValue：参数值，return：修改后的URL  
      function updateParms(parms, parmsValue) {  
          var newUrlParms = "";  
          var newUrlBase = location.href.substring(0, location.href.indexOf("?") + 1); //截取查询字符串前面的url  
          var query = location.search.substring(1); //获取查询串     
          var pairs = query.split("&"); //在逗号处断开     
          for (var i = 0; i < pairs.length; i++) {  
              var pos = pairs[i].indexOf('='); //查找name=value     
              if (pos == -1) continue; //如果没有找到就跳过     
              var argname = pairs[i].substring(0, pos); //提取name     
              var value = pairs[i].substring(pos + 1); //提取value   
              //如果找到了要修改的参数  
              if (findText(argname, parms)) {  
                  newUrlParms = newUrlParms + (argname + "=" + parmsValue + "&");  
              }  
              else {  
                  newUrlParms += (argname + "=" + value + "&");  
              }  
          }  
          return newUrlBase + newUrlParms.substring(0, newUrlParms.length - 1);  
      }  
  
      //辅助方法  
      function findText(urlString, keyWord) {  
          return urlString.toLowerCase().indexOf(keyWord.toLowerCase()) != -1 ? true : false;  
      }  
  
      //得到查询字符串参数集合  
      function GetUrlParms() {  
          var args = new Object();  
          var query = location.search.substring(1); //获取查询串     
          var pairs = query.split("&"); //在逗号处断开     
          for (var i = 0; i < pairs.length; i++) {  
              var pos = pairs[i].indexOf('='); //查找name=value     
              if (pos == -1) continue; //如果没有找到就跳过     
              var argname = pairs[i].substring(0, pos); //提取name     
              var value = pairs[i].substring(pos + 1); //提取value     
              args[argname] = unescape(value); //存为属性     
          }  
          return args;  
      }   


</script>
</html>