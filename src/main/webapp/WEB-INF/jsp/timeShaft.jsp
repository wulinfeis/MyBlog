<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="gbk">
<title>时间轴_吴林飞个人博客</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/myBlog/static/css/base.css" rel="stylesheet">
<link href="/myBlog/static/css/index.css" rel="stylesheet">
<link href="/myBlog/static/css/m.css" rel="stylesheet">
<script src="/myBlog/static/js/jquery.min.js" type="text/javascript"></script>
<script src="/myBlog/static/js/jquery.easyfader.min.js"></script>
<script src="/myBlog/static/js/scrollReveal.js"></script>
<script src="/myBlog/static/js/common.js"></script>
<script src="/myBlog/static/js/scrollReveal.js"></script>
<script src="/myBlog/static/js/page.js"></script>
<link href="/myBlog/static/css/style_time.css" rel="stylesheet">
</head>
<body>
<header> 
  <!--menu begin-->
  <div class="menu">
    <nav class="nav" id="topnav">
      <h1 class="logo"><a href="http://www.wulinfei.cn">代码君的博客</a></h1>
      <li><a href="index.html">网站首页</a> </li>
      <li><a href="abouts.html">关于我</a> </li>
       <li><a href="<%=request.getContextPath()%>/index.html?blogType=1">Java知识</a>
      <!-- <li><a href="share.html">模板分享</a>
        <ul class="sub-nav">
          <li><a href="share.html">个人博客模板</a></li>
          <li><a href="share.html">国外Html5模板</a></li>
          <li><a href="share.html">企业网站模板</a></li>
        </ul>
      </li> -->
      <li><a href="<%=request.getContextPath()%>/index.html?blogType=3">学无止境</a>
        <ul class="sub-nav">
         <li><a href="<%=request.getContextPath()%>/index.html?blogType=4">前端技术</a></li>
          <li><a href="<%=request.getContextPath()%>/index.html?blogType=5">数据库</a></li>
          <li><a href="<%=request.getContextPath()%>/index.html?blogType=6">linux</a></li>
          <li><a href="<%=request.getContextPath()%>/index.html?blogType=1">java知识</a></li>
        </ul>
      </li>
      <li><a href="<%=request.getContextPath()%>/slowLife.html?blogType=7">慢生活</a>
        <ul class="sub-nav">
          <li><a href="<%=request.getContextPath()%>/slowLife.html?blogType=11">日记</a></li>
          <!-- <li><a href="life.html">欣赏</a></li> -->
          <li><a href="<%=request.getContextPath()%>/slowLife.html?blogType=7">程序人生</a></li>
          <!-- <li><a href="life.html">经典语录</a></li> -->
        </ul>
      </li>
      <li><a href="timeShaft.html">时间轴</a> </li>
      <li><a href="leaveword.html">留言</a> </li>
      <!--search begin-->
      <div id="search_bar" class="search_bar">
        <form  id="searchform" action="[!--news.url--]e/search/index.php" method="post" name="searchform">
          <input class="input" placeholder="想搜点什么呢..." type="text" name="keyboard" id="keyboard">
          <input type="hidden" name="show" value="title" />
          <input type="hidden" name="tempid" value="1" />
          <input type="hidden" name="tbname" value="news">
          <input type="hidden" name="Submit" value="搜索" />
          <span class="search_ico"></span>
        </form>
      </div>
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
      <dt class="list_dt"> <a href="<%=request.getContextPath()%>/index.html?blogType=1">Java知识</a></dt>
      <dd class="list_dd">
        <ul>
          <<!-- li><a href="share.html">个人博客模板</a></li>
          <li><a href="share.html">国外Html5模板</a></li>
          <li><a href="share.html">企业网站模板</a></li> -->
        </ul>
      </dd>
      <dt class="list_dt"> <a href="#">学无止境</a> </dt>
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
          <li><a href="<%=request.getContextPath()%>/slowLife.html?blogType=7">程序人生</a></li>
        </ul>
      </dd>
      <dt class="list_dt"> <a href="timeShaft.html">时间轴</a>  </dt>
      <dt class="list_dt"> <a href="leaveword.html">留言</a> </dt>
    </dl>
  </div>
  <!--mnav end--> 
