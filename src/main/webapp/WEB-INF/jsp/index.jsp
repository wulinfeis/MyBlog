<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>代码君的个人博客网站</title>
<meta name="baidu_union_verify" content="cc458fdee0c9f9110ca998b45f15e422">
</head>
<body>
<%@include file="head.jsp" %>
<article> 
  <!--banner begin-->
  <c:if test="${removeImg != '1' }">
	 <div class="picsbox"> 
	  <div class="banner">
	    <div id="banner" class="fader">
	      <li class="slide" ><a href="<%=request.getContextPath()%>/info.html?blogId=12" target="_blank"><img src="/myBlog/static/images/blog/timg.gif"><span class="imginfo">linux中打开txt文件乱码，windows显示正常</span></a></li>
	      <li class="slide" ><a href="<%=request.getContextPath()%>/info.html?blogId=1" target="_blank"><img src="/myBlog/static/images/blog/girl.jpg"><span class="imginfo">只是，以后再也不会轻易的喜欢上一个人了.</span></a></li>
	      <li class="slide" ><a href="<%=request.getContextPath()%>/info.html?blogId=10" target="_blank"><img src="/myBlog/static/images/blog/timg3.jpg"><span class="imginfo">java中 String... 和 instanceof关键字的使用</span></a></li>
	      <div class="fader_controls">
	        <div class="page prev" data-target="prev">&lsaquo;</div>
	        <div class="page next" data-target="next">&rsaquo;</div>
	        <ul class="pager_list">
	        </ul>
	      </div>
	    </div>
	  </div>
	  <!--banner end-->
	  <div class="toppic">
	    <li> <a href="<%=request.getContextPath()%>/info.html?blogId=13" target="_blank"> <i><img src="/myBlog/static/images/blog/timg4.jpg"></i>
	      <h2>两行命令，轻松解决8080端口被占用问题</h2>
	      <span>学无止境</span> </a> </li>
	    <li> <a href="<%=request.getContextPath()%>/info.html?blogId=15" target="_blank"> <i><img src="/myBlog/static/images/zd01.jpg"></i>
	      <h2>阿里云服务器通过ip无法访问</h2>
	      <span>学无止境</span> </a> </li>
	  </div>
	  </div>
  </c:if>
  
  <div class="blank"></div>
  <!--blogsbox begin-->
  <div class="blogsbox">
  <c:if test="${isEmpty eq 'falses' }">
  <c:forEach items="${blogArticleList}" var="blogArticleList">
  	<c:if test="${blogArticleList.blogOtherType eq '1' }">
  	<!-- 单图文章 -->
    <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
      <h3 class="blogtitle"><a href="<%=request.getContextPath()%>/info.html?blogId=${blogArticleList.blogId }" target="_blank">${blogArticleList.blogTitle }</a></h3>
      <span class="blogpic"><a href="/" title=""><img src="${blogArticleList.blogImg1}" alt=""></a></span>
     <!--  <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！... </p> -->
      <p class="blogtext">${blogArticleList.blogAritcleInstroduction}</p>
      <div class="bloginfo">
        <ul>
          <li class="author"><a href="/">代码君</a></li>
          <li class="lmname"><a href="/">
			<c:if test="${blogArticleList.blogType eq '1' }">java</c:if>
            <c:if test="${blogArticleList.blogType eq '2' }">学无止境</c:if>
            <c:if test="${blogArticleList.blogType eq '3' }">慢生活</c:if>
            <c:if test="${blogArticleList.blogType eq '4' }">前端</c:if>
            <c:if test="${blogArticleList.blogType eq '5' }">数据库</c:if>
            <c:if test="${blogArticleList.blogType eq '6' }">linux</c:if>
		  </a></li>
          <li class="timer">${blogArticleList.blogCreateTime}</li>
          <li class="view"><span>${blogArticleList.blogViewNumber}</span>已阅读</li>
          <li class="like">${blogArticleList.blogLikeNumber}</li>
        </ul>
      </div>
    </div>
    </c:if>
  
    <!-- 无图文章 -->
    <c:if test="${blogArticleList.blogOtherType eq '0' }">
    <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
      <h3 class="blogtitle"><a href="<%=request.getContextPath()%>/info.html?blogId=${blogArticleList.blogId }" target="_blank">${blogArticleList.blogTitle }</a></h3>
      <!-- <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！...</p> -->
      <p class="blogtext">${blogArticleList.blogAritcleInstroduction}</p>
      <div class="bloginfo">
        <ul>
          <li class="author"><a href="/">代码君</a></li>
          <li class="lmname"><a href="/">
            <c:if test="${blogArticleList.blogType eq '1' }">java</c:if>
            <c:if test="${blogArticleList.blogType eq '2' }">学无止境</c:if>
            <c:if test="${blogArticleList.blogType eq '3' }">慢生活</c:if>
            <c:if test="${blogArticleList.blogType eq '4' }">前端</c:if>
            <c:if test="${blogArticleList.blogType eq '5' }">数据库</c:if>
            <c:if test="${blogArticleList.blogType eq '6' }">linux</c:if>
            </a></li>
          <li class="timer">${blogArticleList.blogCreateTime}</li>
          <li class="view"><span>${blogArticleList.blogViewNumber}</span>已阅读</li>
          <li class="like">${blogArticleList.blogLikeNumber}</li>
        </ul>
      </div>
    </div>
    </c:if>
    <!-- 三图文章 -->
    <c:if test="${blogArticleList.blogOtherType eq '3' }">
    <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
      <h3 class="blogtitle"><a href="<%=request.getContextPath()%>/info.html?blogId=${blogArticleList.blogId }" target="_blank">${blogArticleList.blogTitle }</a></h3>
      <span class="bplist"><a href="/" title="">
      <li><img src="${blogArticleList.blogImg1}" alt=""></li>
      <li><img src="${blogArticleList.blogImg2}" alt=""></li>
      <li><img src="${blogArticleList.blogImg3}" alt=""></li>
      </a></span>
       <p class="blogtext">${blogArticleList.blogAritcleInstroduction}</p>
      <!-- <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！... </p> -->
      <div class="bloginfo">
        <ul>
          <li class="author"><a href="/">代码君</a></li>
          <li class="lmname">
          <a href="/">
          	<c:if test="${blogArticleList.blogType eq '1' }">java</c:if>
            <c:if test="${blogArticleList.blogType eq '2' }">学无止境</c:if>
            <c:if test="${blogArticleList.blogType eq '3' }">慢生活</c:if>
            <c:if test="${blogArticleList.blogType eq '4' }">前端</c:if>
            <c:if test="${blogArticleList.blogType eq '5' }">数据库</c:if>
            <c:if test="${blogArticleList.blogType eq '6' }">linux</c:if>
          </a></li>
          <li class="timer">${blogArticleList.blogCreateTime}</li>
          <li class="view"><span>${blogArticleList.blogViewNumber}</span>已阅读</li>
          <li class="like">${blogArticleList.blogLikeNumber}</li>
        </ul>
      </div>
    </div>
    </c:if>
    
    <!-- 大图文章 -->
    <c:if test="${blogArticleList.blogOtherType eq '2' }">
    <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
      <h3 class="blogtitle"><a href="<%=request.getContextPath()%>/info.html?blogId=${blogArticleList.blogId }" target="_blank">${blogArticleList.blogTitle }</a></h3>
      <span class="bigpic"><a href="/" title=""><img src="${blogArticleList.blogImg1}" alt=""></a></span>
       <p class="blogtext">${blogArticleList.blogAritcleInstroduction}</p>
     <!--  <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！... </p> -->
      <div class="bloginfo">
        <ul>
          <li class="author"><a href="/">代码君</a></li>
          <li class="lmname">
          <a href="/">
			<c:if test="${blogArticleList.blogType eq '1' }">java</c:if>
            <c:if test="${blogArticleList.blogType eq '2' }">学无止境</c:if>
            <c:if test="${blogArticleList.blogType eq '3' }">慢生活</c:if>
            <c:if test="${blogArticleList.blogType eq '4' }">前端</c:if>
            <c:if test="${blogArticleList.blogType eq '5' }">数据库</c:if>
            <c:if test="${blogArticleList.blogType eq '6' }">linux</c:if>
		  </a></li>
          <li class="timer">${blogArticleList.blogCreateTime}</li>
          <li class="view"><span>${blogArticleList.blogViewNumber}</span>已阅读</li>
          <li class="like">${blogArticleList.blogLikeNumber}</li>
        </ul>
      </div>
    </div>
    </c:if>
 </c:forEach>
 </c:if>
 <c:if test="${isEmpty eq 'trues' }">
 	空空如也~
 	博主还没有发布这种类型的文章哦！赶紧去留言催博主发布新文章吧.
 </c:if>
 
  </div>
 <%@ include file="side.jsp"%>
