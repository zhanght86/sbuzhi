package com.jokesg.gg.mvc.ims.entity;

import com.jokesg.gg.web.entity.DataEntity;

/**
 * 用户人气实体
 * @author stealth.Lee
 * @date 2016年11月30日 上午10:48:42
 */
@Deprecated
public class Popularity extends DataEntity<Popularity> {

	/**
	 * 总人气
	 */
	private String Popularity;
	
	/**
	 * 日人气
	 */
	private String DayPopularity;
	
	/**
	 * 周人气
	 */
	private String WeekPopularity;
	
	/**
	 * 月人气
	 */
	private String MonthPopularity;

	public String getPopularity() {
		return Popularity;
	}

	public void setPopularity(String popularity) {
		Popularity = popularity;
	}

	public String getDayPopularity() {
		return DayPopularity;
	}

	public void setDayPopularity(String dayPopularity) {
		DayPopularity = dayPopularity;
	}

	public String getWeekPopularity() {
		return WeekPopularity;
	}

	public void setWeekPopularity(String weekPopularity) {
		WeekPopularity = weekPopularity;
	}

	public String getMonthPopularity() {
		return MonthPopularity;
	}

	public void setMonthPopularity(String monthPopularity) {
		MonthPopularity = monthPopularity;
	}
	
}
