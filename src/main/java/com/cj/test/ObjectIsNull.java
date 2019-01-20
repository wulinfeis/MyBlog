package com.cj.test;

import org.springframework.util.StringUtils;

import com.cj.pojo.Article;

public class ObjectIsNull {
	public static void main(String[] args) {
		
		Article a = new Article();
		//a.setBlogArticleType(1);
		System.out.println(a);
		if("".equals(a)) {
			System.out.println("true");
		}else {
			System.out.println("false");
		}
		
	}
}
