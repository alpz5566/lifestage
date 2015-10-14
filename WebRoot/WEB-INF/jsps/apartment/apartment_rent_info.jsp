<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/cars_artical.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/apartment_artical.css" type="text/css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/css/images1.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/images4.css" type="text/css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/basic.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/move.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/newpic.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/bigshow1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/bigshow3.js"></script>
	<script src="${pageContext.request.contextPath}/public/js/simplefoucs.js" type="text/javascript"></script>
</head>
<body>
<div class="all">
	<!--点击放大后切换的图片-->
	
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
		
	
	<div id="content_house">
		<div id="content_left">
			<h1 class="content_left_h1"><a href="">首页</a> > <a href="">民生</a></h1>
			<h2 class="house_content_11">(出售)【家天下房地产】武陵望江名苑  ${arb.plotName}  ${arb.room}室${arb.liveroom}厅${arb.bathroom}卫 ${arb.area}/m<sup>2</sup></h2>
			<h4 class="center_house">中心好地段，繁华地段豪装急售</h4>
			<div class="big_images_cars">
				<div id="playimages" class="play">
				<ul class="big_pic">
					<li style="z-index:1;"><a class="bigshow" href="javascript:void(0);"><img src="${pageContext.request.contextPath}/public/images/house.png" alt="" id="img-mwsf-6" class="photo" /></a></li>
					<li><a class="bigshow" href="javascript:void(0);"><img src="${pageContext.request.contextPath}/public/images/small_pic2.png" alt="" id="img-mwsf-6" class="photo" /></a></li>
					<li><a class="bigshow" href="javascript:void(0);"><img src="${pageContext.request.contextPath}/public/images/small_pic3.png" alt="" id="img-mwsf-6" class="photo" /></a></li>
					<li><a class="bigshow" href="javascript:void(0);"><img src="${pageContext.request.contextPath}/public/images/small_pic1.png" alt="" id="img-mwsf-2" class="photo" /></a></li>
				</ul>
				
				 <div class="small_pic">
					<a class="markLeft" href="javascript:;"></a>
					<ul style="width:390px;">
						<li style="filter: 100; opacity: 1;"><img src="${pageContext.request.contextPath}/public/images/house.png" style=" border-color:red;" /></li>
						<li><img src="${pageContext.request.contextPath}/public/images/small_pic2.png" /></li>
						<li><img src="${pageContext.request.contextPath}/public/images/small_pic3.png" /></li>
						<li><img src="${pageContext.request.contextPath}/public/images/small_pic4.png" /></li>
					</ul>
					<a class="markRight" href="javascript:;"></a>
				</div>
			</div>
				<ul class="cars_price_">
					<li>租&nbsp;金:&nbsp;<span class="number_wan">${arb.monny}</span>&nbsp;元/月</li>
					<li>户&nbsp;型:&nbsp;${arb.room}室${arb.liveroom}厅${arb.bathroom}卫</li>
					<li>面&nbsp;积:${arb.area}/m<sup>2</sup></li>
					<li>性别要求:${arb.sex}</li>
					<li>类&nbsp;型:${arb.house_typeBean.name}</li>
					<li>楼&nbsp;层:${arb.floor}/${arb.sumfloor }层&nbsp; 装修:${arb.situationBean.name}</li>
					<li>位&nbsp;置:望江名苑</li>
					<li>地&nbsp;址:地区医院附近望江名苑</li>
					<li>电&nbsp;话:${arb.contactTel}</li>
					<li>联系人:${arb.contact}</li>
					
				</ul>
			</div>	
			<h3 class="content_left_h3">房屋描述</h3>
			
			<p class="apartment_production">${arb.describe}</p>
			<h3 class="content_left_h3">房屋图片</h3>
			<div class="content_left_div4">
				<ul class="content_left_div4_ul">
					<li class="content_left_div4_ul_li1"><img src="${pageContext.request.contextPath}/public/images/school_photo1.png" alt=""/></li>
					<li class="content_left_div4_ul_li1"><img src="${pageContext.request.contextPath}/public/images/school_photo2.png" alt=""/></li>
					<li><img src="${pageContext.request.contextPath}/public/images/school_photo3.png" alt=""/></li>
				</ul>
			</div>
			<h3 class="content_left_h3">周边建筑</h3>
			<div class="house_byside">
				<ul class="example_">
					<li class="name_example">医院</li>
					<li class="name_example_1">步行街</li>
					<li class="name_example">银行</li>
					<li class="name_example">学校</li>
				</ul>
				<div class="soso_map">
					<a class="dianji_ditu" href="">查看地图</a>
				</div>
				<div id="baidu_ditu">
				        <div>
								<div id="allmap">
										
								</div>
						</div>
				</div>
			
			
			
			</div>
		</div>
		<div id="right_content">
			<img class="hengda" src="${pageContext.request.contextPath}/public/images/hengda.png" alt=""/>
			<img class="line" src="${pageContext.request.contextPath}/public/images/line.png" alt=""/>
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
	</div>
	<%@ include file="/WEB-INF/jsps/public/foot.jsp" %>
</div>
</body>
</html>
<script type="text/javascript">
var map = new BMap.Map("allmap");
map.addControl(new BMap.NavigationControl()); //开启伸缩控制  http://developer.baidu.com/map/jsdevelop-3.htm 
    map.enableScrollWheelZoom();
map.centerAndZoom(new BMap.Point(111.678945-0.01, 29.056973+0.005), 16);//地理位置-0.01和+0.005（经纬度）显示的右上角的位置，为地图位置()
var marker1 = new BMap.Marker(new BMap.Point(111.678945, 29.056973));  //
map.addOverlay(marker1);            

</script>