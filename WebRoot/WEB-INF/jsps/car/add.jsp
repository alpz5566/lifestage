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
<div class="fctxtContent" id="carsUserContent">
		<div class="fctxtLeft" id="carsUserLeft">
				<h1 class="fczuh1" >基本资料<span class="span_color1">*</span><span class="span_color2">号内容为必填项</span></h1>
				<div class="fczuLeftMain  carsUserLeftMain">
					<form action="${pageContext.request.contextPath}/car/save" method="post" enctype="multipart/form-data">
					<div class="fczuLMform">
						<span class="carUser fczuLMstar" >名称</span><input class="fczuLMinput fczuLMinputcarname" name="name" id="fczuinput" type="text"></input>
					</div>
					<div class="fczuLMform">
						<span class="carUser fczuLMstar">价格</span><input class="fczuLMinput fczuLMinputcarname" name="price" id="fczuinput" type="text"></input>
					</div>
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">过户费用</span>
						<div class="fczuLMsort carUserMoney">
							<div class="sort carUserMoneysort" id="fczuLMsort">请选择</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="carUserMoneysortul">
								<li>标 题</li>
								<li>关键字</li>
								<li>图	片</li>
							</ul>
						</div>
					</div>	
					<div class="fczuLMform">
						<span class="carUserTouch fczuLMstar">联系人</span><input class="fczuLMinput fczuLMinputcartouch" name="contact" id="fczuinput" type="text"></input>
					</div>	
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">联系方式</span><input class="fczuLMinput fczuLMinputcartouch" name="contactType" id="fczuinput" type="text"></input>
					</div>		
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">联系地址</span><input class="fczuLMinput fczuLMinputcaradd" name="contactAdd" id="fczuinput" type="text"></input>
					</div>					
					<div class="fczuLMform carUserSay">
						<span class="fczuLMtext carUseSpan">详细描述</span> 
						<ul class="carUserUl">
						<li><span for="carMiaosu1" class="carUserMiaosu">车辆颜色</span><input type="text" class="fczuLMinput" name="carColorBean.id" id="carMiaosu1" /></li>
						<li><span for="carMiaosu2" class="carUserMiaosu">事故历史</span><input type="text" class="fczuLMinput" name="accident" id="carMiaosu2" /></li>
						<li><span for="carMiaosu3" class="carUserMiaosu">上牌时间</span><input type="text" class="fczuLMinput" id="carMiaosu3" /></li>
						<li><span for="carMiaosu4" class="carUserMiaosu">交强险</span><input type="text" class="fczuLMinput"  id="carMiaosu4" /></li>
						</ul>
						<ul class="carUserUl carUserUl2"> 
						<li><span for="carMiaosu1" class="carUserMiaosu">行驶里程</span><input type="text" class="fczuLMinput" name="miles" id="carMiaosu1" /></li>
						<li><span for="carMiaosu2" class="carUserMiaosu">维护保养</span><input type="text" class="fczuLMinput" id="carMiaosu2" /></li>
						<li><span for="carMiaosu3" class="carUserMiaosu">年检到期</span><input type="text" class="fczuLMinput" id="carMiaosu3" /></li>
						<li><span for="carMiaosu4" class="carUserMiaosu">商业险</span><input type="text" class="fczuLMinput"  id="carMiaosu4" /></li>
						</ul>
						<textarea class="gangwei carUsegangwei"></textarea>
					</div>				
					<div class="fczuLMform">
						<span class="fczuLMtwo">图片</span>
						<div class="fczuLMformfile">
						<input type="text" name="textfile" id="textfile" class="picMinput yhinput" value="每张最大500KB,支持jpg/gif/png格式"/>
						<input id="txfile" class="pictxfile" type="file" name="file" onchange="document.getElementById('textfile').value=this.value"/>
						</div>
					</div>
					<div class="fczuLMimg">
						<img src="images/school_photo4.png" alt=""/>
						<img class="" src="images/school_photo5.png" alt=""/>
						<img class="" src="images/school_photo6.png" alt=""/>
					</div>
				<input class="next" type="submit" value=" "></input>
				</form>
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
