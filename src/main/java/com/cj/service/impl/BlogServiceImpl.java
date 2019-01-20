package com.cj.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cj.mapper.BlogMapper;
import com.cj.pojo.Article;
import com.cj.service.BlogService;
import com.cj.util.DateUtil;
@Service
public class BlogServiceImpl implements BlogService {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private BlogMapper blogMapper;

	@Override
	public List<Article> getList(Article article) {
		return blogMapper.getList(article);
	}

	@Override
	public Article getArticleInfo(int blogId) {
		return blogMapper.getArticleInfo(blogId);
	}

	@Override
	public int getArticleNumberByType(Article article) {
		return blogMapper.getArticleNumberByType(article);
	}

	@Override
	public List<Article> getSideList() {
		return blogMapper.getSideList();
	}

	@Override
	public void insertVisitIp(Article article) {
		blogMapper.insertVisitIp(article);
	}

	@Override
	public List<Article> getVisitIp(Article article) {
		return blogMapper.getVisitIp(article);
	}

	@Override
	public void updateVisitIp(Article article) {
		blogMapper.updateVisitIp(article);
	}

	@Override
	public void updateBlogVisitNumber(Article article) {
		blogMapper.updateBlogVisitNumber(article);
	}

	@Override
	public Map<String, String> updateBlogLikeNumber(Article article) {
		Map<String, String> map = new HashMap<>();
		String currentTime = DateUtil.getCurrentTime();
		int blogLikeNumber = article.getBlogLikeNumber();
		article.setBlogVisitTime(currentTime);
		article.setBlogVisitType(1);
		List<Article> blogVisitIpList = blogMapper.getVisitIp(article);
		  if(blogVisitIpList.size() > 0) {
	        	String oldVisitDateTime = blogVisitIpList.get(0).getBlogVisitTime();
	        	
	        	if(DateUtil.dateHandle(currentTime, oldVisitDateTime)) {
	        		logger.info("本次访问在上次访问的两小时内，喜欢次数不增加");
	        		map.put("MSG", "您刚刚喜欢过本文章，过来一会再来吧~");
		        	return map;
	        	}else {
	        		article.setBlogLikeNumber(blogLikeNumber+1);
	        		logger.info("本次访问不在上次访问的两小时内，喜欢次数加1");
	        		logger.info("修改参数"+article);
	        		blogMapper.updateBlogLikeNumber(article);
	        		blogMapper.updateVisitIp(article);
	        		map.put("MSG", "感谢您的支持，博主会继续努力，写出更好的文章！");
		        	return map;
	        	}
	        }else {
	        	logger.info("本次访问属于第一次喜欢，喜欢次数加1");
	        	article.setBlogLikeNumber(blogLikeNumber+1);
	        	blogMapper.updateBlogLikeNumber(article);
        		blogMapper.insertLikeIp(article);
	        	map.put("MSG", "感谢您的支持，博主会继续努力，写出更好的文章！");
	        	return map;
	        }
	}

	@Override
	public List<Article> getBlogRankingList() {
		return blogMapper.getBlogRankingList();
	}

	public Article getArticleViewNumber(int blogId) {
		return blogMapper.getArticleInfo(blogId);
	}


}
