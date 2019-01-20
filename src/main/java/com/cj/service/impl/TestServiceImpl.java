package com.cj.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cj.mapper.TestMapper;
import com.cj.service.TestService;
@Service
public class TestServiceImpl implements TestService{

	@Autowired
	private TestMapper testMapper;
	
	@Override
	public void insertUser(Map map) {
		testMapper.insertUser(map);
	}

	@Override
	public List getUserList() {
		return testMapper.getUserList();
	}

}
