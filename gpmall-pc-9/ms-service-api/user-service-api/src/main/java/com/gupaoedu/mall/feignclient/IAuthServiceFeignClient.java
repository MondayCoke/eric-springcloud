package com.gupaoedu.mall.feignclient;

import com.gupaoedu.mall.api.IAuthService;
import org.springframework.cloud.openfeign.FeignClient;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@FeignClient(name="user-service")
public interface IAuthServiceFeignClient extends IAuthService {
}
