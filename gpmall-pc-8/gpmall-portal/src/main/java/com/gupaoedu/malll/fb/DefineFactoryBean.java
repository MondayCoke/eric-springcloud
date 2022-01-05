package com.gupaoedu.malll.fb;

import org.springframework.beans.factory.FactoryBean;

import java.lang.reflect.Proxy;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
public class DefineFactoryBean implements FactoryBean<IFeignHelloService> {

    //参数（FeignClient以及通信有关）

    //注册IFeignHelloService这个接口到IOC容器时，会被调用的方法
    @Override
    public IFeignHelloService getObject() {
        //生成一个动态代理对象
        IFeignHelloService helloService=(IFeignHelloService)
                Proxy.newProxyInstance(IFeignHelloService.class.getClassLoader()
                        ,new Class<?>[]{IFeignHelloService.class},(proxy,method,args)->{
                            System.out.println("Begin FactoryBean execute");
                            return "Hello FactoryBean";
                        });

        return helloService;
    }

    @Override
    public Class<?> getObjectType() {
        return IFeignHelloService.class;
    }
}
