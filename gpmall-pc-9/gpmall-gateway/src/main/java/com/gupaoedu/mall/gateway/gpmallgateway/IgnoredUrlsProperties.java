package com.gupaoedu.mall.gateway.gpmallgateway;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import java.util.ArrayList;
import java.util.List;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Data
@Configuration
@ConfigurationProperties(prefix = "ignored")
public class IgnoredUrlsProperties {

    private List<String> urls=new ArrayList<>();
}
