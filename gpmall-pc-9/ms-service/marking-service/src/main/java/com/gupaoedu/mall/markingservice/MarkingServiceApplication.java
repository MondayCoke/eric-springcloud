package com.gupaoedu.mall.markingservice;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@SpringBootApplication
public class MarkingServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(MarkingServiceApplication.class, args);
    }

}
