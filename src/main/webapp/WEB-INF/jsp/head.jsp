<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>代码君的博客</title>
<link href="/myBlog/static/css/base.css" rel="stylesheet">
<link href="/myBlog/static/css/index.css" rel="stylesheet">
<link href="/myBlog/static/css/m.css" rel="stylesheet">
<link rel="shortcut icon"  href="/myBlog/static/images/logo2.ico" type="image/x-icon" />
<script src="/myBlog/static/js/jquery.min.js" type="text/javascript"></script>
<script src="/myBlog/static/js/jquery.easyfader.min.js"></script>
<script src="/myBlog/static/js/scrollReveal.js"></script>
<script src="/myBlog/static/js/common.js"></script>
<script src="/myBlog/static/js/scrollReveal.js"></script>
<script src="/myBlog/static/js/page.js"></script>

<c:set var="path" value="<%=request.getContextPath()%>" />
<script type="text/javascript">
var path = "${path}";

</script>
</head>
<body>
<header> 
  <!--menu begin-->
  <div class="menu">
    <nav class="nav" id="topnav">
      <h1 class="logo"><a href="http://www.wulinfei.cn/myBlog/index.html">代码君的博客</a></h1>
      <li><a href="index.html">网站首页</a> </li>
      <li><a href="abouts.html">关于我</a> </li>
      <li><a href="<%=request.getContextPath()%>/index.html?blogType=1">Java知识</a>
        <!-- <ul class="sub-nav">
          <li><a href="share.html">个人博客模板</a></li>
          <li><a href="share.html">国外Html5模板</a></li>
          <li><a href="share.html">企业网站模板</a></li>
        </ul> -->
      </li>
      <li><a href="<%=request.getContextPath()%>/index.html?blogType=6">学无止境</a>
        <ul class="sub-nav">
         <!--  <li><a href="list.html">心得笔记</a></li> -->
          <li><a href="<%=request.getContextPath()%>/index.html?blogType=4">前端技术</a></li>
          <li><a href="<%=request.getContextPath()%>/index.html?blogType=5">数据库</a></li>
          <li><a href="<%=request.getContextPath()%>/index.html?blogType=6">linux</a></li>
          <li><a href="<%=request.getContextPath()%>/index.html?blogType=1">java知识</a></li>
        </ul>
      </li>
      <li><a href="<%=request.getContextPath()%>/slowLife.html?blogType=7">慢生活</a>
        <ul class="sub-nav">
          <li><a href="<%=request.getContextPath()%>/slowLife.html?blogType=11">日记</a></li>
         <!--  <li><a href="life.html">欣赏</a></li> -->
          <li><a href="<%=request.getContextPath()%>/slowLife.html?blogType=7">程序人生</a></li>
         <!--  <li><a href="life.html">经典语录</a></li> -->
        </ul>
      </li>
      <li><a href="timeShaft.html">时间轴</a> </li>
      <li><a href="leaveword.html">留言</a> </li>
      <!--search begin-->
   <!--    <div id="search_bar" class="search_bar">
        <form  id="searchform" action="[!--news.url--]e/search/index.php" method="post" name="searchform">
          <input class="input" placeholder="想搜点什么呢..." type="text" name="keyboard" id="keyboard">
          <input type="hidden" name="show" value="title" />
          <input type="hidden" name="tempid" value="1" />
          <input type="hidden" name="tbname" value="news">
          <input type="hidden" name="Submit" value="搜索" />
          <span class="search_ico"></span>
        </form>
      </div> -->
      <!--search end--> 
    </nav>
  </div>
  <!--menu end--> 
  <!--mnav begin-->
  <div id="mnav">
    <h2><a href="http://www.yangqq.com" class="mlogo">代码君博客</a><span class="navicon"></span></h2>
    <dl class="list_dl">
      <dt class="list_dt"> <a href="index.html">网站首页</a> </dt>
      <dt class="list_dt"> <a href="abouts.html">关于我</a> </dt>
      <dt class="list_dt"> <a href="<%=request.getContextPath()%>/index.html?blogType=1">java知识</a> </dt>
      <dd class="list_dd">
        <!-- <ul>
          <li><a href="share.html">个人博客模板</a></li>
          <li><a href="share.html">国外Html5模板</a></li>
          <li><a href="share.html">企业网站模板</a></li>
        </ul> -->
      </dd>
      <dt class="list_dt"> <a href="<%=request.getContextPath()%>/index.html?blogType=6">学无止境</a> </dt>
      <dd class="list_dd">
        <ul>
         <li><a href="<%=request.getContextPath()%>/index.html?blogType=4">前端技术</a></li>
          <li><a href="<%=request.getContextPath()%>/index.html?blogType=5">数据库</a></li>
          <li><a href="<%=request.getContextPath()%>/index.html?blogType=6">linux</a></li>
          <li><a href="<%=request.getContextPath()%>/index.html?blogType=1">java知识</a></li>
        </ul>
      </dd>
      <dt class="list_dt"> <a href="<%=request.getContextPath()%>/slowLife.html?blogType=7">慢生活</a> </dt>
      <dd class="list_dd">
        <ul>
          <li><a href="<%=request.getContextPath()%>/slowLife.html?blogType=11">日记</a></li>
          <!-- <li><a href="life.html">欣赏</a></li> -->
          <li><a href="<%=request.getContextPath()%>/slowLife.html?blogType=7">程序人生</a></li>
          <!-- <li><a href="life.html">经典语录</a></li> -->
        </ul>
      </dd>
      <dt class="list_dt"> <a href="timeShaft.html">时间轴</a> </dt>
      <dt class="list_dt"> <a href="leaveword.html">留言</a> </dt>
    </dl>
  </div>
  <!--mnav end--> 
</header>

</body>
</html>