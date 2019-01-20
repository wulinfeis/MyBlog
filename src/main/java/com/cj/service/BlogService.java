package com.cj.service;

import java.util.List;
import java.util.Map;

import com.cj.pojo.Article;

public interface BlogService {
	List<Article> getList(Article article);
	
	Article getArticleInfo(int blogId);
	
	Article getArticleViewNumber(int blogId);
	
	int getArticleNumberByType(Article article);
	
	List<Article> getSideList();
	List<Article> getBlogRankingList();
	
	void insertVisitIp(Article article);
	List<Article> getVisitIp(Article article);
	void updateVisitIp(Article article);
	void updateBlogVisitNumber(Article article);
	Map<String, String> updateBlogLikeNumber(Article article);
}
