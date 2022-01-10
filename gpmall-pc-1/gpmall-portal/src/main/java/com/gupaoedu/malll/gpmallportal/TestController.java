package com.gupaoedu.malll.gpmallportal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;

@RestController
public class TestController {

    @Autowired(required = false)
    @Qualifier
    List<TestClass> testClasses = Collections.emptyList();

    @GetMapping("/test")
    public Object test() {
        return testClasses;
    }
}
