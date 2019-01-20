package com.cj.util;


import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class Tsess {
	
	private final Logger logger =  LoggerFactory.getLogger(this.getClass());
	public static void main(String[] args) {
		Tsess sd = new Tsess();
		sd.s();
	}
	
	public  void s() {
		List list = new ArrayList<>();
		try {
			System.out.println(list.get(1));
		} catch (Exception e) {
			e.printStackTrace();
			logger.info("爆粗了");
			logger.error("报错了");
		}
	}
}
