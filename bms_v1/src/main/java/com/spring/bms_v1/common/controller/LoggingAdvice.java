package com.spring.bms_v1.common.controller;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAdvice {
	
	private static final Logger logger = LoggerFactory.getLogger(LoggingAdvice.class);

	/*
	@Before("execution(* com.bms.*.service.*.*(..))")
	public void beforeService(JoinPoint jp) {

		logger.info("---------------- Service Before -------------------");
		logger.info("name : " + jp.getSignature().getName());
		logger.info("args : " + Arrays.toString(jp.getArgs()));

	}
	
	@Before("execution(* com.bms.*.dao.*.*(..))")
	public void beforeDao(JoinPoint jp) {

		logger.info("---------------- Dao Before -------------------");
		logger.info("name : " + jp.getSignature().getName());
		logger.info("args : " + Arrays.toString(jp.getArgs()));

	}
	*/
	
	@After("execution(* com.bms.*.service.*.*(..))")
	public void afterService(JoinPoint jp) {

		logger.info("---------------- Service After -------------------");
		logger.info("name : " + jp.getSignature().getName());
		logger.info("args : " + Arrays.toString(jp.getArgs()));

	}
	
	@After("execution(* com.bms.*.dao.*.*(..))")
	public void afterDao(JoinPoint jp) {

		logger.info("---------------- Dao After -------------------");
		logger.info("name : " + jp.getSignature().getName());
		logger.info("args : " + Arrays.toString(jp.getArgs()));

	}

/*
	@Around("execution(* com.bms.*.service.*.*(..)) or " + "execution(* com.bms.*.dao.*.*(..))")
	public Object timeLog(ProceedingJoinPoint pjp) throws Throwable {
		
		long startTime = System.currentTimeMillis();
		logger.info("============ Around ===============");
		logger.info(Arrays.toString(pjp.getArgs()));

		Object result = pjp.proceed(); 

		long endTime = System.currentTimeMillis();
		logger.info("(메서드 실행시간 속도) " + pjp.getSignature().getName() + " : " + (endTime - startTime)); 
		logger.info("==============================");

		return result;
		
	}
*/	

}
