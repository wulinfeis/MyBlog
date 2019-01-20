package com.cj.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cj.constant.BlogConstant;
import com.cj.pojo.Article;
import com.cj.pojo.Page;
import com.cj.service.BlogService;
import com.cj.service.TestService;

/**
 * 控制层，
 * Title:
 * @author: 代码君小飞
 * @date: 2018年6月25日 上午9:48:11
 * Description:
 */
@Controller
public class BlogController {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private TestService testService;
	
	@Autowired
	private BlogService blogService;
	
	private int beginIndex =0;
	private int everyPage=8;
	/**
	 * 跳转首页的方法
	 * @param request 
	 * @return 对应的页面
	 */
	@RequestMapping("/index.html")
	public String toIndex(HttpServletRequest request){
		String blogType = request.getParameter(BlogConstant.BLOG_TYPE);
		
		//不是点击首页访问的时候，将首页大图移除
		if(blogType != null && !blogType.equals("")) {
			//request.getSession().setAttribute(BlogConstant.REMOVE_IMG, "1");
			request.setAttribute(BlogConstant.REMOVE_IMG, "1");
		}
		logger.info("博客类型："+blogType);
		Article article = new Article();
		article.setBlogType(blogType);
		Page page = new Page();
		
		//获取跳转页数
		String currentPages = request.getParameter("currentPages");
		if(currentPages==null||currentPages.equals("")){
			page.setCurrentPage(1);
			beginIndex=0;
			System.out.println(beginIndex+"首页");
		}else {
			page.setCurrentPage(Integer.parseInt(currentPages));
			beginIndex =(Integer.parseInt(currentPages)-1)*8;
			System.out.println(beginIndex+"-------"+"第"+currentPages+"页");
		}
		page.setBeginIndex(beginIndex);
		page.setEveryPage(everyPage);
		
		//将page分页参数设置到对象中
		article.setPage(page);
		logger.info("查询条件"+article);
		
		//查询文章列表
		List<Article> articleList = blogService.getList(article);
		
		//根据文章类型查询文章总数量
		int totalCount = blogService.getArticleNumberByType(article);
		
		//总页数
		int totalPage =0;
		
		if(totalCount % everyPage != 0) {
			totalPage = totalCount / everyPage + 1;
		}else {
			totalPage = totalCount / everyPage;
		}
		
		article.getPage().setTotalPage(totalPage);
		article.getPage().setTotalCount(totalCount);
		logger.info("根据文章类型查询文章总数量："+totalCount);
		
		//新增文章简介字段，不需要截取文章内容
	/*	for (int i = 0; i < articleList.size(); i++) {
			String blogContext = articleList.get(i).getBlogContext().substring(0, 30);
			articleList.get(i).setBlogContext(blogContext+"...");
			logger.info("文章简介"+articleList.get(i).getBlogContext());
		}*/
	
		List<Article> sideArticleList = blogService.getSideList();
		
		//推荐文章列表
		request.getSession().setAttribute("sideArticleList", sideArticleList);
		
		List<Article> blogRankingList = blogService.getBlogRankingList();
		int listLength = blogRankingList.size()-1;
		logger.info("文章点击排行列表"+listLength);
		for (int i = 0; i < 20;i++) {
			if(listLength == 3) {
				logger.info("当listLength等于"+listLength+"时，结束");
				break;
			}else {
				blogRankingList.remove(listLength);
				listLength = listLength -1;
				continue;
			}
		}
		logger.info("文章点击排行列表"+blogRankingList.size());
		request.getSession().setAttribute("blogRankingList", blogRankingList);
		//后台查询文章列表
		request.getSession().setAttribute("blogArticleList", articleList);
		
		logger.info("查询文章数量"+articleList.size());
		logger.info("articleList"+articleList);
		if(articleList.size() == 0) {
			request.getSession().setAttribute("isEmpty", "trues");
		}else {
			request.getSession().setAttribute("isEmpty", "falses");
		}
		//分页参数
		request.getSession().setAttribute("blogArticles", article);
		logger.info("分页参数"+article);
		return "index";
	}
	/**
	 * 跳转文章内容页面
	 */
	@RequestMapping("info")
	public String toInfo(HttpServletRequest request){
		
		String blogId = request.getParameter(BlogConstant.BLOG_ID);
		Article article = blogService.getArticleInfo(Integer.parseInt(blogId));
		
		
		logger.info("文章id"+article+"");
		if(blogId.endsWith("1")) {
			Article articleNext = blogService.getArticleInfo(Integer.parseInt(blogId)+1);
			request.getSession().setAttribute("lastAritcle", "backIndex");
			request.getSession().setAttribute("nextAritcle", articleNext);
		}else {
			Article articleNext = blogService.getArticleInfo(Integer.parseInt(blogId)+1);
			logger.info("这个是什么？"+articleNext);
			Article articleLast = blogService.getArticleInfo(Integer.parseInt(blogId)-1);
			if(articleNext == null || articleNext.getBlogTitle().equals("")) {
				request.getSession().setAttribute("lastAritcle", articleLast);
				request.getSession().setAttribute("nextAritcle", "backIndex");
			}else {
				request.getSession().setAttribute("lastAritcle", articleLast);
				request.getSession().setAttribute("nextAritcle", articleNext);
			}
		}
		
		request.getSession().setAttribute("article", article);
		Page page = new Page();
		
		//获取跳转页数
		String currentPages = request.getParameter("currentPages");
		if(currentPages==null||currentPages.equals("")){
			page.setCurrentPage(1);
			beginIndex=0;
			System.out.println(beginIndex+"首页");
		}else {
			page.setCurrentPage(Integer.parseInt(currentPages));
			beginIndex =(Integer.parseInt(currentPages)-1)*8;
			System.out.println(beginIndex+"-------"+"第"+currentPages+"页");
		}
		page.setBeginIndex(beginIndex);
		page.setEveryPage(everyPage);
		
		//将page分页参数设置到对象中
		article.setPage(page);
		
		List<Article> articleList = blogService.getList(article);
		
		//相关文章列表
		request.getSession().setAttribute("blogTitleList", articleList);
		
		return "info";
	}
	/**
	 * 慢生活页面
	 */
	@RequestMapping("/slowLife.html")
	public String slowLife(HttpServletRequest request){ 
		String blogType = request.getParameter(BlogConstant.BLOG_TYPE);
		
		//不是点击首页访问的时候，将首页大图移除
		if(blogType != null && !blogType.equals("")) {
			request.setAttribute(BlogConstant.REMOVE_IMG, "1");
		}
		
		Article article = new Article();
		article.setBlogType(blogType);
		Page page = new Page();
		
		//获取跳转页数
		String currentPages = request.getParameter("currentPages");
		if(currentPages==null||currentPages.equals("")){
			page.setCurrentPage(1);
			beginIndex=0;
			System.out.println(beginIndex+"首页");
		}else {
			page.setCurrentPage(Integer.parseInt(currentPages));
			beginIndex =(Integer.parseInt(currentPages)-1)*8;
			System.out.println(beginIndex+"-------"+"第"+currentPages+"页");
		}
		page.setBeginIndex(beginIndex);
		page.setEveryPage(everyPage);
		
		//将page分页参数设置到对象中
		article.setPage(page);
		logger.info("查询条件"+article);
		
		List<Article> articleList = blogService.getList(article);
		//根据文章类型查询文章总数量
		int totalCount = blogService.getArticleNumberByType(article);
		if(totalCount == 0) {
			request.getSession().setAttribute("isEmptySlow", "trues");
		}else {
			request.getSession().setAttribute("isEmptySlow", "falses");
		}
		
		//总页数
		int totalPage =0;
		
		if(totalCount % everyPage != 0) {
			totalPage = totalCount / everyPage + 1;
		}else {
			totalPage = totalCount / everyPage;
		}
		
		article.getPage().setTotalPage(totalPage);
		article.getPage().setTotalCount(totalCount);
		logger.info("根据文章类型查询文章总数量："+totalCount);
		
		request.getSession().setAttribute("blogArticleList", articleList);
		//分页参数
		request.getSession().setAttribute("blogArticles", article);
		logger.info("分页参数"+article);
		return "slowLife";
	}
	@RequestMapping("/likeIt.do")
	@ResponseBody
	private Map<String, String> getJsApiTicket(HttpServletRequest request,Article article){
		//前台传的参数与javaBean中的属性一致，也可以用对象来接收前台传的参数
		System.out.println(article);
		//String blogLikeNumber =  request.getParameter("blogLikeNumber");
		String blogVisitIp  = request.getRemoteAddr();
		article.setBlogVisitIp(blogVisitIp);
		//String blogId = request.getParameter("blogId");
		logger.info("前台传过来的喜欢次数" +article);
		
		Map<String,String> map = blogService.updateBlogLikeNumber(article);
		logger.info(""+map);
		return map;
	}
	
	
	
	/**
	 * 输入域名，默认进入的页面
	 * @return
	 */
	@RequestMapping("/") 
	public ModelAndView index() {
        return new ModelAndView("first");
    }
	/**
	 * 个人简历页面
	 */
	@RequestMapping("/resume.html")
	public String toMyResume(){ 
		return "my";
	}
	/**
	 * 关于小飞页面
	 */
	@RequestMapping("/abouts.html")
	public String about(){ 
		return "abouts";
	}
	/**
	 * 时间轴
	 */
	@RequestMapping("/timeShaft.html")
	public String timeShaft(){ 
		return "timeShaft";
	}
	/**
	 * 留言板页面
	 */
	@RequestMapping("/leaveword.html")
	public String leaveWord(){ 
		return "leaveword";
	}
	
	
	/**
	 * 测试
	 */
	@RequestMapping("/demo.html")
	public String getTets() {
		List list = testService.getUserList();
		logger.info(list.toString());
		return "demo";
	}
	
	/**
	 * 测试
	 */
	@RequestMapping("/loveBing.html")
	public String loveBing() {
		return "biaobai";
	}
	
	
}
