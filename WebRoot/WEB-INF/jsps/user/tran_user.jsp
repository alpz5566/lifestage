<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>生活驿站</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Language" content="zh-CN" />
	<link rel="stylesheet" href="css/basic.css" type="text/css" />
	<link rel="stylesheet" href="css/fcbasic.css" type="text/css" />
	<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="js/basic.js"></script>
	<script type="text/javascript" src="js/yh.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/city.js"></script>
	<%@ include file="/WEB-INF/jsps/public/head.jsp" %>
</head>
<body>
	<div class="fctxtContent" id="trainUserContent">
		<div class="fctxtLeft" id="trainUserLeft">
				<h1 class="fczuh1" >基本资料<span class="span_color1">*</span><span class="span_color2">号内容为必填项</span></h1>
				<div class="fczuLeftMain trainUserMain">
					<form action="">
					<div class="fczuLMform">
						<span class="carUser fczuLMstar" >名称</span><input class="fczuLMinput fczuLMinputcarname" id="fczuinput" type="text"></input>
					</div>
					<div class="fczuLMform">
						<span class="carUser fczuLMstar">价格</span><input class="fczuLMinput fczuLMinputcarname" id="fczuinput" type="text"></input>
					</div>
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">学校规模</span>
						<div class="fczuLMsort carUserMoney">
							<div class="sort carUserMoneysort" id="fczuLMsort">0-10人</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="carUserMoneysortul">
								<li>10-50人</li>
								<li>50-100人</li>
								<li>100人以上</li>
							</ul>
						</div>
					</div>				
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">招聘职位</span>
						<div class="fczuLMsort trainUserDiv">
							<div class="sort  trainUsersort" id="fczuLMsort">请选择</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="trainUserDivul">
								<li>经	理</li>
								<li>文	员</li>
								<li>主	管</li>
							</ul>
						</div>
					</div>							
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">招聘人数</span>
						<div class="fczuLMsort trainUserDiv">
							<div class="sort  trainUsersort" id="fczuLMsort">请选择</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="trainUserDivul">
								<li>1人</li>
								<li>2人</li>
								<li>3人</li>
							</ul>
						</div>
					</div>								
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">学历要求</span>
						<div class="fczuLMsort trainUserDiv">
							<div class="sort  trainUsersort" id="fczuLMsort">请选择</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="trainUserDivul">
								<li>不限</li>
								<li>本科</li>
								<li>专科</li>
								<li>硕士</li>
							</ul>
						</div>
					</div>				
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">工作年限</span>
						<div class="fczuLMsort carUserMoney">
							<div class="sort  carUserMoneysort">请选择</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="carUserMoneysortul">
								<li>不限</li>
								<li>1-3年</li>
								<li>3-5年</li>
							</ul>
						</div>
					</div>								
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">薪资待遇</span>
						<div class="fczuLMsort trainUserDiv">
							<div class="sort  trainUsersort">请选择</div>
							<div class="sortclick" id="fczuLMsortclick"></div>
							<ul class="sortul" id="trainUserDivul">
								<li>不限</li>
								<li>1000-3000元</li>
								<li>3000-5000元</li>
								<li>5000元以上</li>
							</ul>
						</div>
					</div>		
					<div class="fczuLMform traingangweitxt">
						<span class="fczuLMtext traingangweiText">岗位描述</span>
						<textarea class="gangwei traingangwei"></textarea>
					</div>
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">联系电话</span><input class="fczuLMinput fczuLMinputcartouch" id="fczuinput" type="text"></input>
					</div>		
					<div class="fczuLMform">
						<span class="fczuLMfour fczuLMstar">联系地址</span><input class="fczuLMinput fczuLMinputcaradd" id="fczuinput" type="text"></input>
					</div>					
					<div class="fczuLMform">
						<span class="fczuLMfour">学校网址</span><input class="fczuLMinput fczuLMinputcaradd" id="fczuinput" type="text"></input>
					</div>					
					<div class="fczuLMform mapC">
						<span class="fczuLMfour mapAdd">地理位置</span>
						<div id="container"></div>
						<div id="map_container" class="mapContainer"></div>
						<div class="baocun"><input class="fczuLMformsave " type="button" value="" name="baocun" /></div>
					</div>						
					<div class="fczuLMform">
						<span class="fczuLMfour">学校图片</span>
						<div class="fczuLMformfile">
						<input type="text" name="textfile" id="textfile" class="picMinput"/>
						<input id="txfile" class="pictxfile" type="file" name="file" onchange="document.getElementById('textfile').value=this.value"/>
						</div>
					</div>
					<div class="fczuLMimg">
						<img src="images/school_photo4.png" alt=""/>
						<img class="" src="images/school_photo5.png" alt=""/>
						<img class="" src="images/school_photo6.png" alt=""/>
					</div>
					<div class="fczuLMform trainScooltxt">
						<span class="fczuLMtext trainScoolText">学校介绍</span>
						<textarea class="gangwei trainScool"></textarea>
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