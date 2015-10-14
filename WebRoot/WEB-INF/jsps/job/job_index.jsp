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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/job.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/fcbasic.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/educate_train.css" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/menu.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/basic.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/yh.js"></script>	
</head>
<body>
<div class="all">
	<div id="content">
		<div id="first_part">
			<div class="form_part">
				<p class="form_part_p">点击选择职位></p>
				<div class="fczuLMsort" id="jobDiv">
							<div class="sort" id="jobLMsort">学历要求</div>
							<div class="sortclick" id="jobLMsortclick"></div>
							<ul class="sortul" id="jobDivul">
								<c:forEach items="${ListEducations}"  var="let">
								<li>
									<a href="${pageContext.request.contextPath}/job/findJobByJobTypeId?id=${let.id}">${let.name}</a>
								</li>
								</c:forEach>
							</ul>
				</div>
				<div class="fczuLMsort" id="jobDiv">
							<div class="sort" id="jobLMsort">工作经验</div>
							<div class="sortclick" id="jobLMsortclick"></div>
							<ul class="sortul" id="jobDivul">
								<c:forEach items="${companys}" var="cp">
									<li >${cp.workYear}</li>
								</c:forEach>
							</ul>
				</div>
				<div class="fczuLMsort" id="jobDiv">
					<div class="sort" id="jobLMsort">薪资</div>
					<div class="sortclick" id="jobLMsortclick"></div>
						<ul class="sortul" id="jobDivul">
							<c:forEach items="${LisSalarys}" var="ls">
								<li>
									<a href="${pageContext.request.contextPath}/job/findJobByJobTypeId?id=${ls.id}">${ls.lsalary} ${ls.hsalary}</a>
								</li>
							</c:forEach>
						</ul>
				</div>
				<div class="fczuLMsort" id="jobDiv">
					<div class="sort" id="jobLMsort">地点</div>
					<div class="sortclick" id="jobLMsortclick"></div>
						<ul class="sortul" id="jobDivul">
							<c:forEach items="${Listregionals}"  var="lr">
								<li>
									<a href="${pageContext.request.contextPath}/job/findJobByJobTypeId?id=${lr.id}">${lr.name}</a>
								</li>
							</c:forEach>
						</ul>
				</div>
				<input class="form_part_input1 yhinput" value="输入公司名称或职位" type="text"></input>
				<input class="form_part_input2" value=" " type="submit"></input>
			</div>
			<ul class="first_part_ul1">
				<c:forEach items="${jobtyps}" begin="0" end="9" var="jbt">
					<li class="first_part_ul1_li1">
						<a href="${pageContext.request.contextPath}/job/index?id=${jbt.id}">${jbt.name}</a>
					</li>
				</c:forEach>
			</ul>
			<ul class="first_part_ul2">
				<c:forEach items="${jobtyps}" begin="8" end="16"  var="jbt">
					<li class="first_part_ul2_li1">
						<a href="${pageContext.request.contextPath}/job/index?id=${jbt.id}">${jbt.name}</a>
					</li>
				</c:forEach>
				<li><a href="">其他</a></li>
			</ul>
		</div>
		<div id="images_part">
			<div class="images_part_left">
				<c:forEach items="${companys}" var="c">
					<a href="${pageContext.request.contextPath}/job/artical?id=${c.id}">
					<ul class="first_part_ul">
						<li class="first_part_ul_li1">${c.name}</li>
						<li class="first_part_ul_li2 first_part_ul_li3">${c.company_registeredBean.linkman} </li>
						<li class="first_part_ul_li2 first_part_ul_li4">${c.company_registeredBean.regionalBean.name} </li>
						<li class="first_part_ul_li2 first_part_ul_li5">2014-01-04</li>
			   		 </ul></a>
				</c:forEach>
				  
				<ul class="content_detail_ul" style="margin-left:26px;">
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
				<li class="content_detail_ul_li5">跳转到<input type="text" class="fanye_input yhinput" value="17"></input>页</li>
				<li class="content_detail_ul_li6"><a href="">最后页</a></li>
			</ul>
			</div>
			<div class="images_part_right">
				<h1 class="content_detail_right_h1">知名企业招聘</h1>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1"><a href="">pps诚聘现招 期待您的加入共创美好未来</a></p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1"><a href="">pps诚聘现招 期待您的加入共创美好未来</a></p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1"><a href="">pps诚聘现招 期待您的加入共创美好未来</a></p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1"><a href="">pps诚聘现招 期待您的加入共创美好未来</a></p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1"><a href="">pps诚聘现招 期待您的加入共创美好未来</a></p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1"><a href="">pps诚聘现招 期待您的加入共创美好未来</a></p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1"><a href="">pps诚聘现招 期待您的加入共创美好未来</a></p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1"><a href="">pps诚聘现招 期待您的加入共创美好未来</a></p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			<div class="content_detail_right_div1">
				<p class="content_detail_right_p1"><a href="">pps诚聘现招 期待您的加入共创美好未来</a></p>
				<p class="content_detail_right_p2">工作区域：全国</p>
				<p class="content_detail_right_p2">薪资：<span>5000-6000</span>元/月</p>
			</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsps/public/foot.jsp" %>
</div>
</body>
</html>