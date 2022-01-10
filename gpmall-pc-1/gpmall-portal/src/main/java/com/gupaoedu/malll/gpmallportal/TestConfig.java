package com.gupaoedu.malll.gpmallportal;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class TestConfig {

//    @Qualifier
    @Bean("testClass1")
    public TestClass testClass1() {
        return new TestClass("testClass1");
    }

    @Qualifier
    @Bean("testClass2")
    TestClass testClass2() {
        return new TestClass("testClass2");
    }
}