</article>
<%-- <div class="pagelist">
	<a title="Total record">&nbsp;<b>${blogArticles.page.totalCount}</b></a>
	
		<c:if test="${blogArticles.page.currentPage ne 1}">
		<a href="<%=request.getContextPath()%>/index.html?currentPages=${blogArticles.page.currentPage-1}">上一页</a>&nbsp;&nbsp;&nbsp;
		</c:if>
		
			<!-- <b>1</b>&nbsp;
			<a href="/download/index_2.html">2</a>&nbsp; -->
			
			<c:forEach  begin="${blogArticles.page.currentPage}"  end="${blogArticles.page.totalPage}"  varStatus="i">
	 		<c:if test="${blogType ne null}">
	        <a   href="<%=request.getContextPath()%>/index.html?currentPages=${i.index}&blogType=${blogType}">${i.index}</a>
	        </c:if>
	        <c:if test="${blogType eq null}">
	        <a   href="<%=request.getContextPath()%>/index.html?currentPages=${i.index}">${i.index}</a>
	        </c:if>
	        </c:forEach>
		<c:if test="${blogArticles.page.currentPage ne blogArticles.page.totalPage}">
		<a href="<%=request.getContextPath()%>/index.html?currentPages=${blogArticles.page.currentPage+1}">下一页</a>&nbsp;
		</c:if>
	<a href="/download/index_2.html">尾页</a>
