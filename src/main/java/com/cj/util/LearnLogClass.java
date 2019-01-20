package com.cj.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * spring-booot打印日志
 * @author 23069
 *
 */
public class LearnLogClass {
	Logger logger = LoggerFactory.getLogger(getClass());
	private void man() {
		//日志级别
		//由低到高,trace<debug<info<warn<error
		//可以调整输出的日志级别：日志就只会在这个级别及以上的日志打印
		logger.trace("");
		logger.debug("");
		logger.info("");
		logger.warn("");
		logger.error("");
	}
}
