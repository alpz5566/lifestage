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
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/cars_artical.css" type="text/css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/css/images2.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/basic.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/newpic.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/move.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/bigshow1.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/simplefoucs.js" type="text/javascript"></script>
	
	
</head>
<body>
	<div id="bannerbox">
		<div id="focus">
			<ul>
				<li><a href="" target="_blank"><img src="${pageContext.request.contextPath}/public/images/small_pic1.png" alt="" /></a></li>
				<li><a href="" target="_blank"><img src="${pageContext.request.contextPath}/public/images/small_pic2.png" alt="" /></a></li>
				<li><a href="" target="_blank"><img src="${pageContext.request.contextPath}/public/images/small_pic3.png" alt="" /></a></li>
				<li><a href="" target="_blank"><img src="${pageContext.request.contextPath}/public/images/small_pic4.png" alt="" /></a></li>
			</ul>
		</div>
	</div>
	
	<div id="content">
		<div id="content_left">
			<h1 class="content_left_h1"><a href="">首页</a> > <a href="">民生</a></h1>
			<h2 class="cars_content">福田欧曼  2011年上牌&nbsp;[钱不够的客户公司支持贷款购车]</h2>
			<div class="big_images_cars">
				<div id="playimages" class="play">
				<ul class="big_pic">
					<li style="z-index:1;"><a class="bigshow" href="javascript:void(0);"><img src="images/big_cars.png" alt="" id="img-mwsf-6" class="photo" /></a></li>
					<li><a class="bigshow" href="javascript:void(0);"><img src="images/small_pic2.png" alt="" id="img-mwsf-6" class="photo" /></a></li>
					<li><a class="bigshow" href="javascript:void(0);"><img src="images/small_pic3.png" alt="" id="img-mwsf-6" class="photo" /></a></li>
					<li><a class="bigshow" href="javascript:void(0);"><img src="images/small_pic1.png" alt="" id="img-mwsf-2" class="photo" /></a></li>
				</ul>
				 <div class="small_pic">
					<a class="markLeft" href="javascript:;"></a>
					<ul style="width:390px;">
						<li style="filter: 100; opacity: 1;"><img src="images/big_cars.png" style=" border-color:red;" /></li>
						<li><img src="images/small_pic2.png" /></li>
						<li><img src="images/small_pic3.png" /></li>
						<li><img src="images/small_pic4.png" /></li>
					</ul>
					<a class="markRight" href="javascript:;"></a>
				</div>
			</div>
				<ul class="cars_price_">
					<li>价&nbsp;格:&nbsp;<span class="number_wan">${car.price}</span>&nbsp;万</li>
					<li>过户费用:&nbsp;卖家承担</li>
					<li>品牌车系:&nbsp;福田—欧曼</li>
					<li>联系人:&nbsp;${car.contact}</li>
					<li>联系方式:&nbsp;<span class="number_wan">${car.contactTel}</span></li>
					<li>联系地址:&nbsp;${car.contactAdd }</li>
				</ul>
			</div>	
			<h3 class="content_left_h3">详细描述</h3>
			<div class="content_detailed_description">
				<ul class="detailed_description_1">
					<li class="introduction_cars"><span  class="introduction_span1">车辆颜色</span><span  class="introduction_span2">${car.carColorBean.color }</span></li>
					<li class="introduction_cars"><span  class="introduction_span1">事故历史</span><span  class="introduction_span2">${car.accident }重大事故</span></li>
					<li class="introduction_cars"><span  class="introduction_span1">上牌时间</span><span  class="introduction_span2">${car.shangpai }</span></li>
					<li class="introduction_cars"><span  class="introduction_span1">交强险</span><span  class="introduction_span2">${car.compulsory }</span></li>
				</ul>
				<ul class="detailed_description_2">
					<li class="introduction_cars"><span  class="introduction_span1">行驶里程</span><span  class="introduction_span2">${car.miles }万公里</span></li>
					<li class="introduction_cars"><span  class="introduction_span1">维护保养</span><span  class="introduction_span2">${car.care }</span></li>
					<li class="introduction_cars"><span  class="introduction_span1">年检到期</span><span  class="introduction_span2">${car.daoqi }</span></li>
					<li class="introduction_cars"><span  class="introduction_span1">商业险</span><span  class="introduction_span2">${car.businessRisks }</span></li>
				</ul>
			</div>
			<p class="ouman_production">${car.describe }</p>
			<h3 class="content_left_h3">车辆图片</h3>
			<div class="content_left_div4">
				<ul class="content_left_div4_ul">
					<li class="content_left_div4_ul_li1"><img src="images/school_photo1.png" alt=""/></li>
					<li class="content_left_div4_ul_li1"><img src="images/school_photo2.png" alt=""/></li>
					<li><img src="images/school_photo3.png" alt=""/></li>
				</ul>
			</div>
			
		</div>
		<div id="right_content">
			<img class="hengda" src="images/hengda.png" alt=""/>
			<img class="line" src="images/line.png" alt=""/>
			<h1 class="content_right_h1">服务信息</h1>
			<div class="information">
				<p class="p_color1"><a href="#">pps诚聘现招	期待您的加入共创美好未来</a></p>
				<p class="p_color2">工作区域：全国</p>
				<p class="p_color2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="information">
				<p class="p_color1"><a href="#">pps诚聘现招	期待您的加入共创美好未来</a></p>
				<p class="p_color2">工作区域：全国</p>
				<p class="p_color2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="information">
				<p class="p_color1"><a href="#">pps诚聘现招	期待您的加入共创美好未来</a></p>
				<p class="p_color2">工作区域：全国</p>
				<p class="p_color2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="information">
				<p class="p_color1"><a href="#">pps诚聘现招	期待您的加入共创美好未来</a></p>
				<p class="p_color2">工作区域：全国</p>
				<p class="p_color2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="information">
				<p class="p_color1"><a href="#">pps诚聘现招	期待您的加入共创美好未来</a></p>
				<p class="p_color2">工作区域：全国</p>
				<p class="p_color2">薪资：<span>5000-6000</span>元/月</p>
			</div>
		</div>
	</div>

	
	<%@ include file="/WEB-INF/jsps/public/foot.jsp" %>
</div>
</body>
</html>