</div> --%>
<!-- 分页时没有文章类型 -->
	<c:if test="${blogArticles.blogType eq null}">
	<div class="pagelist">
	<a title="Total record">&nbsp;<b>${blogArticles.page.totalCount}</b></a>
		<c:if test="${blogArticles.page.currentPage ne 1}">
		<a href="<%=request.getContextPath()%>/index.html?currentPages=${blogArticles.page.currentPage-1}">上一页</a>&nbsp;&nbsp;&nbsp;
		</c:if>
			<c:forEach  begin="${blogArticles.page.currentPage}"  end="${blogArticles.page.totalPage}"  varStatus="i">
	        <a   href="<%=request.getContextPath()%>/index.html?currentPages=${i.index}">${i.index}</a>
	        </c:forEach>
		<c:if test="${blogArticles.page.currentPage ne blogArticles.page.totalPage}">
		<a href="<%=request.getContextPath()%>/index.html?currentPages=${blogArticles.page.currentPage+1}">下一页</a>&nbsp;
		</c:if>
	<a href="/download/index_2.html">尾页</a>
	</div>
	</c:if>
	
	<!-- 分页是有文章类型 -->
	<c:if test="${blogArticles.blogType ne null}">
	<div class="pagelist">
	<a href="<%=request.getContextPath()%>/index.html?currentPages=1&blogType=${blogArticles.blogType}">首页</a>
	<a title="Total record">&nbsp;<b>${blogArticles.page.totalCount}</b></a>
		<c:if test="${blogArticles.page.currentPage ne 1}">
		<a href="<%=request.getContextPath()%>/index.html?currentPages=${blogArticles.page.currentPage-1}&blogType=${blogArticles.blogType}">上一页</a>&nbsp;&nbsp;&nbsp;
		</c:if>
			<c:forEach  begin="${blogArticles.page.currentPage}"  end="${blogArticles.page.totalPage}"  varStatus="i">
	        <a   href="<%=request.getContextPath()%>/index.html?currentPages=${i.index}&blogType=${blogArticles.blogType}">${i.index}</a>
	        </c:forEach>
		<c:if test="${blogArticles.page.currentPage ne blogArticles.page.totalPage}">
		<a href="<%=request.getContextPath()%>/index.html?currentPages=${blogArticles.page.currentPage+1}&blogType=${blogArticles.blogType}">下一页</a>&nbsp;
		</c:if>
	<a href="<%=request.getContextPath()%>/index.html?currentPages=${blogArticles.page.totalPage}&blogType=${blogArticles.blogType}">尾页</a>
	</div>
	</c:if>
<footer>
  <p><a href="http://www.wulinfei.cn" target="_blank">代码君个人博客</a> <a href="/">湘ICP备18012007号</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>