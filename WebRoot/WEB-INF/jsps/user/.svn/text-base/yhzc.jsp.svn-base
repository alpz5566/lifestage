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
	<link rel="stylesheet" href="css/yhbasic.css" type="text/css" />
	<link rel="stylesheet" href="css/image.css" type="text/css">
	<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="js/basic.js"></script>
	<script type="text/javascript" src="js/yh.js"></script>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/bigshow.js"></script>
	<%@ include file="/WEB-INF/jsps/public/head.jsp" %>
</head>
<body>

<div id="server">
	<h1>《生活驿站服务条款》</h1>
	<p>用户在使用服务过程中，必须遵循以下原则：</p>
	<p>1、遵守中国有关的法律和法规；</p>
	<p>2、遵守所有与网络服务、服务有关的网络协议、规定和程序；</p>
	<p>3、不得为任何非法目的而使用服务系统；</p>
	<p>4、不得以任何形式使用服务侵犯或生活驿站的权利和/或利益；</p>
	<p>5、不得利用服务系统进行任何可能对互联网或移动网正常运转造成不利影响的行为；</p>
	<p>6、不得利用驿站提供的服务上传、展示或传播任何虚假的、骚扰性的、中伤他人的、种族歧视性的、辱骂性的、恐吓性的、成人情色的或</p>
	<p class="server_p">其他任何非法的信息资料；</p>
	<p>7、不得以任何方式侵犯其他任何人依法享有的专利权、著作权、商标权、名誉权或其他任何合法权益；</p>
	<p>8、不得利用服务系统进行任何不利于或公司的行为；</p>
	<p>9、公司有权对用户使用服务的情况进行审查和监督(包括但不限于对用户存储在平台的内容进行审核)，如用户在使用服务时违反任何上述规</p>
	<p class="server_p">定，公司或其授权的主体有权要求用户改正或直接采取一切必要的措施（包括但不限于更改或删除用户张贴的内容等、暂停或终止用户使</p><p class="server_p">用服务的权利）以消除或减轻用户不当行为造成的影响，公司在进行前述操作前，操作过程中或操作完成后将尽可能对用户进行通知。</p>
	<p>10、公司针对某些特定的服务的使用通过各种方式（包括但不限于网页公告、系统通知、私信、短信提醒等）作出的任何声明、通知、警示等</p><p class="server_p">内容视为本协议的一部分，用户如使用该等服务，视为用户同意该等声明、通知、警示的内容。</p>
	<p>11、用户在使用服务的过程中应文明发言，并依法尊重其它用户的人格权与个人隐私，共同建立和谐、文明、礼貌的网络社交环境。</p>
	<p>12、如用户在使用服务的过程中遇到其它用户上传违法、侵权、侮辱、诽谤等内容，可直接点击"举报"按键进行举报，相关人员会尽快核实并</p><p class="server_p">进行处理。如用户认为所举报的内容侵犯了用户合法权利，请用户尽快向司法机关寻求帮助，公司将依法配合司法机关的调查取证工作。</p>
</div>
<div class="yhContent" id="yhContentzc">
	<div class="yhLeft" id="yhLeftzc">
		<p class="hyzc">欢迎注册</p>
		<form action="">
			<ul class="yhLeftul">   
				<li class="yhlistar"><input class="yhinput" id="yhname" type="text" value="会 员 名："/><span class="yhbeizhu">5-20字（A-Z,a-z,0-9,下划线）</span></li>
				<li class="yhlistar"><label class="yhpass" for="yhpassword">密 码:</label><input class="yhinput" id="yhpassword" type="password" name=" 密 码: "/><span class="yhbeizhu">6-20字，不能与账号相同</span></li>
				<li class="yhlistar"><label class="yhpass" for="yhenterpass">确认密码：</label><input class="yhinput" id="yhenterpass" type="password" name="确认密码："/></li>
				<li class="yhlistar"><input class="yhinput" id="yhemail" type="text" value="注册邮箱："/></li>
				<li><input class="yhinput" id="yhphone" type="text" value="手机号码: " /></li>
				<li class="yhlistar"><input class="yhinput" id="yhcode" type="text" value=" 验证码："/><img class="yhcodeimg" src="images/yhcode.gif" alt="" /></li>
			</ul>
			<p class="yhcheckp">
				<input id="check" class="yhCheckbox" type="checkbox" value=""/>
				<label for="check" class="yhlabel">同意<a href="#" id="photoblock-many">"服务条款"</a>和<a href="">"隐私权相关政策"</a></label>
			</p>
			<input class="yhsubmit" type="submit" value="" />
		</form>
	</div>
	<div class="yhRight"  id="yhRightzc">
		<div class="yhrightSub">
			<input class="yhqqenter" type="submit" value="" />
			<input class="yhweiboenter" type="submit" value="" />
		</div>
			<p class="yhrightp" id="yhenter">已有帐号 <a href="yhenter.html">直接登录>></a></p>
			<p class="yhrightp"> <a href="yhwj.html">忘记密码？</a></p>
			<p class="yhtishi">温馨提示：建议用户输入手机号码便于账号找回</p>
	</div>
</div>
<%@ include file="/WEB-INF/jsps/public/foot.jsp" %>

</body>
</html>