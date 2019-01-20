<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 引入头部 -->
<%@ include file="head.jsp"%>
<article>

 <h1 class="t_nav"><span>人生总是有着太多太多的遗憾，我们唯一能做的，就是别再做让自己遗憾的事</span><a href="index.html" class="n1">网站首页</a><a href="#" class="n2">文章内容</a></h1>
    <%@ include file="side.jsp"%>
  <div class="infosbox">
    <div class="newsview">
      <h3 class="news_title">${article.blogTitle}</h3>
      <div class="bloginfo">
        <ul>
          <li class="author"><a href="/">${article.blogAuthor }</a></li>
          <li class="lmname">
	          <a href="/">
		        <c:if test="${article.blogType eq '1' }">java</c:if>
	            <c:if test="${article.blogType eq '2' }">学无止境</c:if>
	            <c:if test="${article.blogType eq '3' }">慢生活</c:if>
	            <c:if test="${article.blogType eq '4' }">前端</c:if>
	            <c:if test="${article.blogType eq '5' }">数据库</c:if>
	            <c:if test="${article.blogType eq '6' }">linux</c:if>
			  </a>
		  </li>
          <li class="timer">${article.blogCreateTime}</li>
          <li class="view">${article.blogViewNumber}</li>
          <li class="like">${article.blogLikeNumber}</li>
        </ul>
      </div>
      <div class="tags"><a href="/" target="_blank">个人博客</a> &nbsp; <a href="/" target="_blank">小世界</a></div>
      <div class="news_about"><strong>简介</strong>个人博客，用来做什么？我刚开始就把它当做一个我吐槽心情的地方，也就相当于一个网络记事本，写上一些关于自己生活工作中的小情小事，也会放上一些照片，音乐。每天工作回家后就能访问自己的网站，一边听着音乐，一边写写文章。</div>
     	   
		<div class="htmledit_views" id="content_views"  style="font-size: 16px">
     	${article.blogContext }
     	</div>
    </div>
    <div class="share">
      
      <div  id ="likeIt">
      <p class="diggit">
      <a href="#" onclick="likeIt()"> 很赞哦！ </a>
     <%--  (<b id="diggnum">${article.blogLikeNumber}</b>) --%>
     (<b id="diggnum">${article.blogLikeNumber}</b>)
      </p>
      <div>
      <p class="dasbox"><a href="javascript:void(0)" onClick="dashangToggle()" class="dashang" title="打赏，支持一下">打赏本站</a></p>
      <div class="hide_box"></div>
      <div class="shang_box"> <a class="shang_close" href="javascript:void(0)" onclick="dashangToggle()" title="关闭">关闭</a>
        <div class="shang_tit">
          <p>感谢您的支持，我会继续努力的!</p>
        </div>
        <div class="shang_payimg"> <img src="/myBlog/static/image/payzhifubao.png" alt="扫码支持" title="扫一扫"> </div>
        <div class="pay_explain">扫码打赏，你说多少就多少</div>
        <div class="shang_payselect">
          <div class="pay_item checked" data-id="payzhifubao"> <span class="radiobox"></span> <span class="pay_logo"><img src="/myBlog/static/images/alipay.jpg" alt="支付宝"></span> </div>
          <div class="pay_item" data-id="paywechat"> <span class="radiobox"></span> <span class="pay_logo"><img src="/myBlog/static/images/wechat.jpg" alt="微信"></span> </div>
        </div>
       
      </div>
    </div>
    <div class="nextinfo">
      <p>上一篇：
      	<c:if test="${lastAritcle eq 'backIndex' }">
      	<a href="index.html">返回首页</a>
      	</c:if>
      	<c:if test="${lastAritcle ne 'backIndex' }">
      	<a href="<%=request.getContextPath()%>/info.html?blogId=${lastAritcle.blogId }">${lastAritcle.blogTitle}</a>
      	</c:if>
      </p>
      
      <p>下一篇：
      	<c:if test="${nextAritcle eq 'backIndex' }">
      	<a href="/news/life/2018-03-13/804.html">返回首页</a>
      	</c:if>
      	<c:if test="${nextAritcle ne 'backIndex' }">
      	<a href="<%=request.getContextPath()%>/info.html?blogId=${nextAritcle.blogId }">${nextAritcle.blogTitle}</a>
      	</c:if>
      </p>
    </div>
    <div class="otherlink">
      <h2>相关文章</h2>
      <ul>
      <c:forEach items="${blogTitleList}" var="blogTitleList">
        <li><a href="<%=request.getContextPath()%>/info.html?blogId=${blogTitleList.blogId }" title="${blogTitleList.blogTitle }">${blogTitleList.blogTitle }</a></li>
      </c:forEach>
      </ul>
    </div>
    <div class="news_pl">
      <h2>文章评论</h2>
      <!--高速版-->
		<div id="SOHUCS" sid="${article.blogId}"></div>
	</div>
	
      
      <ul>
        <div class="gbko"> </div>
      </ul>
    </div>
  </div>

</article>
 <script type="text/javascript">
    $(function(){
    	$(".pay_item").click(function(){
    		$(this).addClass('checked').siblings('.pay_item').removeClass('checked');
    		var dataid=$(this).attr('data-id');
    		$(".shang_payimg img").attr("src","/myBlog/static/image/"+dataid+".png");
    		$("#shang_pay_txt").text(dataid=="alipay"?"支付宝":"微信");
    	});
    });
    function dashangToggle(){
    	$(".hide_box").fadeToggle();
    	$(".shang_box").fadeToggle();
    }
    function likeIt(){
    	var blogLikeNumber =  '${article.blogLikeNumber}';
    	var blogId = '${article.blogId}';
    	var pathUrl = path+'/likeIt.do';
    	 $.ajax({
	            type:"post",
	            dataType: "json",
	            data:{
	            	blogLikeNumber : blogLikeNumber,
	            	blogId : blogId
	            },
	            url: pathUrl,
	            success: function(data){
	            	alert(data.MSG);
	            	window.location.reload();
	            },
	            error:function(){
	                alert("系统请求异常！")
	            }
    	 });
    }
    </script> 
<script charset="utf-8" type="text/javascript"
		src="http://changyan.sohu.com/upload/changyan.js"></script>
	<script type="text/javascript">
		window.changyan.api.config({
			appid : 'cytXbIg8J',
			conf : 'prod_003a597ba18017606ed1e6a57217d6df'
		});
	</script>
<!-- 引入底部 -->
<%@ include file="footer.jsp" %>

