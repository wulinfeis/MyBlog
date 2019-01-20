package com.cj.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

/**
 * 
 * Title:这个类相当于以前的dao层，有没有发现，之前的dao层已经没有了，其实是被这个类给代替了
 * @author: 代码君小飞
 * @date: 2018年6月25日 上午9:46:33
 * Description:
 */
@Component
public interface TestMapper {
	
	public void insertUser(Map map);
	
	public List getUserList();
}
