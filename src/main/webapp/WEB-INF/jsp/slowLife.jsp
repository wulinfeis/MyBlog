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


</head>
<body >

<!-- 引入头部 -->
<%@ include file="head.jsp"%>
<div class="pagebg sh"></div>
<div class="container">
  <h1 class="t_nav"><span>好咖啡要和朋友一起品尝，好“模板”也要和同样喜欢它的人一起分享。 </span><a href="index.html" class="n1">网站首页</a><a href="<%=request.getContextPath()%>/slowLife.html?blogType=7" class="n2">慢生活</a></h1>


<div class="share">
<ul>
<c:if test="${isEmptySlow eq 'falses' }">
<c:forEach items="${blogArticleList}" var="blogArticleList">
  <li> 
 	<div class="shareli">
 		<a href="<%=request.getContextPath()%>/info.html?blogId=${blogArticleList.blogId }" target="_blank"> <i><img src="${blogArticleList.blogImg1}"></i>
	      <h2><b>${blogArticleList.blogTitle}</b></h2>
	      <span>喜欢 | ${blogArticleList.blogLikeNumber}</span> 
        </a>
    </div> 
 </li> 
</c:forEach>
</c:if>

<c:if test="${isEmptySlow eq 'trues' }">
	空空如也~
 	博主还没有发布这种类型的文章哦！赶紧去留言催博主发布新文章吧.
</c:if>
 <!-- <li> <div class="shareli"><a href="/" target="_blank"> <i><img src="/myBlog/static/images/toppic02.jpg"></i>
      <h2><b>陌上花开，可缓缓归矣</b></h2>
      <span>喜欢 | 190</span> </a></div> </li>
 <li> <div class="shareli"><a href="/" target="_blank"> <i><img src="/myBlog/static/images/banner01.jpg"></i>
      <h2><b>网页中图片属性固定宽度，如何用js改变大小</b></h2>
      <span>喜欢 | 190</span> </a> </div> </li>
 <li> <div class="shareli"><a href="/" target="_blank"> <i><img src="/myBlog/static/images/text01.jpg"></i>
      <h2><b>个人博客，属于我的小世界！</b></h2>
      <span>喜欢 | 190</span> </a> </div> </li>
 <li> <div class="shareli"><a href="/" target="_blank"> <i><img src="/myBlog/static/images/text02.jpg"></i>
      <h2><b>html5个人博客模板《黑色格调》</b></h2>
      <span>喜欢 | 190</span> </a> </div> </li>
 <li> <div class="shareli"><a href="/" target="_blank"> <i><img src="/myBlog/static/images/banner02.jpg"></i>
      <h2><b>帝国cms 首页或者列表无图，不使用默认图片的方法</b></h2>
      <span>喜欢 | 190</span> </a> </div> </li>
       <li> <div class="shareli"><a href="/" target="_blank"> <i><img src="/myBlog/static/images/text02.jpg"></i>
      <h2><b>十条设计原则教你学会如何设计网页布局!</b></h2>
      <span>喜欢 | 190</span> </a> </div> </li>
 <li> <div class="shareli"><a href="/" target="_blank"> <i><img src="/myBlog/static/images/banner02.jpg"></i>
      <h2><b>html5个人博客模板主题《清雅》</b></h2>
      <span>喜欢 | 190</span> </a> </div> </li> -->
</ul>
</div>

<!-- <div class="pagelist"><a title="Total record">&nbsp;<b>45</b> </a>&nbsp;&nbsp;&nbsp;<b>1</b>&nbsp;<a href="/download/index_2.html">2</a>&nbsp;<a href="/download/index_2.html">下一页</a>&nbsp;<a href="/download/index_2.html">尾页</a></div>
 -->
  <!-- <div class="pagelist">
  <a title="Total record">&nbsp;
  <b>45</b> 
  </a>&nbsp;&nbsp;&nbsp;
  <b>1</b>&nbsp;
  <a href="/download/index_2.html">2</a>&nbsp;
  <a href="/download/index_2.html">下一页</a>&nbsp;
  <a href="/download/index_2.html">尾页</a>
  </div> -->
	
	<!-- 分页时没有文章类型 -->
	<c:if test="${blogArticles.blogType eq null}">
	<div class="pagelist">
	<a title="Total record">&nbsp;<b>${blogArticles.page.totalCount}</b></a>
		<c:if test="${blogArticles.page.currentPage ne 1}">
		<a href="<%=request.getContextPath()%>/slowLife.html?currentPages=${blogArticles.page.currentPage-1}">上一页</a>&nbsp;&nbsp;&nbsp;
		</c:if>
			<c:forEach  begin="${blogArticles.page.currentPage}"  end="${blogArticles.page.totalPage}"  varStatus="i">
	        <c:if test="${blogType eq null}">
	        <a   href="<%=request.getContextPath()%>/slowLife.html?currentPages=${i.index}">${i.index}</a>
	        </c:if>
	        </c:forEach>
		<c:if test="${blogArticles.page.currentPage ne blogArticles.page.totalPage}">
		<a href="<%=request.getContextPath()%>/slowLife.html?currentPages=${blogArticles.page.currentPage+1}">下一页</a>&nbsp;
		</c:if>
	<a href="/download/index_2.html">尾页</a>
	</div>
	</c:if>
	
	<!-- 分页是有文章类型 -->
	<c:if test="${blogArticles.blogType ne null}">
	<div class="pagelist">
	<a href="<%=request.getContextPath()%>/slowLife.html?currentPages=1&blogType=${blogArticles.blogType}">首页</a>
	<a title="Total record">&nbsp;<b>${blogArticles.page.totalCount}</b></a>
		<c:if test="${blogArticles.page.currentPage ne 1}">
		<a href="<%=request.getContextPath()%>/slowLife.html?currentPages=${blogArticles.page.currentPage-1}&blogType=${blogArticles.blogType}">上一页</a>&nbsp;&nbsp;&nbsp;
		</c:if>
			<c:forEach  begin="${blogArticles.page.currentPage}"  end="${blogArticles.page.totalPage}"  varStatus="i">
	        <a   href="<%=request.getContextPath()%>/slowLife.html?currentPages=${i.index}&blogType=${blogArticles.blogType}">${i.index}</a>
	        </c:forEach>
		<c:if test="${blogArticles.page.currentPage ne blogArticles.page.totalPage}">
		<a href="<%=request.getContextPath()%>/slowLife.html?currentPages=${blogArticles.page.currentPage+1}&blogType=${blogArticles.blogType}">下一页</a>&nbsp;
		</c:if>
	<a href="<%=request.getContextPath()%>/slowLife.html?currentPages=${blogArticles.page.totalPage}&blogType=${blogArticles.blogType}">尾页</a>
	</div>
	</c:if>
</div>

<!-- 引入底部 -->
<%@ include file="footer.jsp" %>

</body>
</html>