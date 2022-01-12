package com.gupaoedu.mall.markingservice.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Configuration
@EnableTransactionManagement
@MapperScan(basePackages = "com.gupaoedu.mall.markingservice.dal.mapper")
public class MybatisPlusConfiguration {

}
