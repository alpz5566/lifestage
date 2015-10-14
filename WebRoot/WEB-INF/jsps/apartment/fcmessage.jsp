s<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/yh.js"></script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/city.js"></script>
</head>
<body>
<div class="all">
	<div class="fctxtContent" id="fczuContent">
		<div class="fctxtLeft" id="fczuLeft">
				<h1 class="fczuh1" >基本资料<span class="span_color1">*</span><span class="span_color2">号内容为必填项</span></h1>
				<div class="fczuLeftMain">
					<form action="">
					<div class="fczuLMformgq">
						<span class="fczuLMtwo fczuLMstar">供求</span>
						<input type="radio" id="chuzu" name="gongqiu" value="chuzu"/><label for="chuzu">出租</label>
						<input type="radio" id="qiuzu" name="gongqiu" value="uzu"/><label for="qiuzu">求租</label>
					</div>
					<div class="fczuLMform">
						<span class="fczuLMtwo fczuLMstar">标题</span><input class="fczuLMinput fczuLMinputbiaoti" id="fczuinput" type="text"></input>
					</div>
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">小区名称</span><input class="fczuLMinput fczuLMinputname" id="fczuinput" type="text"></input>
					</div>
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">房屋位置</span>
						<div class="fczuLMsort">
							<div class="sort" id="fczuLMsort">请选择</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="fczuLMsortul">
								<li>标 题</li>
								<li>关键字</li>
								<li>图	片</li>
							</ul>
						</div>
						<div class="fczuLMsort">
							<div class="sort" id="fczuLMsort">请选择</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="fczuLMsortul">
								<li>标 题</li>
								<li>关键字</li>
								<li>图	片</li>
							</ul>
						</div>
						<div class="fczuadd">
							<label for="fczuaddinput">地址</label><input type="text" class="fczuLMinput fczuLMinputadd"  id="fczuaddinput"/>
						</div>
					</div>					
					<div class="fczuLMform">
						<span class="fczuLMtwo fczuLMstar">总价</span>
						<input type="text" class="fczuLMinput fczuLMinputzujin"  id="zujin"/><span for="zujin">万</span>
						<input type="text" class="fczuLMinput fczuLMinputzujin yhinput"  id="zm" value="每平方价格"/><span for="zm">/m2</span>
					</div>
					<div class="fczuLMform ">
						<span class="fczuLMfour fczuLMstar">房屋户型</span>
						<input type="text" class="fczuLMinput fczuLMinputzu" id="shi"/><label for="shi">室</label>
						<input type="text" class="fczuLMinput fczuLMinputzu" id="ting"/><label for="ting">厅</label>
						<input type="text" class="fczuLMinput fczuLMinputzu" id="wei"/><label for="wei">卫</label>
					</div>
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">房屋面积</span>
						<input type="text" class="fczuLMinput fczuLMinputzu"  id="m"/><label for="m">/m2</label>
						<span class="fczuLMzx">套内面积</span>
						<input type="text" class="fczuLMinput fczuLMinputzu"  id="tm"/><label for="tm">/m2</label>
					</div>
					<div class="fczuLMform">
						<span class="fczuLMtwo fczuLMstar">产权</span>
						<div class="fczuLMsort">
							<div class="sort" id="fczuLMsort">请选择</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="fczuLMsortul">
								<li>标 题</li>
								<li>关键字</li>
								<li>图	片</li>
							</ul>
						</div>
						<span class="fczuLMzx ">建成年代</span>
						<div class="fczuLMsort">
							<div class="sort" id="fczuLMsort">请选择</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="fczuLMsortul">
								<li>标 题</li>
								<li>关键字</li>
								<li>图	片</li>
							</ul>
						</div>
					</div>
					<div class="fczuLMform">
						<span class="fczuLMtwo fczuLMstar">类型</span>
						<div class="fczuLMsort">
							<div class="sort" id="fczuLMsort">请选择</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="fczuLMsortul">
								<li>标 题</li>
								<li>关键字</li>
								<li>图	片</li>
							</ul>
						</div>
						<span class="fczuLMzx ">装修情况</span>
						<div class="fczuLMsort">
							<div class="sort" id="fczuLMsort">请选择</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="fczuLMsortul">
								<li>标 题</li>
								<li>关键字</li>
								<li>图	片</li>
							</ul>
						</div>
					</div>
					<div class="fczuLMform">
						<span class="fczuLMtwo fczuLMstar">楼层</span>
						<input type="text" class="fczuLMinput fczuLMinputzu"  id="louc"/><label for="louc">层</label>
						<label for="louc">共</label><input type="text" class="fczuLMinput fczuLMinputzu"  id="louc1"/><label for="louc">层</label>
					</div>
					<div class="fczuLMform fczuLMformtxt">
						<span class="fczuLMtext">房屋描述</span>
						<textarea class="gangwei"></textarea>
					</div>
					<div class="fczuLMform">
						<span class="fczuLMfour">周边建筑</span>
						<input class="fczuLMinput fczuLMinputzu" type="text"></input>
						<input class="fczuLMinput fczuLMinputzu" type="text"></input>
						<input class="fczuLMinput fczuLMinputzu" type="text"></input>
						<input class="fczuLMinput fczuLMinputzu" type="text"></input>
					</div>
					<div class="fczuLMform mapC">
						<span class="fczuLMfour mapAdd">地理位置</span>
						<div id="container"></div>
						<div id="map_container" class="mapContainer"></div>
						<div class="baocun"><input class="fczuLMformsave " type="button" value="" name="baocun" /></div>
					</div>					
					<div class="fczuLMform">
						<span class="fczuLMfour">房屋图片</span>
						<div class="fczuLMformfile">
						<input type="text" name="textfile" id="textfile" class="picMinput yhinput" value="每张最大500KB,支持jpg/gif/png格式"/>
						<input id="txfile" class="pictxfile" type="file" name="file" onchange="document.getElementById('textfile').value=this.value"/>
						</div>
					</div>
					<div class="fczuLMimg">
						<img src="${pageContext.request.contextPath}/public/images/school_photo4.png" alt=""/>
						<img class="" src="${pageContext.request.contextPath}/public/images/school_photo5.png" alt=""/>
						<img class="" src="${pageContext.request.contextPath}/public/images/school_photo6.png" alt=""/>
					</div>
				<input class="next" type="submit" value=" "></input>
				</form>
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
	<%@ include file="/WEB-INF/jsps/public/foot.jsp" %>
