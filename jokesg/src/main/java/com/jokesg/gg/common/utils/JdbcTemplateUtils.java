package com.jokesg.gg.common.utils;

import org.springframework.jdbc.core.JdbcTemplate;

import com.alibaba.druid.pool.DruidDataSource;

/**
 * JDBC模版工具类
 * @author stealth.Lee
 * @date 2016年10月14日 下午4:17:01
 */
public class JdbcTemplateUtils {

	private static JdbcTemplate jdbcTemplate;

    public static JdbcTemplate jdbcTemplate() {
        if(jdbcTemplate == null) {
            jdbcTemplate = createJdbcTemplate();
        }
        return jdbcTemplate;
    }

    private static JdbcTemplate createJdbcTemplate() {
        DruidDataSource ds = new DruidDataSource();
        ds.setDriverClassName("com.mysql.jdbc.Driver");
        ds.setUrl("jdbc:mysql://10.8.10.216/ee");
        ds.setUsername("dbwrite");
        ds.setPassword("dbwrite");
        return new JdbcTemplate(ds);
    }
	
}
