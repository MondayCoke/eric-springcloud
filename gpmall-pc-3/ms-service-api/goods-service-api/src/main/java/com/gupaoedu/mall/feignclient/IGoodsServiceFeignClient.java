package com.gupaoedu.mall.feignclient;

import com.gupaoedu.mall.api.IGoodsService;
import org.springframework.cloud.openfeign.FeignClient;

//http://ip:port/uri

@FeignClient(name = "goods-service",configuration = FeignClientLogConfiguration.class)
public interface IGoodsServiceFeignClient extends IGoodsService {

}
