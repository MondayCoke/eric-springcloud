package com.gupaoedu.malll.gpmallportal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ConfigController {

    @Autowired
    Environment environment;

    @Value("${customer.property.message}")
    private String name;

    @GetMapping("/env")
    public String test(){
        return name;
    }
}
