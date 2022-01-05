package com.gupaoedu.example.nacosdemo;

import com.alibaba.nacos.api.config.annotation.NacosValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class NacosController {

    @NacosValue(value = "${txt:default-msg}",autoRefreshed = true)
    private String txt;

    @GetMapping("/")
    public String get(){
        return txt;
    }
}
