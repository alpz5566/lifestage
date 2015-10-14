<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
						<span class="fcsybx">不限</span>
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
					<div class="fcsychoose">
						<span class="fcsysort">售&nbsp &nbsp价</span> 
						<span class="fcsybx">不限</span>
						<span class="fcsya">        
							<a class="fcsyafirst" href="">4000元以下</a>
							<a class="fcsyaother" href="">4000-5000元</a>
							<a class="fcsyaother" href="">5000-6000元 </a>
							<a class="fcsyaother" href=""> 6000-8000元</a>
							<a class="fcsyaother" href="">8000-10000元</a>
							<a class="fcsyaother" href="">10000元以上</a>
						</span>
					</div>
					<div class="fcsychoose">
						<span class="fcsysort">项目类型</span>
						<span class="fcsybx">不限</span>					
						<span class="fcsya">                     
							<a class="fcsyafirst" href="">住宅</a>
							<a class="fcsyaother" href="">城市综合体</a>
							<a class="fcsyaother" href=""> 商铺</a>
							<a class="fcsyaother" href="">写字楼</a>
							<a class="fcsyaother" href="">公寓</a>
							<a class="fcsyaother" href="">别墅</a>
							<a class="fcsyaother" href="">花园洋房</a>
							<a class="fcsyaother" href="">酒店</a>
							<a class="fcsyaother" href="">工厂</a>
						</span>
					 </div>
					<div class="fcsychoose" id="fcsyjzts">
						<span class="fcsysort">建筑特色</span>
						<span class="fcsybx">不限</span>
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
						<span class="fcsybx">不限</span>
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
		<div class="fcsybottom">
			<div class="fcsyBLeft">
				<div class="fcsyBLmain" id="fcsyBLTop">
					<h1 class="fcsyBLh1">最新楼盘</h1>
					<ul class="fcsyBLul" id="fcsyBLul1">
						<li id="fcsyBLlifrist">
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcsyadpic.gif" alt="翡翠珑湾" /></a>
							<p>众安翡翠珑湾</p>
							<p>热线：<span class="red">0736-7788988</span></p>
							<a class="dianji" href="">[点击详情]</a>
						</li>
						<li>
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcsyadpic.gif" alt="翡翠珑湾" /></a>
							<p>众安翡翠珑湾</p>
							<p>热线：<span class="red">0736-7788988</span></p>
							<a class="dianji" href="">[点击详情]</a>
						</li>
						<li>
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcsyadpic.gif" alt="翡翠珑湾" /></a>
							<p>众安翡翠珑湾</p>
							<p>热线：<span class="red">0736-7788988</span></p>
							<a class="dianji" href="">[点击详情]</a>
						</li>
						<li>
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcsyadpic.gif" alt="翡翠珑湾" /></a>
							<p>众安翡翠珑湾</p>
							<p>热线：<span class="red">0736-7788988</span></p>
							<a class="dianji" href="">[点击详情]</a>
						</li>
					</ul>
					<ul class="fcsyBLul" id="fcsyBLul2">
						<li id="fcsyBLlifrist">
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcsyadpic.gif" alt="翡翠珑湾" /></a>
							<p>众安翡翠珑湾</p>
							<p>热线：<span class="red">0736-7788988</span></p>
							<a class="dianji" href="">[点击详情]</a>
						</li>
						<li>
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcsyadpic.gif" alt="翡翠珑湾" /></a>
							<p>众安翡翠珑湾</p>
							<p>热线：<span class="red">0736-7788988</span></p>
							<a class="dianji" href="">[点击详情]</a>
						</li>
						<li>
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcsyadpic.gif" alt="翡翠珑湾" /></a>
							<p>众安翡翠珑湾</p>
							<p>热线：<span class="red">0736-7788988</span></p>
							<a class="dianji" href="">[点击详情]</a>
						</li>
						<li>
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcsyadpic.gif" alt="翡翠珑湾" /></a>
							<p>众安翡翠珑湾</p>
							<p>热线：<span class="red">0736-7788988</span></p>
							<a class="dianji" href="">[点击详情]</a>
						</li>
					</ul>
				</div>
				<div class="fcsyBLmain" id="fcsyBLBottom">
					<h1 class="fcsyBLh1">网友推荐</h1>
						<ul class="fcsyBLul" id="fcsyBLul1">
						<li id="fcsyBLlifrist">
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcsyadpic.gif" alt="翡翠珑湾" /></a>
							<p>众安翡翠珑湾</p>
							<p>热线：<span class="red">0736-7788988</span></p>
							<a class="dianji" href="">[点击详情]</a>
						</li>
						<li>
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcsyadpic.gif" alt="翡翠珑湾" /></a>
							<p>众安翡翠珑湾</p>
							<p>热线：<span class="red">0736-7788988</span></p>
							<a class="dianji" href="">[点击详情]</a>
						</li>
						<li>
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcsyadpic.gif" alt="翡翠珑湾" /></a>
							<p>众安翡翠珑湾</p>
							<p>热线：<span class="red">0736-7788988</span></p>
							<a class="dianji" href="">[点击详情]</a>
						</li>
						<li>
							<a href=""><img src="${pageContext.request.contextPath}/public/images/fcsyadpic.gif" alt="翡翠珑湾" /></a>
							<p>众安翡翠珑湾</p>
							<p>热线：<span class="red">0736-7788988</span></p>
							<a class="dianji" href="">[点击详情]</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="fcsyBRight">
				<div class="fcsyBRmain" id="fcsyBRTop">
					<h2 class="fcsyBRMh2">房屋出租</h2>
					<a class="fcsyBRMore" href="#">更多</a>
					<ul class="fcsyBRul">
						<li><a href="">本人在市中心八月楼商业区有一仓库出</a></li>
						<li><a href="">八月楼房子（新一佳后面）新房粗装</a></li>
						<li><a href="">乾州小溪桥田家园房屋出租  </a></li>
						<li><a href="">武陵西路二室一厅房屋出租</a></li>
						<li><a href="">州工业局三室两厅房屋出租 </a></li>
						<li><a href="">市中心火车站附近单位房实惠招租</a></li>
						<li><a href="">乾州世纪广场附近房屋出租</a></li>
						<li><a href="">武陵西路二室一厅房屋出租</a></li>
						<li><a href="">州工业局三室两厅房屋出租</a></li>
						<li><a href="">市中心火车站附近单位房实惠招租</a></li>
					</ul>
				</div>
				<div class="fcsyBRmain"  id="fcsyBRBottom">
					<h2 class="fcsyBRMh2">房屋出售</h2>		
					<a class="fcsyBRMore" href="#">更多</a>			
					<ul class="fcsyBRul">
						<li><a href="">本人在市中心八月楼商业区有一仓库出</a></li>
						<li><a href="">八月楼房子（新一佳后面）新房粗装</a></li>
						<li><a href="">乾州小溪桥田家园房屋出租  </a></li>
						<li><a href="">武陵西路二室一厅房屋出租</a></li>
						<li><a href="">州工业局三室两厅房屋出租 </a></li>
						<li><a href="">市中心火车站附近单位房实惠招租</a></li>
						<li><a href="">乾州世纪广场附近房屋出租</a></li>
						<li><a href="">武陵西路二室一厅房屋出租</a></li>
						<li><a href="">州工业局三室两厅房屋出租</a></li>
						<li><a href="">市中心火车站附近单位房实惠招租</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsps/public/foot.jsp" %>
</div>
</body>
</html>
