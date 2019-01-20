package com.cj.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import com.cj.util.DateUtil;

public class DateTest {
	public static void main(String[] args) {
		
		String nowTime = DateUtil.getCurrentTime();
		String beginTime = "2019-01-01 23:50:32";
		System.out.println(dateHandle(nowTime,beginTime));
		
	}
	public static boolean dateHandle(String nowTime,String beginTime) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//初始化
		Date nowTimes = null;
		Date beginTimes = null;
		Date endTimes = null;
		String endTime = DateUtil.addDateMinut(nowTime,2);
		
		try {
			nowTimes = df.parse(nowTime);
			System.out.println(nowTime);
			//定义开始时间
			beginTimes = df.parse(beginTime);
			//定义结束时间
			endTimes = df.parse(endTime);
			
			System.out.println(beginTime+  "|||"+endTime+"|||" +nowTime);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//调用判断方法
		boolean flag =  belongCalendar(nowTimes, beginTimes, endTimes);
		if(flag) {
			//处于规定时间的段内，执行对应的逻辑代码
			System.out.println("在规定时间内"+flag);
			return true;
		}else {
			//不处于规定的时间段内，执行对应的逻辑代码
			System.out.println("不在规定时间内"+flag);
			return false;
		}
	}
	
	
	public static boolean belongCalendar(Date nowTime, Date beginTime, Date endTime) {
		Calendar date = Calendar.getInstance();
		date.setTime(nowTime);
		//设置开始时间
		Calendar begin = Calendar.getInstance();
		begin.setTime(beginTime);
		//设置结束时间
		Calendar end = Calendar.getInstance();
		end.setTime(endTime);
		System.out.println("开始时间"+begin);
		System.out.println("结束时间"+end);
		System.out.println("现在时间"+nowTime);
		
		//处于开始时间之后，和结束时间之前的判断
		if(date.after(begin) && date.before(end)) {
			return true;
		}else {
			return false;
		}
	}
}
