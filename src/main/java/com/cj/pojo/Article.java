package com.cj.pojo;

import java.io.Serializable;
import java.util.Date;

public class Article implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -7704441526791219554L;
	//id
	private int blogId;
	//标题
	private String blogTitle;
	//创建时间
	private String blogCreateTime;
	//内容
	private String blogContext;
	//博客个人分类
	private String blogType;
	//博客本站分类
	private int blogStatus;
	//博客类型
	private int blogArticleType;
	//博客浏览次数
	private int blogArticleNum; 
	
	//图片路径
	private String blogImg1;
	private String blogImg2;
	private String blogImg3;
	
	//博客的图片类型
	private String blogOtherType;
	
	//博客浏览次数
	private int blogViewNumber;
	//博客被喜欢次数
	private int blogLikeNumber;
	//博客被评论次数
	private int blogCommentNumber;
	//博客作者
	private String blogAuthor;
	
	//博客来源
	private String blogFrom;
	
	//博客分页对象
	private Page page;
	//博客文章简介
	private String blogAritcleInstroduction;
	

	//访问的ip
	private String blogVisitIp;
	//访问的时间
	private String blogVisitTime;
	
	//访问的类型
	private int blogVisitType;

	public int getBlogId() {
		return blogId;
	}

	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public String getBlogCreateTime() {
		return blogCreateTime;
	}

	public void setBlogCreateTime(String blogCreateTime) {
		this.blogCreateTime = blogCreateTime;
	}

	public String getBlogContext() {
		return blogContext;
	}

	public void setBlogContext(String blogContext) {
		this.blogContext = blogContext;
	}

	public String getBlogType() {
		return blogType;
	}

	public void setBlogType(String blogType) {
		this.blogType = blogType;
	}

	public int getBlogStatus() {
		return blogStatus;
	}

	public void setBlogStatus(int blogStatus) {
		this.blogStatus = blogStatus;
	}

	public int getBlogArticleType() {
		return blogArticleType;
	}

	public void setBlogArticleType(int blogArticleType) {
		this.blogArticleType = blogArticleType;
	}

	public int getBlogArticleNum() {
		return blogArticleNum;
	}

	public void setBlogArticleNum(int blogArticleNum) {
		this.blogArticleNum = blogArticleNum;
	}

	public String getBlogImg1() {
		return blogImg1;
	}

	public void setBlogImg1(String blogImg1) {
		this.blogImg1 = blogImg1;
	}

	public String getBlogImg2() {
		return blogImg2;
	}

	public void setBlogImg2(String blogImg2) {
		this.blogImg2 = blogImg2;
	}

	public String getBlogImg3() {
		return blogImg3;
	}

	public void setBlogImg3(String blogImg3) {
		this.blogImg3 = blogImg3;
	}

	public String getBlogOtherType() {
		return blogOtherType;
	}

	public void setBlogOtherType(String blogOtherType) {
		this.blogOtherType = blogOtherType;
	}


	public int getBlogViewNumber() {
		return blogViewNumber;
	}

	public void setBlogViewNumber(int blogViewNumber) {
		this.blogViewNumber = blogViewNumber;
	}

	public int getBlogLikeNumber() {
		return blogLikeNumber;
	}

	public void setBlogLikeNumber(int blogLikeNumber) {
		this.blogLikeNumber = blogLikeNumber;
	}

	public int getBlogCommentNumber() {
		return blogCommentNumber;
	}

	public void setBlogCommentNumber(int blogCommentNumber) {
		this.blogCommentNumber = blogCommentNumber;
	}

	public String getBlogAuthor() {
		return blogAuthor;
	}

	public void setBlogAuthor(String blogAuthor) {
		this.blogAuthor = blogAuthor;
	}

	public String getBlogFrom() {
		return blogFrom;
	}

	public void setBlogFrom(String blogFrom) {
		this.blogFrom = blogFrom;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public String getBlogAritcleInstroduction() {
		return blogAritcleInstroduction;
	}

	public void setBlogAritcleInstroduction(String blogAritcleInstroduction) {
		this.blogAritcleInstroduction = blogAritcleInstroduction;
	}



	public String getBlogVisitIp() {
		return blogVisitIp;
	}

	public void setBlogVisitIp(String blogVisitIp) {
		this.blogVisitIp = blogVisitIp;
	}

	public String getBlogVisitTime() {
		return blogVisitTime;
	}

	public void setBlogVisitTime(String blogVisitTime) {
		this.blogVisitTime = blogVisitTime;
	}

	public int getBlogVisitType() {
		return blogVisitType;
	}

	public void setBlogVisitType(int blogVisitType) {
		this.blogVisitType = blogVisitType;
	}

	@Override
	public String toString() {
		return "Article [blogId=" + blogId + ", blogTitle=" + blogTitle + ", blogCreateTime=" + blogCreateTime
				+ ", blogContext=" + blogContext + ", blogType=" + blogType + ", blogStatus=" + blogStatus
				+ ", blogArticleType=" + blogArticleType + ", blogArticleNum=" + blogArticleNum + ", blogImg1="
				+ blogImg1 + ", blogImg2=" + blogImg2 + ", blogImg3=" + blogImg3 + ", blogOtherType=" + blogOtherType
				+ ", blogViewNumber=" + blogViewNumber + ", blogLikeNumber=" + blogLikeNumber + ", blogCommentNumber="
				+ blogCommentNumber + ", blogAuthor=" + blogAuthor + ", blogFrom=" + blogFrom + ", page=" + page
				+ ", blogAritcleInstroduction=" + blogAritcleInstroduction + ", blogVisitIp=" + blogVisitIp
				+ ", blogVisitTime=" + blogVisitTime + ", blogVisitType=" + blogVisitType + "]";
	}
	
}
