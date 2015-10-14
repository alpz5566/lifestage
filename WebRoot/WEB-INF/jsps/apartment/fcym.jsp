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
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/fc.js"></script>
</head>
<body>
<div class="all">
	<div class="fcsyContent">
		<div class="fcsytop">
			<ul class="fcsyul">
				<li class="fcsyLi" id="fcsyliadd">按区域找</li>
				<li class="fcsyLi" id="fcsylidress">按片区找</li>
				<li class="fcsyLi" id="fcsylimap">按地图找</li>
			</ul>
			<div class="fcsysearch">
				<input class="fcsytxt" type="text" value="请输入关键字（楼盘名称、地址）"/>
				<input class="fcsybtn" type="button" value="搜索"/>
			</div>
			<div class="clear"></div>
			<div class="fcsymain">
				<div class="fcsymain1">
					<div class="fcsychoose">
						<span class="fcsysort">区&nbsp &nbsp域</span> 
						<a class="fcsybx" href="${pageContext.request.contextPath}/apartment/fcym">不限</a>
						<span class="fcsya">
							<a class="fcsyafirst" href="">武陵区</a>
							<a class="fcsyaother" href="">鼎城区</a>
							<a class="fcsyaother" href="">汉寿县</a>
							<a class="fcsyaother" href="">桃源县</a>
							<a class="fcsyaother" href="">临澧县</a>
							<a class="fcsyaother" href="">石门县</a>
							<a class="fcsyaother" href="">澧 县</a>
							<a class="fcsyaother" href="">安乡县</a>
							<a class="fcsyaother" href="">津市市</a>
							<a class="fcsyaother" href="">德山</a>
							<a class="fcsyaother" href="">柳叶湖</a>
							<a class="fcsyaother" href="">西湖</a>
							<a class="fcsyaother" href="">西洞庭</a>
							<a class="fcsyaother" href="">桃花源</a>
						</span>
					</div>
					<%--<div class="fcsychoose">
						<span class="fcsysort">售&nbsp &nbsp价</span> 
						<a class="fcsybx" href="${pageContext.request.contextPath}/apartment/fcym">不限</a>
						<span class="fcsya">        
							<a class="fcsyafirst" href="javascript:setParmsValue('room','2')">4000元以下</a>
							<a class="fcsyaother" href="">4000-5000元</a>
							<a class="fcsyaother" href="">5000-6000元 </a>
							<a class="fcsyaother" href=""> 6000-8000元</a>
							<a class="fcsyaother" href="">8000-10000元</a>
							<a class="fcsyaother" href="">10000元以上</a>
						
					</div>
					
					--%>
					<div class="fcsychoose">
						<span class="fcsysort">租&nbsp &nbsp金</span> 
						<a class="fcsybx" href="${pageContext.request.contextPath}/apartment/fcym">不限</a>
						<span class="fcsya">        
							<a class="fcsyafirst" href="javascript:setParmsValue('room','2')">4000元以下</a>
							<a class="fcsyaother" href="javascript:setParmsValue('monny','0')">300元以下</a>
							<a class="fcsyaother" href="javascript:setParmsValue('monny','1')">300-600</a>
							<a class="fcsyaother" href="javascript:setParmsValue('monny','2')"> 600-1200元</a>
							<a class="fcsyaother" href="javascript:setParmsValue('monny','3')">1200-2000元</a>
							<a class="fcsyaother" href="javascript:setParmsValue('monny','4')">2000元以上</a>
						
					</div>
					
					<div class="fcsychoose">
						<span class="fcsysort">项目类型</span>
						<a class="fcsybx" href="${pageContext.request.contextPath}/apartment/fcym">不限</a>			
						<%--<a class="fcsybx" href="javascript:setParmsValue('housetype','')">不限</a>
						--%>
						<span class="fcsya">  
							<c:forEach items="${houseList}" var="hl" varStatus="index">
								<%--<c:if test="${index.index == 0}">
									<a class="fcsyafirst" href="${pageContext.request.contextPath}/apartment/fcym?housetype=${hl.id}">${ hl.name }</a>
								</c:if>
								<c:if test="${index.index != 0}">
									<a class="fcsyaother" href="${pageContext.request.contextPath}/apartment/fcym?housetype=${hl.id}">${ hl.name }</a>
								</c:if>
								--%>
								<c:choose>
								   <c:when test="${index.index == 0}">    
								   		<%--<a class="fcsyafirst" href="${pageContext.request.contextPath}/apartment/fcym?housetype=${hl.id}" >${ hl.name }</a>--%>
								   		<a class="fcsyafirst"  href="javascript:setParmsValue('housetype','${ hl.id }')">${ hl.name }</a>
								   </c:when>   
								   <c:otherwise>  
								   		<%--<a class="fcsyaother" href="${pageContext.request.contextPath}/apartment/fcym?housetype=${hl.id}">${ hl.name }</a>--%>
								   		<a class="fcsyaother"  href="javascript:setParmsValue('housetype','${ hl.id }')">${ hl.name }</a>
								   </c:otherwise>  
								</c:choose>
								
							</c:forEach>
						</span>
					</div>
					
					
					
					<div class="fcsychoose" id="fcsyjzts">
						<span class="fcsysort">建筑特色</span>
						<a class="fcsybx" href="${pageContext.request.contextPath}/apartment/fcym">不限</a>
						<span class="fcsya">                        
							<a class="fcsyafirst" href="">教育地产</a>    
							<a class="fcsyaother" href="">特色别墅</a>
							<a class="fcsyaother" href="">低密居所</a>
							<a class="fcsyaother" href=""> 投资地产</a>
							<a class="fcsyaother" href="">花园社区</a>
							<a class="fcsyaother" href="">酒店式公寓</a>
							<a class="fcsyaother" href="">城市综合体</a>
							<a class="fcsyaother" href="">公园地产</a>
							<a class="fcsyaother" href="">复合地产</a>
							<a class="fcsyaother" href="">经济住宅</a>
							<a class="fcsyaother" href="">生态地产</a>
							<a class="fcsyaother" href="">景观地产</a>
							<a class="fcsyaother" href="">创意地产</a>	
						</span>
					</div>
				</div>
				<div class="fcsymain2">
						<div class="fcsychoose">
						<span class="fcsysort">首 字	母</span>
						<span class="fcsybx" href="${pageContext.request.contextPath}/apartment/fcym">不限</span>
						<span class="fcsya" id="fcsyzm">      
							<a href="">A</a>
							<a href="">B</a>
							<a href="">C</a>
							<a href="">D</a>
							<a href="">E</a>
							<a href="">F</a>
							<a href="">G</a>
							<a href="">H</a>
							<a href="">I</a>
							<a href="">J</a>
							<a href="">K</a>
							<a href="">L</a>
							<a href="">M</a>
							<a href="">N</a>
							<a href="">O</a>
							<a href="">P</a>
							<a href="">Q</a>
							<a href="">R</a>
							<a href="">S</a>
							<a href="">T</a>
							<a href="">U</a>
							<a href="">V</a>
							<a href="">W</a>
							<a href="">X</a>
							<a href="">Y</a>
							<a href="">Z</a>
						</span>
					</div>
					<div class="fcsychoose">
						<span class="fcsysort">楼盘名称</span>
						<form action="" class="fcsyform">
						<div class="fcsortDiv">
							<div class="sort" id="fcsort">建筑类型</div>
							<div class="sortclick fcsortclick"></div>
							<ul class="sortul fcsortul">
								<li>标 题</li>
								<li>关键字</li>
								<li>图	片</li>
							</ul>
						</div>
						<div class="fcsortDiv">
							<div class="sort" id="fcsort">精装</div>
							<div class="sortclick fcsortclick"></div>
							<ul class="sortul fcsortul">
								<li>标 题</li>
								<li>关键字</li>
								<li>图	片</li>
							</ul>
						</div>
						<div class="fcsortDiv">
							<div class="sort" id="fcsort">开盘时间</div>
							<div class="sortclick fcsortclick"></div>
							<ul class="sortul fcsortul">
								<li>标 题</li>
								<li>关键字</li>
								<li>图	片</li>
							</ul>
						</div>
						<div class="fcsortDiv">
							<div class="sort" id="fcsort">预售证</div>
							<div class="sortclick fcsortclick"></div>
							<ul class="sortul fcsortul">
								<li>标 题</li>
								<li>关键字</li>
								<li>图	片</li>
							</ul>
						</div>
						<div class="fcsortDiv2">
							<div class="sort" id="fcsort2">项目五证</div>
							<div class=" fcsortclick"></div>
							<ul class="fcsortul2">
								<li><input type="checkbox" id="xsxk1" value=""/><label for="xsxk1">《商品房销售（预售）许可证》</label></li>
								<li><input type="checkbox" id="xsxk1" value=""/><label for="xsxk1">《商品房销售（预售）许可证》</label></li>
							</ul>
						</div>
						</form>
						
					</div>
					
				</div>
				<img class="fcmain2show" src="${pageContext.request.contextPath}/public/images/fcsymain2show.gif" alt="show" />
			</div>
			<div class="fcsymain fcsymainTwo"></div>
			<div class="fcsymain fcsymainTwo"></div>
		</div>
		<div class="fcymbottom" >
			<div class="fcymBLeft">
				<div class="fcymBLhead">
					<p class="FBLTp">共有 <span class="FBLTorange">${pageBean.recordCount}</span> 个符合要求的新房楼盘</p>
					<select class="FBLTselect" name="" id="">默认排序
						<option value="moren">默认排序</option>
						<option value="shoujia">售价最低</option>
						<option value="kaipan">开盘时间</option>
					</select>
					<div class="FBLTdiv">
						<span class="FBLTdivSpan">售价</span> 
						<div class="FBLTdiva">
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcymBLTshang.gif" alt="" /></a> 
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcymBLTxia.gif" alt="" /></a>
						</div>
					</div>
					<div class="FBLTdiv">
						<span class="FBLTdivSpan">开盘时间</span> 	
						<div class="FBLTdiva">
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcymBLTshang.gif" alt="" /></a> 
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcymBLTxia.gif" alt="" /></a>
						</div>
					</div>
					<a href="#" class="FBLTa" id="FBLTpre">上页</a>
					<a href="#" class="FBLTa" id="FBLTnext">下页</a>
				</div>
				<div class="fcymBLmain">
					
					
					
					<c:forEach items="${pageBean.recordList}" var="pageBean">
						<div class="FBLMgd" id="FBLMgd1">
						<h1 class="FBLMgd1h1">${pageBean.plotName}</h1>
						<%--<img src="${pageContext.request.contextPath}/public/images/fcymgdpic.gif" alt="广德花苑内" href="#"/>
						--%>
						<c:if test="${pageBean.imgUrl } == ''">
							<img src="${pageContext.request.contextPath}/public/images/fcymgdpic.gif" alt="广德花苑内" href="#"/>
						</c:if>
							<img src="<c:url value='${pageBean.imgUrl}'></c:url>" width="160px" height="120px" alt="广德花苑内" href="${pageContext.request.contextPath}/apartment/info?id=${pageBean.id}"/>
						<ul class="FBLMgdul">
							<li>
							</li>
							<li>
								<span class="FBLMgdulsort">地址:</span>
								<span id="fcmyadd1">[桥西区]-新火车站</span>
								<span>中华大街与南二环交口向南</span>
							</li>
							<li>
								<span class="FBLMgdulsort">联系电话:</span>
								<span class="fcmyphone">${pageBean.contactTel}</span>
							</li>
							<li>
								<span class="FBLMgdulsort">动态:</span>
								<span class="fcmydongtai">祥云国际</span>
								<span class="fcmydongtai">住宅均价7800元/平米</span>
								<span class="fcmydongtai">全款购房享96折优惠</span>
							</li>
							<li>
								<span class="FBLMgdulsort">租金形式:</span>
								<span class="fcmydongtai">${pageBean.monny_typeBean.name }</span>
							</li>
							<li>
								<span class="FBLMgdulsort">类型:</span>
								<span class="fcymleixing">${pageBean.house_typeBean.name }</span>
								<span class="fcymleixing">城市综合体</span>
								<span class="fcymleixing">商铺</span>
								<span class="fcymleixing">写字楼</span>
								<span class="fcymleixing">公寓装修</span>
								<span class="fcymleixing">${pageBean.situationBean.name }</span>
							</li>
							<li class="FBLMgdA">
								<a href="#">查看地图</a>
								<a href="#">相册</a>
								<a href="#">评论</a>
								<a href="${pageContext.request.contextPath}/apartment/info?id=${pageBean.id}">详情</a>
							</li>
						</ul>
						<div class="FBLMgdright">
							<p><span class="FBLMgdrightbig">${pageBean.monny }</span>元/平米</p>
							<div id="FBLMgd1rightdiv">${pageBean.createtime}</div>
						</div>
						</div>
					</c:forEach>
					
					
					
					
					
					
					<%--<div class="FBLMgd" id="FBLMgd2">
						<h1>城区供电局小区二室二厅出租,家电齐全</h1>
						<img src="${pageContext.request.contextPath}/public/images/fcymgdpic.gif" alt="广德花苑内" />
						<ul class="FBLMgdul">
							<li>
								<span class="FBLMgdulsort">特色:</span>
								<span id="fcymtese1" class="fcymtese">城市综合体</span>
								<span id="fcymtese2" class="fcymtese">公园地产</span>
								<span id="fcymtese3" class="fcymtese">复合地产</span></li>
							<li>
								<span class="FBLMgdulsort">地址:</span>
								<span id="fcmyadd1">[桥西区]-新火车站</span>
								<span>中华大街与南二环交口向南</span>
							</li>
							<li>
								<span class="FBLMgdulsort">电话:</span>
								<span class="fcmyphone">0736-8888888</span>
							</li>
							<li>
								<span class="FBLMgdulsort">动态:</span>
								<span class="fcmydongtai">祥云国际</span>
								<span class="fcmydongtai">住宅均价7800元/平米</span>
								<span class="fcmydongtai">全款购房享96折优惠</span>
							</li>
							<li>
								<span class="FBLMgdulsort">类型:</span>
								<span class="fcymleixing">住宅</span>
								<span class="fcymleixing">城市综合体</span>
								<span class="fcymleixing">商铺</span>
								<span class="fcymleixing">写字楼</span>
								<span class="fcymleixing">公寓装修</span>
								<span class="fcymleixing">毛坯</span>
							</li>
							<li class="FBLMgdA">
								<a href="#">查看地图</a>
								<a href="#">相册</a>
								<a href="#">评论</a>
								<a href="#">详情</a>
							</li>
						</ul>
						<div class="FBLMgdright">
							<p><span class="FBLMgdrightbig">7300</span>元/平米</p>
							<div>1个小时内</div>
						</div>
					</div>
					
					
					
					
					--%>
					<div class="FBLMgd4bord"></div>
					<div class="FBLMgd4bord"></div>
					<div class="FBLMgd4bord"></div>
					<form action="/apartment/fcym" method="post">
						<%@ include file="/WEB-INF/jsps/public/pageView.jsp" %>
					</form>
					
					<%--<div class="fcymBLMpage">
						<a id="fcymBLMpagefirst" href=""> <上一页 </a>
						<a href="">1</a>
						<a href="">2</a>
						<a href="">3</a>
						<a href="">4</a>
						<a href="">5</a>
						<a id="fcymBLMpagefirst" href="">下一页></a>
					</div>
				--%>
				</div>
			</div>
			<div class="fcymBRight">
				<div class="FBRtool">
					<h2 class="h2">购房工具</h2>
					<ul class="FBRtoolul">
						<li class="fcymtool1"><a href="">房贷计算</a></li>
						<li class="fcymtool2"><a href="">购房能力评估</a></li>
						<li class="fcymtool3"><a href="">公积金贷款</a></li>
						<li class="fcymtool4"><a href="">提前还款</a></li>
						<li class="fcymtool5"><a href="">购房税费</a></li>
						<li class="fcymtool6"><a href="">楼盘速查</a></li>
					</ul>
				</div>
				<div class="FBRtool" id="FBRnew">
					<h2 class="h2">常德最新楼盘 <a href="">更多>></a></h2>
					<ul class="FBRnewul">  
						<li><a href="">
							<span class="FBRnewulname">唐城一品</span>
							<span class="FBRnewulprice">待定</span>
							<span class="FBRnewuladd">新华区</span>
						</a></li>
						<li><a href="">                                      
							<span class="FBRnewulname">石家庄宇翔国际</span>
							<span class="FBRnewulprice">待定</span>
							<span class="FBRnewuladd">桥西区</span>
						</a></li>
						<li><a href="">
							<span class="FBRnewulname">东龙府邸 </span>
							<span class="FBRnewulprice">3188元/㎡</span>
							<span class="FBRnewuladd">裕华区</span>
						</a></li>
						<li><a href="">
							<span class="FBRnewulname">五岳溪谷</span>
							<span class="FBRnewulprice">3980元/㎡</span>
							<span class="FBRnewuladd">鹿泉市</span>
						</a></li>
						<li><a href="">
							<span class="FBRnewulname">鑫利·时间国际</span>
							<span class="FBRnewulprice">待定</span>
							<span class="FBRnewuladd">桥东区</span>
						</a></li>
						<li><a href="">
							<span class="FBRnewulname">水岸丽景</span>
							<span class="FBRnewulprice">待定</span>
							<span class="FBRnewuladd">桥东区</span>
						</a></li>
						<li><a href="">
							<span class="FBRnewulname">麒麟国际</span>
							<span class="FBRnewulprice">待定</span>
							<span class="FBRnewuladd">桥西区</span>
						</a></li>
						<li><a href="">
							<span class="FBRnewulname">京海•铭筑</span>
							<span class="FBRnewulprice">待定</span>
							<span class="FBRnewuladd">裕华区</span>
						</a></li>
					</ul>
				</div>
				<div class="FBRtool" id="FBRmine">
					<h2 id="FBRmineh2" class="h2">我的浏览记录 <a href="">更多>></a></h2>
					<ul class="FBRnewul" id="FBRmineul">
						<li><a href="">
							<span class="FBRnewulname">华庭国际广场</span>
							<span class="FBRnewulprice">待定</span>
							<span class="FBRnewuladd">新华区</span>
						</a></li>
						<li><a href="">                                      
							<span class="FBRnewulname">江南鸿郡</span>
							<span class="FBRnewulprice">待定</span>
							<span class="FBRnewuladd">桥西区</span>
						</a></li>
						<li><a href="">
							<span class="FBRnewulname"> 国际城四期</span>
							<span class="FBRnewulprice">3188元/㎡</span>
							<span class="FBRnewuladd">裕华区</span>
						</a></li>
						<li><a href="">
							<span class="FBRnewulname">祥云国际</span>
							<span class="FBRnewulprice">3980元/㎡</span>
							<span class="FBRnewuladd">鹿泉市</span>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="/WEB-INF/jsps/public/foot.jsp" %>
</div>
</body>
</html>
