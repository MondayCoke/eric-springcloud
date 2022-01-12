package com.gupaoedu.malll.fb;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.BeanDefinitionBuilder;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.context.annotation.ImportBeanDefinitionRegistrar;
import org.springframework.core.type.AnnotationMetadata;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
public class GpFactoryBeanImportBeanDefinitionRegistrar implements ImportBeanDefinitionRegistrar {

    @Override
    public void registerBeanDefinitions(AnnotationMetadata importingClassMetadata, BeanDefinitionRegistry registry) {

        DefineFactoryBean defineFactoryBean=new DefineFactoryBean(); //工厂Bean实例化

        BeanDefinitionBuilder definitionBuilder=BeanDefinitionBuilder
                .genericBeanDefinition(IFeignHelloService.class,()->
//                        defineFactoryBean.set...
                        defineFactoryBean.getObject());
        BeanDefinition definition=definitionBuilder.getBeanDefinition();
        //注册一个bean
        registry.registerBeanDefinition("feignHelloService",definition);
    }
}
