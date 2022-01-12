package com.gupaoedu.malll.reg;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.Configuration;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Configuration
@EnableGpRegistrar
public class TestMain {

    public static void main(String[] args) {
        ApplicationContext context=new AnnotationConfigApplicationContext(TestMain.class);
        System.out.println(context.getBean(HelloService.class));
    }
}
