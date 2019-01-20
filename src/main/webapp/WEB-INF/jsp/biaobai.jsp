<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link href="/myBlog/static/css/default.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="/myBlog/static/js/jquery.js"></script>
	<script type="text/javascript" src="/myBlog/static/js/garden.js"></script>
    <script type="text/javascript" src="/myBlog/static/js/functions.js"></script>
  
</head>

<body>
<audio src="/myBlog/static/表白.mp3" controls="controls" hidden="hidden" autoplay="autoplay" loop="loop"></audio>
	<div id="mainDiv" >
		<div id="content">
			<div id="code" style="position:relative;top:-150px">
				<span class="comments">猪猪女孩--刘冰暧</span><br/><br/>
				<span class="space"/><span>首先，请允许我这样叫你，因为从你开始选择那小猪的暖手宝的时候，我给你的备注就"猪猪女孩"</span><br />
				<span class="space"/>不知道你看到我给你做的这个表白网页的第一反映是什么？我其实挺想看到你这时候的表情，哈哈</span><br />
				<span class="comments">/*我是从什么时候开始注意到你的呢？*/</span><br />
				<span class="space"/>应该是看到你每天在朋友圈里面发的英语早餐~<br />
				<span class="space"/>看到你从最开始的几十天，坚持到现在的一百多天，感觉你真的很努力<br />
				<span class="space"/>之后还听你说在自学Python的视频，更加觉得你是个很有上进心的女孩子<br />
				<span class="space"/>也是从那时候起，我就开始慢慢的喜欢上你了<br />
				<span class="comments">/*第一次给你做饭吃*/</span><br />
				<span class="space"/>那天邀请你来我住的地方，第一次尝尝我的手艺，还记得那天你说我的鱼做的挺入味的，那天，我们也一起说了很多话，当时我心里别说有多高兴了<br />
				<span class="comments">/*第一次接你上下班*/</span><br />
				<span class="space"/>接你上下班心里有点紧张，也有些小激动，也许你不会发现，每天下班的时候，我总会故意的把车开的很慢，为的就是能够多跟你待一会，多说几句话<br />
				<span class="comments">/*第一次带便当*/</span><br />
				<span class="space"/>还记得给你带的第一份便当是酸溜白菜，好像你也挺喜欢吃的吧，当时我心想，终于能给你带便当了，真的希望你能够喜欢我做的菜，<br />
				<span class="keyword">如果用程序来表达我对你喜欢<br />
				<span class="space"/>我想说，我对你的喜欢就像是Python里面的while True:循环<br />
				<span class="space"/>从喜欢上你的那一刻，就变成了无限循环，唯有遇到你break才能解开我这个无限循环<br />
				<span class="space"/>刘冰暧，我喜欢你，真的很喜欢你<br />
				<br />
			</div>
			<div id="loveHeart">
				<canvas id="garden"></canvas>
				<div id="words">
					<div id="messages">
						刘冰暧,我喜欢你！
						<div id="elapseClock"></div>
					</div>
					<div id="loveu">
						Love you forever and ever.<br/>
						<div class="signature">- 吴林飞2018.12.26</div>
					</div>
				</div>
			</div>
		</div>
	
	</div>
	<script type="text/javascript">
		var offsetX = $("#loveHeart").width() / 2;
		var offsetY = $("#loveHeart").height() / 2 - 55;
		var together = new Date();
		//together.setFullYear(2010, 10, 2);
		together.setFullYear(2018, 10, 2);
		together.setHours(20);
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
</body>
</html>
