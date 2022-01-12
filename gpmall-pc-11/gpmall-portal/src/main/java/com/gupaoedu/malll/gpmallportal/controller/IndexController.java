package com.gupaoedu.malll.gpmallportal.controller;

import com.gupaoedu.mall.core.CommonResponse;
import com.gupaoedu.mall.dto.IndexModuleContentResponse;
import com.gupaoedu.mall.dto.PanelDto;
import com.gupaoedu.mall.enums.MkResCodeEnum;
import com.gupaoedu.mall.feignclient.IContentServiceFeignClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@RestController
@RequestMapping("/home")
public class IndexController {

    @Autowired
    IContentServiceFeignClient contentServiceFeignClient;

    @GetMapping
    public CommonResponse<List<PanelDto>> home(){
        IndexModuleContentResponse response=contentServiceFeignClient.content();
        if(MkResCodeEnum.SYS_SUCCESS.getCode().equals(response.getCode())){
            return CommonResponse.success(response.getPanelDtos());
        }
        return CommonResponse.error(response);
    }

}
