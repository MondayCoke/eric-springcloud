package com.gupaoedu.mall.gateway.gpmallgateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients(basePackages = "com.gupaoedu.mall.feignclient")
@SpringBootApplication
public class GpmallGatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(GpmallGatewayApplication.class, args);
    }

}
