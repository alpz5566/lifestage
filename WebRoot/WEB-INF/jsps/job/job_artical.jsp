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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/train_artical.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/images1.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/images5.css" type="text/css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/basic.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/bigshow4.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script>
</head>
<body>
<div class="all">
	<div id="content">
		<div id="content_left">
			<h1 class="content_left_h1"><a href="">首页</a>  <a href="">民生</a></h1>
			<div class="content_left_div1">
				<div class="content_left_div1_top">
					<h2 class="content_left_div1_top_h2">网页设计制作/美工切图</h2>
					<input type="submit" class="apply" value=" "></input>
				</div>
				<div class="content_left_div1_bottom">
					<div class="leftpart">
						<p>北京中裕世纪大酒店</p>
						<p>公司规模：<span>
						<c:choose>
							<c:when test="${empb.company_registeredBean.compaySize =='1'}">
								1-15人
							</c:when>
							<c:when test="${empb.company_registeredBean.compaySize =='2'}">
								15-50人
							</c:when>
							<c:when test="${empb.company_registeredBean.compaySize =='3'}">
								50-200人
							</c:when>
							<c:when test="${empb.company_registeredBean.compaySize =='4'}">
								200-500人
							</c:when>
							<c:when test="${empb.company_registeredBean.compaySize =='5'}">
								500人以上
							</c:when>
						</c:choose>
						</span></p>
						<p>薪资待遇：<span>${empb.priceBeanBySalaryid.lsalary}-${empb.priceBeanBySalaryid.hsalary}元</span></p>
						<p>学历要求：<span>${empb.educationBean.name}</span></p>
						<p>工作年限：<span>${empb.workYear}</span></p>
					</div>
					<div class="rightpart">
						<p>招聘职位：<span>${empb.jbtypeBean.name}</span></p>
						<p>招聘人数：<span>${empb.numb}</span></p>
					</div>
				</div>
			</div>
			<h3 class="content_left_h3">岗位描述</h3>
			<div class="content_left_div2">
				${empb.describe}
				<!--<p>1、负责网站页面的美工设计，修改</p>
				<p>2、网站整体栏目、网页的设计制作</p>
				<p>3、同项目其他各组（如技术、策划等）进行配合工作，并协助其他各组完成工作。</p>
				<p>4、其他与美术设计相关的工作。</p>
				<p>任职资格：</p>
				<p>1、有相关网页设计制作工作经验，有医疗行业网站经验者优先；</p>
				<p>2、有良好的美术功底，审美能力和创意，色彩感强；</p>
				<p>3、熟练使用photoshop,illustrator,flash,dreamweaver,firworks等网页设计制作</p>
				<p class="specail_p">软件，熟练css+div页面布局，了解编程者优先；</p>
				<p>4、有良好的工作协调能力和沟通能力，认真负责、敬业、良好的人际关系和团队合作精神；</p>
				<p>5、能够参与系统开发的用户需求了解，熟悉业务逻辑并根据用户需求建立友好的系统界面</p>
				<p class="specail_p">工作时间：周一至周五9:00-6:00 国家规定法定假日优秀员工一经录用公司提供优越</p>
				<p class="specail_p">的晋升机制和薪酬福利。</p>
			--></div>
			<h3 class="content_left_h3">公司介绍</h3>
			<div class="content_left_div2 content_left_div3">
				${empb.company_registeredBean.company_profile}
				<p>公司，占地60余亩，餐饮、住宿、会议、娱乐等服务项目齐全。该温泉是目前北京地区水最深，温度最高，出水量最大，富含对人体有益的微量元素和矿物质最多，水质最优的地热井之一。素有“京东第一泉”的美誉。</p>
				<p>度假村项目营业面积约2.8万平方米，度假村有高中档套房263套（506个床位），普通标间94套，贵宾高档标间132套，普通套房14套，商务间9套，商务套房10套，家庭套房1套。大小会议室12个，容纳20人至110人的第一会议室至第九会议室，容纳150人的多功能厅1个，容纳300人的会议演播厅1个，容纳420人报告厅1个，灯光音响设备齐全，可满足您各种会议专业演出、时装表演、产品展示的需求。</p>
				<p>度假村健身馆占地2000平米，拥有目前京东地区规模最大、专业水准最高的健身馆，室内网球、羽毛球等项目齐备；享有国际盛誉的红双喜乒乓球、星牌台球等置身馆中；射箭、射击、沙壶及众多的大型电子游戏设备令您神往，是您放松身心的快乐天堂！</p>
			</div>
			<h3 class="content_left_h3">学校图片</h3>
			<div class="content_left_div4">
				<ul class="content_left_div4_ul">
					<li class="content_left_div4_ul_li1"><img src="${pageContext.request.contextPath}/public/images/school_photo1.png" alt=""/></li>
					<li class="content_left_div4_ul_li1"><img src="${pageContext.request.contextPath}/public/images/school_photo2.png" alt=""/></li>
					<li><img src="${pageContext.request.contextPath}/public/images/school_photo3.png" alt=""/></li>
				</ul>
			</div>
			<h3 class="content_left_h3">联系方式</h3>
			<div class="content_left_div5">
				<div class="content_left_div5_top">
					<div class="link">
						<p>联系电话：未填写</p>
						<p>联系地址：廊坊燕郊大厂夏垫京东第一温泉（常德）</p>
						<p>学校网址：未填写</p>
					</div>
					<!---查看地图-->
					<div class="check">
						<a class="dianji_ditu1" href="">查看地图</a>
				   </div>
				   <div id="baidu_ditu1">
						<div>
								<div id="allmap">
										
								</div>
						</div>
				   </div>
				</div>
				<input type="submit" class="apply1" value=" "></input>
			</div>
		</div>
		<div id="content_right">
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
