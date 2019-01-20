package com.cj.test;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.util.StringUtils;

import com.cj.pojo.Article;

public class JsonToXmlTest {
	
	public static void main(String[] args) {
		Date date = new Date();
		
		System.out.println(date);
		
		
		
		Article article1 = new Article();
		
		if(StringUtils.isEmpty(article1)) {
			System.out.println("true");
		}else {
			System.out.println("false");
		}
		
		
		
		/*Article article2 = new Article();
		Article article3 = new Article();
		Article article4 = new Article();
		Article article5 = new Article();
		Article article6 = new Article();
		Article article7 = new Article();
		Article article8 = new Article();
		List<Article> list = new ArrayList<Article>();
		article1.setBlogOtherType("1");
		list.add(article1);
		article2.setBlogOtherType("3");
		list.add(article2);
		article3.setBlogOtherType("1");
		list.add(article3);
		article4.setBlogOtherType("2");
		list.add(article4);
		article5.setBlogOtherType("4");
		list.add(article5);
		article6.setBlogOtherType("3");
		list.add(article6);
		article7.setBlogOtherType("4");
		list.add(article7);
		article8.setBlogOtherType("2");
		list.add(article8);
		System.out.println(list);
		

		
		
		
		List<Article> listArticle = new ArrayList<Article>();
		
	
		
		// 按照年龄升序：
		Collections.sort(list, new Comparator<Article>() {
			@Override
			public int compare(Article u1, Article u2) {
				if (Integer.parseInt(u1.getBlogOtherType()) > Integer.parseInt(u2.getBlogOtherType())) {
					return 1;
				}
				if (Integer.parseInt(u1.getBlogOtherType()) == Integer.parseInt(u2.getBlogOtherType())) {
					return 0;
				}
				return -1;
			}
		});
		
		
		System.out.println("升序，排序后：");
		for (Article u : list) {
			System.out.println(u.toString());
		}

		
		
		
		for (int i = 0; i < list.size(); i++) {
			String type = list.get(i).getBlogOtherType();
			for (int j = 0; j < list.size(); j++) {
				if(listArticle.size() == 0) {
					String s =  list.get(j).getBlogOtherType();
					//String as =  listArticle.get(listArticle.size()).getBlogOtherType();
					if(s.equals("1")) {
						listArticle.add(list.get(j));
						continue;
					}
				}else{
					String s =  listArticle.get(listArticle.size()).getBlogOtherType();
					String sa =  list.get(j).getBlogOtherType();
					if(s.equals("1")) {
						if(sa.equals("2")) {
							listArticle.add(list.get(j));
							continue;
						}
					}
					if(s.equals("2")) {
						if(sa.equals("3")) {
							listArticle.add(list.get(j));
							continue;
						}
					}
					if(s.equals("3")) {
						if(sa.equals("4")) {
							listArticle.add(list.get(j));
							continue;
						}
					}
					if(s.equals("4")) {
						if(sa.equals("1")) {
							listArticle.add(list.get(j));
							continue;
						}
					}
				}
				
			}
			System.out.println("排完序之后lsit"+listArticle);
			if(type.equals("1")) {
				listArticle.add(list.get(i));
			}
			if(type.equals("2")) {
				listArticle.add(list.get(i));
			}
			if(type.equals("3")) {
				listArticle.add(list.get(i));
			}
			if(type.equals("4")) {
				listArticle.add(list.get(i));
			}
		}*/
		
	}
	
	public void terss() {
		
		Article article = new Article();
		List<Article> list = new ArrayList<Article>();
		article.setBlogOtherType("1");
		list.add(article);
		article.setBlogOtherType("3");
		list.add(article);
		article.setBlogOtherType("1");
		list.add(article);
		article.setBlogOtherType("2");
		list.add(article);
		article.setBlogOtherType("4");
		list.add(article);
		article.setBlogOtherType("3");
		list.add(article);
		article.setBlogOtherType("4");
		list.add(article);
		article.setBlogOtherType("2");
		list.add(article);
		System.out.println(list);
		
		
	}

}
