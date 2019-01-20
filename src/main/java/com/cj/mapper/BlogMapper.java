package com.cj.mapper;

import java.util.List;

import com.cj.pojo.Article;

public interface BlogMapper {
	public List<Article> getList(Article article);
	public Article getArticleInfo(int blogId);
	public int getArticleNumberByType(Article article);
	public List<Article> getSideList();
	public List<Article> getBlogRankingList();
	
	public void insertVisitIp(Article article);
	public List<Article> getVisitIp(Article article);
	public void updateVisitIp(Article article);
	public void updateBlogVisitNumber(Article article);
	public void updateBlogLikeNumber(Article article);
	public void insertLikeIp(Article article);
	
}
