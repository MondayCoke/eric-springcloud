package com.gupaoedu.malll.fb;

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
@FactoryBeanEnableGpRegistrar
public class FactoryBeanMain {
    public static void main(String[] args) {
        ApplicationContext context=new AnnotationConfigApplicationContext(FactoryBeanMain.class);
        IFeignHelloService ih=context.getBean(IFeignHelloService.class);
        System.out.println(ih.say());
    }
}
