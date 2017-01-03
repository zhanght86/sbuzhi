package com.jokesg.gg.common.timer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.jokesg.gg.mvc.sys.service.TimerService;

/**
 * 定时任务
 * @author Stealth.Lee
 * @date 2016年10月22日 下午7:58:30
 */
@Component
public class Timer {
	
	private static Logger logger = LoggerFactory.getLogger(Timer.class);
	
	@Autowired
	private TimerService timerService;

	@Scheduled(cron="5 * *  * * ? ")
	public void test(){
		System.out.println("开始测试");
	}
	
	/**
	 * Redis缓存过期后删除对应的数据库Code记录
	 */
	@Scheduled(cron="0 0 0  * * ? ")
	public void delOverdueRedisCode(){
		int result = timerService.delOverdueCode();
		logger.info("[Timer] result={}", result);
	}
	
	/**
	 * 解锁被锁定用户账号
	 */
	@Scheduled(cron="0 0 0  * * ? ")
	public void unlockAccount(){
		int result = timerService.unlockAccount();
		logger.info("[Timer] result={}", result);
	}
	
}
