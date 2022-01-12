package com.gupaoedu.malll.reg;

import org.springframework.context.annotation.Import;

import java.lang.annotation.*;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
@Documented
//ImportSelector  Spring Boot自动装配有这个机制
@Import(GpImortBeanDefinitionRegistrar.class)
public @interface EnableGpRegistrar {
}
