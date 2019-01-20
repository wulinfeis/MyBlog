<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>代码君博客</title>

<script src="/static/js/jquery.min.js"></script>
<style type="text/css">
.input {
	width: 100px;
	height: 24px;
	border: none;
	border-bottom: 2px solid #FFFFFF;
	background: rgba(0, 0, 0, 0);
	padding: 2px 0 0 2px;
}

.inputd {
	width: 230px;
	height: 24px;
	border: none;
	border-bottom: 2px solid #FFFFFF;
	background: rgba(0, 0, 0, 0);
	padding: 2px 0 0 2px;
}

.inputs {
	width: 350px;
	height: 200px;
	line-height: 33px;
	font-size: 17px;
	font-family: Arial, Helvetica, sans-serif;
	background: url() no-repeat center bottom;
	border: none;
	padding: 2px 0 0 2px;
}

#div1 {
	margin-top: 100px;
	width: 350px;
	border-bottom: 2px solid #FFFFFF;
	position: relative;
	top: -269px
}

#div2 {
	margin-top: 100px;
	width: 350px;
	border-bottom: 2px solid #FFFFFF;
	position: relative;
	top: -336px
}

#div3 {
	margin-top: 100px;
	width: 350px;
	border-bottom: 2px solid #FFFFFF;
	position: relative;
	top: -405px
}

#div4 {
	margin-top: 100px;
	width: 350px;
	border-bottom: 2px solid #FFFFFF;
	position: relative;
	top: -474px
}

.font_title {
	color: white;
	position: relative;
	left: 370px;
	font-size: 30px;
}

#login_click {
	margin-top: 32px;
	height: 70px;
	width: 200px;
}

#login_click input {
	text-decoration: none;
	background: #2f435e;
	color: #f2f2f2;
	padding: 10px 30px 10px 30px;
	font-size: 16px;
	font-family: 微软雅黑, 宋体, Arial, Helvetica, Verdana, sans-serif;
	font-weight: bold;
	border-radius: 3px;
	-webkit-transition: all linear 0.30s;
	-moz-transition: all linear 0.30s;
	transition: all linear 0.30s;
}

#login_click input:hover {
	background: #385f9e;
}
</style>
</head>
<body class="user-select">

	<!-- 引入头部 -->
	<%@ include file="head.jsp"%>
	<div class="pagebg sh"></div>
	<div class="container">
		<h1 class="t_nav">
			<span>你，我生命中一个重要的过客，我们之所以是过客，因为你未曾会为我停留。 </span><a href="index.html" class="n1">网站首页</a><a
				href="/" class="n2">留言</a>
		</h1>

		<!--高速版-->
		<div id="SOHUCS" sid="请将此处替换为配置SourceID的语句"></div>
	</div>
	<script charset="utf-8" type="text/javascript"
		src="http://changyan.sohu.com/upload/changyan.js"></script>
	<script type="text/javascript">
		window.changyan.api.config({
			appid : 'cytXbIg8J',
			conf : 'prod_003a597ba18017606ed1e6a57217d6df'
		});
	</script>

	<!-- 引入底部 -->
	<%@ include file="footer.jsp"%>

</body>
</html>