<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>生活驿站</title>
	<%@ include file="/WEB-INF/jsps/public/head.jsp" %>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Language" content="zh-CN" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/basic.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/fcbasic.css" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/basic.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/cars_service.css" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/yh.js"></script>
</head>
<body>
<div id="content_sort">
		<div class="content_sort_left">
			<ul class="content_sort_left_ul1">
				<li class="content_sort_left_li1">分  类：</li>
				<li class="content_sort_left_li2"><a href="#">汽车4S店</a></li>
				<li class="content_sort_left_li2"><a href="#">汽车保险</a></li>
				<li class="content_sort_left_li2"><a href="#">汽车保养</a></li>
				<li class="content_sort_left_li2"><a href="#">拼车</a>/<a href="#">租车</a></li>
			</ul>
			<ul class="content_sort_left_ul2">
				<li class="content_sort_left_ul2_li2"><a href="#">代驾陪练</a></li>
				<li class="content_sort_left_ul2_li2"><a href="#">汽车配件</a></li>
				<li class="content_sort_left_ul2_li3"><a href="#">其他</a></li>
			</ul>
		</div>
		<div class="content_sort_right">
			<form action="" method="">
				<input type="text" name="keyword" class="content_sort_right_input1 yhinput" value="输入找车辆"></input>
				<input type="submit" class="content_sort_right_input2" value=" "></input>
			</form>
		</div>
	</div>
	<div id="content_detail">
		<div class="content_detail_left">
			<c:forEach items="${pageBean.recordList}" var="pageBean">
				<div class="detail_information">
				<dl class="detail_information_left">
					<dt class="cars_images_1"><a href=""><img src="images/cars_bus.png"></a></dt>
					<dd class="cars_description_1"><a href="${pageContext.request.contextPath}/car/info?id=${pageBean.id}">${pageBean.name}&nbsp;${pageBean.describe }</a></dd>
					<dd class="cars_description_2">5.8米车厢&nbsp;潍柴310马力&nbsp;车况好，无事故，包转户，可按揭</dd>
					<dd class="cars_description_2">购于2012年&nbsp;/${pageBean.miles}万公里</dd>
				</dl>
				<div class="detail_information_right">
					<p class="spacific_time">${pageBean.createtime}</p>
					<p class="spacific_price"><span class="number">${pageBean.price }</span><span class="number_yuan">万元</span></p>
				</div>
				</div>
			</c:forEach>
			
			<%--<ul class="content_detail_ul content_detail_ul1">
				<li class="content_detail_ul_li1"><a href="">第一页</a></li>
				<li class="content_detail_ul_li2"><a href="">上一页</a></li>
				<li class="content_detail_ul_li3"><a href="">1</a></li>
				<li class="content_detail_ul_li3"><a href="">2</a></li>
				<li class="content_detail_ul_li3"><a href="">3</a></li>
				<li class="content_detail_ul_li3"><a href="">4</a></li>
				<li class="content_detail_ul_li3"><a href="">5</a></li>
				<li class="content_detail_ul_li3"><a href="">6</a></li>
				<li class="content_detail_ul_li3"><a href="">7</a></li>
				<li class="content_detail_ul_li3"><a href="">8</a></li>
				<li class="content_detail_ul_li4"><a href="">下一页</a></li>
				<li class="content_detail_ul_li5">跳转到<input type="text" class="fanye_input yhinput" value="17" ></input>页</li>
				<li class="content_detail_ul_li6"><a href="">最后页</a></li>
			</ul>
			--%>
		</div>
		<form action="/car/index" method="post">
			<%@ include file="/WEB-INF/jsps/public/pageView.jsp" %>
		</form>
		<div class="content_detail_right">
			<h1 class="content_detail_right_h1">知名企业招聘</h1>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1">pps诚聘现招 期待您的加入<br/>共创美好未来</p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1">pps诚聘现招 期待您的加入<br/>共创美好未来</p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1">pps诚聘现招 期待您的加入<br/>共创美好未来</p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1">pps诚聘现招 期待您的加入<br/>共创美好未来</p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1">pps诚聘现招 期待您的加入<br/>共创美好未来</p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1">pps诚聘现招 期待您的加入<br/>共创美好未来</p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1">pps诚聘现招 期待您的加入<br/>共创美好未来</p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1">pps诚聘现招 期待您的加入<br/>共创美好未来</p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1 content_detail_right_div2">
				<p class="content_detail_right_p1">pps诚聘现招 期待您的加入<br/>共创美好未来</p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
		</div>
	</div>

	
	<%@ include file="/WEB-INF/jsps/public/foot.jsp" %>
</div>
</body>
</html>
