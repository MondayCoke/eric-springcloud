package com.gupaoedu.malll.gpmallportal.controller;

import com.gupaoedu.mall.core.CommonResponse;
import com.gupaoedu.mall.dto.LoginRequest;
import com.gupaoedu.mall.dto.LoginResponse;
import com.gupaoedu.mall.enums.UMSResCodeEnum;
import com.gupaoedu.mall.feignclient.IAuthServiceFeignClient;
import com.netflix.discovery.converters.Auto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@RestController
@RequestMapping("/user/auth")
public class AuthController {

    @Autowired
    IAuthServiceFeignClient authServiceFeignClient;

    @PostMapping
    public CommonResponse<LoginResponse> login(@RequestBody Map<String,String> map){
        LoginRequest request=new LoginRequest();
        request.setUserName(map.get("userName"));
        request.setPassword(map.get("userPwd"));
        LoginResponse response=authServiceFeignClient.login(request);
        if(UMSResCodeEnum.SYS_SUCCESS.getCode().equals(response.getCode())){
            return CommonResponse.success(response);
        }
        return CommonResponse.error(response);

    }

}
