package com.gupaoedu.malll.gpmallportal.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@EnableDiscoveryClient
@RefreshScope
public class ConfigController {

//    @Autowired
//    NacosConfigProperties nacosConfigProperties;

    @Value("${config.format: default-format}")
    private String format;

    @Value("${current.env: default-env}")
    private String env;

    @GetMapping("/config")
    public String test(){
        String msg=String.format("配置类型：%s，profile:%s", format,env);
        return msg;
    }
}