</div>
</body>
</html>
<script type="text/javascript">
	/*<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"> 百度地图接口  V= 2.0需要密钥
city.js  调取城市的JS方法   

*/
// 新创建地图
var map = new BMap.Map("map_container");
var point = new BMap.Point(116.331398,39.897445);
map.centerAndZoom(point, 12);   //创建第一次显示的地图  POINT ：  坐标      12： 地图的显示级别 
    map.addControl(new BMap.NavigationControl()); //开启伸缩控制  http://developer.baidu.com/map/jsdevelop-3.htm 
    map.enableScrollWheelZoom();
    //启动鼠标滚轮操作
    map.enableKeyboard();
    //键盘控制开启.默认都是不开启的
    map.enableContinuousZoom();    // 开启连续缩放效果
    map.enableInertialDragging();　// 开启惯性拖拽效果

var cityList = new BMapLib.CityList({   //初始化类 BMapLib 是在MAP下的Lib类
    container: 'container',
    map: map
});
    
cityList.addEventListener('cityclick', function(b){
    //console.log(b);
    var marker = new BMap.Marker(b.geo);  // 创建标注
    map.clearOverlays();                  //清除已有的标注
    map.addOverlay(marker);              // 将标注添加到地图中
    var label = new BMap.Label("请拖动红色箭头到您公司所在位置",{offset:new BMap.Size(20,-10)});
    marker.setLabel(label);
    marker.enableDragging();    //标注可拖拽
    marker.addEventListener("dragend", function showInfo(){//移动标注获取当前经纬度的数值
    	var p = marker.getPosition();                       //获取当前的标注信息
    	//alert("marker的位置是" + p.lng + "," + p.lat); 
    	
    	//把  P  保存到数据库
    	
    	
        $(".baocun").toggle(
            function () {
            marker.disableDragging();
        },
        function () {
            marker.enableDragging();    //标注可拖拽
  }
);
        
        
    });
 });
</script>