</header>
<div class="pagebg timer"> </div>
<div class="container">
  <h1 class="t_nav"><span>时光飞逝，机会就在我们眼前，何时找到了灵感，就要把握机遇，我们需要智慧和勇气去把握机会。</span>
  <a href="index.html" class="n1">网站首页</a><a href="/" class="n2">时间轴</a></h1>
  <div class="content">
  <div class="wrapper">
    <div class="light"><i></i></div>
    <hr class="line-left">
    <hr class="line-right">
    <div class="main">
      <h1 class="title">代码君的小日志</h1>
      <div class="year">
        <h2><a href="#">2018年<i></i></a></h2>
        <div class="list">
          <ul>
            
            <li class="cls highlight">
              <p class="date">12月</p>
              <p class="intro">磕磕绊绊，终于把个人博客网站开发完成了~</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>在平常下班时间中，不断借鉴各个博客大佬网站进行开发</p>
                <p>网站开发完成，心里真的有点小激动</p>
                <p>之前完整基本完成了，但是由于自己操作失误，导致网站得重新开发</p>
              </div>
            </li>
            
            <li class="cls">
              <p class="date">11月</p>
              <p class="intro">开发某微信公众号</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>测试，开发，修复bug，解决问题，技术上线</p>
                <p>弄的头有点晕</p>
                <p>工作虽然很忙，但是确实从工作中成长了不少，提升了解决问题的能力</p>
              </div>
            </li>
            <li class="cls">
              <p class="date">10月</p>
              <p class="intro">重新开始</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>询问了阿里云后台技术人员之后</p>
                <p>被告知可以重置服务器，恢复至购买时的状态</p>
                <p>哎，没办法，只能重新再来一遍了，最近工作又很忙，一直没有时间弄，心累</p>
              </div>
            </li>
            <li class="cls">
              <p class="date">9月</p>
              <p class="intro">与某金融产品对接</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>开发过程中存在着许多问题，</p>
                <p>对接方还不停的催进度，哎~心累</p>
                <p>不过好在耐不住我们程序员的加班。。。</p>
                <p>慢慢的，把所有问题都解决完了</p>
                <p>当上线测试完成的那一刻，心中悬着的一块石头终于落下了</p>
              </div>
            </li>
             <li class="cls">
              <p class="date">8月</p>
              <p class="intro">rm -rf /*</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>自己小手一抖，在自己服务器上面执行了这行命令</p>
                <p>原本自己只是想删除一个文件夹下的所有文件</p>
                <p>不知道当时自己是怎么想的，鬼使神差的敲了这行命令</p>
                <p>然后就眼睁睁的看着服务器上面的东西全没了~</p>
                <p>内心是奔溃的。</p>
                <p>本来我的个人网站已经快开发的差不多了，结果出了这岔子</p>
                <p>个人网站的计划暂时搁浅了</p>
              </div>
            </li>
             <li class="cls">
              <p class="date">7月23日</p>
              <p class="intro">代码君的博客网站</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>正式开始自己的个人网站开发</p>
                <p>买服务器，买域名，看相关的资料</p>
                <p>搭建项目运行环境，以及服务器的环境</p>
              </div>
            </li>
            <li class="cls">
              <p class="date">7月</p>
              <p class="intro">进行新的项目组</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>公司安排面试进入其他项目组</p>
                <p>遇到了一堆有趣的同事</p>
                <p>在这个项目组里面，第一次觉得有团队的感觉</p>
              </div>
            </li>
            
              <li class="cls">
              <p class="date">6月30日</p>
              <p class="intro">购买阿里云服务器</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>项目组快解散的那段时间，基本没什么需求了</p>
                <p>闲暇之余，看到了许多大佬都有自己的博客网站</p>
                <p>于是，自己也想做一个</p>
                <p>然后就买了一个阿里云服务器，打算开始弄一个属于自己的网站</p>
              </div>
            </li>
            
            <li class="cls">
              <p class="date">6月20日</p>
              <p class="intro">原来的项目组解散了</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>原来的项目组开发工作基本完成了，系统线上运行基本没什么问题</p>
                <p>后续没有新的开发需求了</p>
                <p>于是，我们项目解散了</p>
                <p>心中也充满着感慨...</p>
              </div>
            </li>
            
            <li class="cls">
              <p class="date">5月</p>
              <p class="intro">我成了最“老”的人</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>项目组里面最后一位大佬(建)跑路了</p>
                <p>我成了项目组里待的时间最长的开发了</p>
                <p>心中也曾慌过，但是总会有自己独挡一面的时候</p>
                <p>也是自己实力的证明吧~</p>
              </div>
            </li>
            
             <li class="cls">
              <p class="date">4月</p>
              <p class="intro">虎哥跑路了</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>平常工作挺照顾我的一个同事</p>
                <p>有什么不懂的问题或者业务,问虎哥，虎哥总会耐心的指导我</p>
                 <p>对虎哥的照顾，也充满着谢意</p>
              </div>
            </li>
            
            <li class="cls highlight">
              <p class="date">2月</p>
              <p class="intro">过年啦</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>过年啦，过年啦，回老家去，湖南湘西凤凰古城，啦啦啦</p>
              </div>
            </li>
            <li class="cls highlight">
              <p class="date">1月</p>
              <p class="intro">工作上带我的前辈,慧影,回公司本部了</p>
              
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>原本我也是跟她进行工作交接的，大概一个多月左右</p>
              <p>业务基本也熟悉的差不多了</p>
              <p>心中对她充满着感激</p>
              <p>工作中能遇到很耐心的同事</p>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <div class="year">
        <h2><a href="#">2017年<i></i></a></h2>
        <div class="list">
          <ul>
            <li class="cls">
              <p class="date">12月</p>
              <p class="intro">熟悉新项目</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>我的第一个互联网项目</p>
                <p>是一个名气很大的app，与支付宝类似，只是没有支付宝那么普及</p>
              </div>
            </li>
            
            <li class="cls">
              <p class="date">11月</p>
              <p class="intro">初入魔都</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>在某互联网公司就职</p>
                <p>勤勤恳恳的工作，经常加班到很晚，解决bug</p>
              </div>
            </li>
            <!-- <li class="cls">
              <p class="date">10月</p>
              <p class="intro">微俱聚V5.2上线</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>与众多行业建立合作，推出多个行业解决方案</p>
              </div>
            </li>
            <li class="cls">
              <p class="date">9月</p>
              <p class="intro">微俱聚V5.1上线</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>发力行业O2O应用，为商家提供量身定制的行业方案</p>
              </div>
            </li>
            <li class="cls highlight">
              <p class="date">8月</p>
              <p class="intro">全新微俱聚平台V5.0上线</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>推出微信应用商店，为商家提供更丰富的应用选择</p>
                <p>整合众多优秀微信应用，打造微应用分发平台</p>
              </div>
            </li>
            <li class="cls highlight">
              <p class="date">7月</p>
              <p class="intro">微信加更名为微俱聚</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>出于品牌和商标保护的考虑，微信加平台更名</p>
              </div>
            </li>
            <li class="cls">
              <p class="date">6月</p>
              <p class="intro">微信加V4.0上线</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>微信在线预约、更多微信互动模块和微官网模板，商家业务展现日渐丰富</p>
                <p>签约《中国好声音》，成为其微信独家战略合作伙伴</p>
              </div>
            </li>
            <li class="cls">
              <p class="date">5月</p>
              <p class="intro">微信加V3.0上线</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>推出微信会员卡、微信团购等业务模块，打通更多商家业务</p>
              </div>
            </li>
            <li class="cls">
              <p class="date">4月</p>
              <p class="intro">微信加V2.0上线</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>推出微官网等微信业务模块，实现微信与商家业务对接</p>
              </div>
            </li>
            <li class="cls">
              <p class="date">3月</p>
              <p class="intro">微信加V1.0上线</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>微信基础服务模块+微信互动推广模块上线</p>
                <p>创造微信公众号一周涨5万粉的奇迹</p>
              </div>
            </li>
            <li class="cls">
              <p class="date">1月</p>
              <p class="intro">全网第一个微信刮刮卡、大转盘上线</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>微信互动推广模块上线，用实际行动证明微信鸡汤有毒</p>
              </div>
            </li> -->
          </ul>
        </div>
      </div>
      <!-- <div class="year">
        <h2><a href="#">2016年<i></i></a></h2>
        <div class="list">
          <ul>
            <li class="cls">
              <p class="date">7月</p>
              <p class="intro">对代码懵懵懂懂，磕磕绊绊，也算入门了。</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p>键盘敲得飞快，指尖与键盘敲击的声音如行云流水一般，敲完最后一个代码，舒了一口气，一看电脑，输出了一行"hello world"</p>
              </div>
            </li>
            <li class="cls">
              <p class="date">8月以前</p>
              <p class="intro">实现一个NB的社会化APP</p>
              <p class="version">&nbsp;</p>
            </li>
          </ul>
        </div>
      </div> -->
      <div class="year">
        <h2><a href="#">2015年以前<i></i></a></h2>
        <div class="list">
          <ul>
            <li class="cls">
              <p class="date">&nbsp;</p>
              <p class="intro">看到电影里面的黑客大佬,不禁对代码充满着向往,当时也想成为像电影里面一样的黑客一样.</p>
              <p class="version">&nbsp;</p>
              <div class="more">
                <p></p>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="footer">
  <div class="footer-content clearfix">
  </div>
</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>
	$(".main .year .list").each(function (e, target) {
	    var $target=  $(target),
	        $ul = $target.find("ul");
	    $target.height($ul.outerHeight()), $ul.css("position", "absolute");
	}); 
	$(".main .year>h2>a").click(function (e) {
	    e.preventDefault();
	    $(this).parents(".year").toggleClass("close");
	});
	</script>
</div>
<footer>
  <p>Design by <a href="http://www.yangqq.com" target="_blank">杨青个人博客</a> <a href="/">蜀ICP备11002373号-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
