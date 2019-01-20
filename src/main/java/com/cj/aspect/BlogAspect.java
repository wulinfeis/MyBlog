package com.cj.aspect;

import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.cj.constant.BlogConstant;
import com.cj.pojo.Article;
import com.cj.service.BlogService;
import com.cj.util.DateUtil;

@Aspect
@Component
public class BlogAspect {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private BlogService blogService;
	
	private final String ExpGetResultDataPonit = "execution(* com.cj.service.BlogService.getArticleInfo(..))";
	
	
	//定义切面
    @Pointcut(ExpGetResultDataPonit)
    public void annotationPointCut() {}
    
    //定义方法拦截的规则
  /*  @Before("annotationPointCut()")
    public void before(JoinPoint joinPoint,HttpServletRequest request) {
        MethodSignature signature =  (MethodSignature) joinPoint.getSignature();
        //拦截了方法
        Method method = signature.getMethod();
        //直接获取方法名字
        System.out.println("方法规则式拦截" + method.getName());
        String ip = request.getRemoteAddr();
        System.out.println("ip"+ip);
    }*/
    
    @Before("annotationPointCut()")
    public void before(JoinPoint joinPoint) {
        MethodSignature signature =  (MethodSignature) joinPoint.getSignature();
        //拦截了方法
        //Method method = signature.getMethod();
        logger.info("浏览博客，进入统计博客浏览次数的切面类");
        RequestAttributes ra = RequestContextHolder.getRequestAttributes();
        ServletRequestAttributes sra = (ServletRequestAttributes) ra;
        HttpServletRequest request = sra.getRequest();

        String blogVisitIp  = request.getRemoteAddr();
        String currentTime = DateUtil.getCurrentTime();
        String blogId = request.getParameter(BlogConstant.BLOG_ID);
        Article article = new Article();
        article.setBlogVisitIp(blogVisitIp);
        article.setBlogId(Integer.parseInt(blogId));
        article.setBlogVisitTime(currentTime);
        article.setBlogVisitType(0);
        logger.info("查询条件"+article);
        List<Article> blogVisitIpList = blogService.getVisitIp(article);
        if(blogVisitIpList.size() > 0) {
        	String oldVisitDateTime = blogVisitIpList.get(0).getBlogVisitTime();
        	int blogViewNumber = blogVisitIpList.get(0).getBlogViewNumber();
        	if(DateUtil.dateHandle(currentTime, oldVisitDateTime)) {
        		logger.info("本次访问在上次访问的两小时内，浏览次数不增加");
        	}else {
        		article.setBlogViewNumber(blogViewNumber+1);
        		logger.info("本次访问不在上次访问的两小时内，浏览次数加1");
        		logger.info("修改参数"+article);
        		blogService.updateBlogVisitNumber(article);
        		blogService.updateVisitIp(article);
        		logger.info("");
        	}
        }else {
        	logger.info("本次访问属于第一次访问，浏览次数加1");
        	Article articles = blogService.getArticleViewNumber(Integer.parseInt(blogId));
        	int blogViewNumber =  articles.getBlogViewNumber();
        	article.setBlogViewNumber(blogViewNumber+1);
        	blogService.updateBlogVisitNumber(article);
        	blogService.insertVisitIp(article);
        }
        
        logger.info("访问的ip"+blogVisitIp);
        logger.info("访问的博客id"+blogId);
    }
}
