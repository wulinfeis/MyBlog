<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!--blogsbox end-->
  <div class="sidebar">
    <div class="zhuanti">
      <h2 class="hometitle">特别推荐</h2>
      <ul>
      	<c:forEach items="${sideArticleList}" var="sideArticleList">
      		<c:if test="${sideArticleList.blogArticleType eq '1' }">
	        <li> <i><img src="${sideArticleList.blogImg1}"></i>
	          <p>${sideArticleList.blogTitle }<span><a href="<%=request.getContextPath()%>/info.html?blogId=${sideArticleList.blogId }">阅读</a></span> </p>
	        </li>
	        <!-- <li> <i><img src="/myBlog/static/images/b04.jpg"></i>
	          <p>5.20 我想对你说 <span><a href="/">阅读</a></span></p>
	        </li>
	        
	        <li> <i><img src="/myBlog/static/images/b05.jpg"></i>
	          <p>个人博客，属于我的小世界！ <span><a href="/">阅读</a></span></p>
	        </li> -->
        	</c:if>
        </c:forEach>
      </ul>
    </div>
    <div class="tuijian">
      <h2 class="hometitle">推荐文章</h2>
      
      <!-- 推荐文章标章 -->
      <ul class="tjpic">
        <i><img src="/myBlog/static/images/blog/sad.jpg"></i>
        <p><a href="<%=request.getContextPath()%>/info.html?blogId=20">西二旗程序员杀人事件</a></p>
      </ul>
      
      
      <ul class="sidenews">
      <c:forEach items="${sideArticleList}" var="sideArticleList">
      	<c:if test="${sideArticleList.blogArticleType eq '2' }">
	        <li> <i><img src="${sideArticleList.blogImg1}"></i>
	          <p><a href="/">${sideArticleList.blogTitle }</a></p>
	          <span>${sideArticleList.blogCreateTime}</span> 
	        </li>
        </c:if>
      </c:forEach>
        <!-- <li> <i><img src="/myBlog/static/images/toppic02.jpg"></i>
          <p><a href="/">给我模板PSD源文件，我给你设计HTML！</a></p>
          <span>2018-05-13</span> </li>
        <li> <i><img src="/myBlog/static/images/v1.jpg"></i>
          <p><a href="/">别让这些闹心的套路，毁了你的网页设计</a></p>
          <span>2018-05-13</span> </li>
        <li> <i><img src="/myBlog/static/images/v2.jpg"></i>
          <p><a href="/">给我模板PSD源文件，我给你设计HTML！</a></p>
          <span>2018-05-13</span> 
        </li> -->
          
      </ul>
    </div>
    <div class="tuijian">
      <h2 class="hometitle">点击排行</h2>
      
      <ul class="tjpic">
        <i><img src="/myBlog/static/images/toppic01.jpg"></i>
        <p><a href="/">别让这些闹心的套路，毁了你的网页设计</a></p>
      </ul>
      
      <ul class="sidenews">
        
        <c:forEach items="${blogRankingList}" var="blogRankingList">
	        <li> <i><img src="${blogRankingList.blogImg1}"></i>
	          <p><a href="/">${blogRankingList.blogTitle }</a></p>
	          <span>${blogRankingList.blogCreateTime}</span> 
	        </li>
      </c:forEach>
        
        <!-- <li> <i><img src="/myBlog/static/images/toppic02.jpg"></i>
          <p><a href="/">给我模板PSD源文件，我给你设计HTML！</a></p>
          <span>2018-05-13</span> </li>
        <li> <i><img src="/myBlog/static/images/v1.jpg"></i>
          <p><a href="/">别让这些闹心的套路，毁了你的网页设计</a></p>
          <span>2018-05-13</span> </li>
        <li> <i><img src="/myBlog/static/images/v2.jpg"></i>
          <p><a href="/">给我模板PSD源文件，我给你设计HTML！</a></p>
          <span>2018-05-13</span> </li> -->
      </ul>
    </div>
    <div class="cloud">
      <h2 class="hometitle">我的个人标签</h2>
      <ul>
        <a href="#">技术宅</a> <a href="#">动漫迷</a> <a href="#">html5</a> <a href="#">java</a> 
        <a href="#">喜欢做饭的吃货</a> <a href="#">暖男</a> <a href="#">阳光</a> <a href="#">睡懒觉</a>
        <a href="#">跑步</a> <a href="#">linux</a> <a href="#">羽毛球</a> <a href="#">王者荣耀</a>
      </ul>
    </div>
    <div class="links">
      <h2 class="hometitle">友情链接</h2>
      <ul>
      <!--   <li>暂时没有哦~</li> -->
        <!-- <li><a href="http://www.yangqq.com" target="_blank">代码君博客</a></li> -->
        <li><a href="http://www.yangqq.com" target="_blank">杨青的个人博客</a></li>
        <!-- <li><a href="http://www.yangqq.com" target="_blank">优秀个人博客</a></li> -->
      </ul>
    </div>
    <div class="guanzhu" id="follow-us">
      <h2 class="hometitle">关注我们 么么哒！</h2>
      <ul>
        <li class="sina"><a href="/" target="_blank"><span>新浪微博</span>代码君小飞</a></li>
       <!--  <li class="tencent"><a href="/" target="_blank"><span>腾讯微博</span>代码君博客</a></li> -->
        <li class="qq"><a href="/" target="_blank"><span>QQ号</span>2306934850</a></li>
        <li class="email"><a href="/" target="_blank"><span>邮箱帐号</span>2306934850@qq.com</a></li>
        <li class="wxgzh"><a href="/" target="_blank"><span>微信号</span>a18670321295</a></li>
        <li class="wx"><img src="/myBlog/static/images/weixin.jpg"></li>
      </ul>
    </div>
  </div>