<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Our Love Story</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<style type="text/css">
		@font-face {
			font-family: digit;
			src: url('digital-7_mono.ttf') format("truetype");
		}
	</style>
	<link href="${ctx}/ui/oldboy/index/css/default.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="${ctx}/ui/oldboy/index/js/jquery.js"></script>
	<script type="text/javascript" src="${ctx}/ui/oldboy/index/js/garden.js"></script>
    <script type="text/javascript" src="${ctx}/ui/oldboy/index/js/functions.js"></script>
	
	<script type="text/javascript" src="${ctx}/ui/oldboy/index/js/jq.snow.js"></script>
</head> 

<body>
<!--下面是调用方法和参数说明-->
	<script>
	$(function(){
		$.fn.snow({ 
			minSize: 5,		//雪花的最小尺寸
			maxSize: 50, 	//雪花的最大尺寸
			newOn: 150		//雪花出现的频率 这个数值越小雪花越多
		});
	});
	</script>
	<div id="mainDiv">
		<div id="content">
			<div id="code">
				<span class="comments">/**</span><br />
        <span class="space"/><span class="comments">* 我听见雨滴落在青青草地</span><br />
        <span class="space"/><span class="comments">* 我听见远方下课钟声响起 </span><br />
        <span class="space"/><span class="comments">* 可是我没有听见你的声音 </span><br />
        <span class="space"/><span class="comments">* 认真 呼唤我姓名</span><br />
				<span class="space"/><span class="comments">*/</span><br />
				Girl u = <span class="keyword">new</span> Girl(<span class="string">"Abby"</span>);<br/>
				Boy i = <span class="keyword">new</span> Boy(<span class="string">"Mark"</span>);<br />
				<span class="comments">// 爱上你的时候还不懂感情 </span><br />
				<span class="comments">// 离别了才觉得刻骨铭心</span><br />
				<span class="comments">// 为什么没有发现遇见了你</span><br />
        <span class="comments">// 是生命最好的事情</span><br />
				<span class="comments">// 也许当时忙着微笑和哭泣</span><br />
				<span class="comments">// 忙着追逐天空中的流星搜索</span><br />
        <span class="comments">// 人理所当然的忘记 </span><br />
				<span class="comments">// 是谁风里雨里一直默默守护在原地 </span><br />
        <span class="comments">//  </span><br />
				原来你是我最想留住的幸运<br />
				<span class="comments">//原来我们和爱情曾经靠得那么近</span><br />
				那为我对抗世界的决定<br />
				<span class="comments">// 那陪我淋的雨 </span><br />
				一幕幕都是你 一尘不染的真心 <br />
				<span class="comments">// 与你相遇 好幸运</span><br />
				<span class="comments">// 可我已失去为你泪流满面的权利</span><br />
				<span class="keyword">我会</span> 永远  <span class="keyword">爱你</span>;<br />
				<span class="keyword">一直</span> 爱你 <br />
				<span class="placeholder"/>但愿在我看不到的天际<br />
				<span class="placeholder"/><span class="comments">// 你张开了双翼</span><br />
				<span class="placeholder"/><span class="comments">// 遇见你的注定</span><br />
				<span class="placeholder"/>她会有多幸运搜索<br /><br />
				我非常高兴能认识你<br />
			</div>
			<div id="loveHeart">
				<canvas id="garden"></canvas>
				<div id="words">
					<div id="messages">
						        Abby,我已经相爱了：
						<div id="elapseClock"></div>
					</div>
					<div id="loveu">
						<div class="signature">--Mark</div>
					</div>
				</div>
			</div>
		</div>
		<div id="copyright">
			 <a href='http://bbs.ttasp.com'>模版来自网络</a> &nbsp;2017
		</div>
	</div>
	<script type="text/javascript">
		var offsetX = $("#loveHeart").width() / 2;
		var offsetY = $("#loveHeart").height() / 2 - 55;
		var together = new Date();
		together.setFullYear(2010, 06, -32);
		together.setHours(00);
		together.setMinutes(0);
		together.setSeconds(0);
		together.setMilliseconds(0);
		
		if (!document.createElement('canvas').getContext) {
			var msg = document.createElement("div");
			msg.id = "errorMsg";
			msg.innerHTML = "Your browser doesn't support HTML5!<br/>Recommend use Chrome 14+/IE 9+/Firefox 7+/Safari 4+"; 
			document.body.appendChild(msg);
			$("#code").css("display", "none")
			$("#copyright").css("position", "absolute");
			$("#copyright").css("bottom", "10px");
		    document.execCommand("stop");
		} else {
			setTimeout(function () {
				startHeartAnimation();
			}, 5000);

			timeElapse(together);
			setInterval(function () {
				timeElapse(together);
			}, 500);

			adjustCodePosition();
			$("#code").typewriter();
		}
	</script>
	<embed src="${ctx}/ui/oldboy/index/http://sisiyan.sinaapp.com/Love.mp3" autostart="true" loop="true" hidden="true"></embed>
</body>
</html>
